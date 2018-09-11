<?php

namespace App\Http\Controllers\Customer;

use Session;
use Hash;
use Mail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\CustomerUser;
use App\Services\CustomerUserService;

class CustomerUserController extends Controller
{
    public function signout(){
        Session::forget('site');
        Session::forget('customerid');
        Session::forget('customermail');
        return Redirect::to(url(''));
    }

    public function signuppost(){
        if(CustomerUserService::is_customer_email_exists(Input::get('email'))){
            return "Email already registered";
        }

        $customer = new CustomerUser();
        $customer->customer_name_first = Input::get('name');
        $customer->customer_email = Input::get('email');
        $customer->customer_password = Hash::make(Input::get('password'));
        $customer->token = uniqid();
        $customer->save();

        Mail::send('emails.reminder', ['user' => $customer], function ($m) use ($customer) {
            $m->from('noreply@aidiot.xyz', 'Laravel');

            $m->to($customer->customer_email)->subject('Your Reminder!');
        });

        return "Registered successfully, Please check your mail to verify account";
    }

    public function signverify(){
        $email = $_GET['mail'];
        $token = $_GET['token'];
        $res = CustomerUserService::signverify($email, $token);
        if($res)
            return Redirect::to('user/profile');
    }

    public function signinpost(){
        $username = Input::get('username');
        $password = Input::get('password');
        $redirect = Input::get('redirect');

        $logincheck = CustomerUserService::check_login($username, $password);
        if($logincheck == 1){
            if(isset($redirect)){
                return Redirect::to($redirect);
            }
            return Redirect::to('/');
        } else {
            $status = CustomerUserService::customer_status($username, $password);
            return Redirect::to('/');
        }
    }

    public function profile(){
        $customerid = Session::get('customerid');
        $customer = CustomerUser::find($customerid);
        $birth = $customer->customer_birthday;
        $births = array('', '', '');
        if($birth != '' || isset($birth)){
            $births = explode('/', $birth);
        }
        
        $phone = $customer->customer_phone;
        $tel = array('', '', '');
        if($phone != '' || isset($phone)){
            $tel = explode('-', $phone);
        }
        $view = view('customer.user.profile');

        return $this->layout_init($view, 1)->with('customer', $customer)->with('birth', $births)->with('phone', $tel);
    }

    public function profilepost(){
        $customerid = Session::get('customerid');

        $customer = CustomerUser::find($customerid);
        $customer->customer_name_first = Input::get('first_name');
        $customer->customer_name_second = Input::get('second_name');
        $customer->customer_name_kana_first = Input::get('first_name_kana');
        $customer->customer_name_kana_second = Input::get('second_name_kana');
        $customer->customer_gender = Input::get('sex');
        $customer->customer_birthday = Input::get('birthday_year').'/'.Input::get('birthday_month').'/'.Input::get('birthday_day');
        $customer->customer_postalcode = Input::get('zipcode');
        $customer->customer_province = Input::get('province');
        $customer->customer_county = Input::get('county');
        $customer->customer_address_jp = Input::get('address');
        $customer->customer_phone = Input::get('tel1').'-'.Input::get('tel2').'-'.Input::get('tel3');
        $customer->customer_status = $customer->customer_status;
        $customer->save();

        $password = Input::get('password');
        if(isset($password)){
            $entry['customer_password'] = $password;
        }
        return Redirect::to('user/profile');
    }
}
