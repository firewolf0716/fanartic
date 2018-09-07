<?php

namespace App\Http\Controllers\Customer;

use Session;
use Hash;
use Mail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

class CustomerUserController extends Controller
{
    public function signup(){
        $topcategorys = Categorys::getTopCategorys();
        $mencategories = Categorys::getMainCategorys($topcategorys[0]->category_id);
        $womencategories = Categorys::getMainCategorys($topcategorys[1]->category_id);
        $brands = Brands::get();
        $tcategory = $topcategorys[0];
        $maincategorys = Categorys::getMainCategorys($topcategorys[0]->category_id);
        
        return view('customer.user.signup')
            ->with('mencategories', $mencategories)
            ->with('womencategories', $womencategories)
            ->with('brands', $brands)
            ->with('maincategorys', $maincategorys)
            ->with('tcategory', $tcategory);
    }

    public function user(){
        if (Session::has('customerid')) {
            return Redirect::to('user/profile');
        } else {
            return Redirect::to('user/signin');
        }
    }

    public function login(){
        $malls = Malls::get();
        return $this->layout_init(view('customer.user.login'), 1)
            ->with('malls', $malls)
            ->with('listtype', "malls");
    }

    public function signout(){
        Session::forget('site');
        Session::forget('customerid');
        Session::forget('customermail');
        return Redirect::to(url(''));
    }

    public function signuppost(){
        if(Customers::is_customer_email_exists(Input::get('email'))){
            return "Email already registered";
        }

        $customer = new CustomerUser();
        $customer->customer_name_first = Input::get('name');
        $customer->customer_email = Input::get('email');
        $customer->customer_password = Hash::make(Input::get('password'));
        $customer->token = uniquid();
        $customer->save();

        Mail::send('emails.reminder', ['user' => $entry], function ($m) use ($entry) {
            $m->from('noreply@aidiot.xyz', 'Laravel');

            $m->to($entry['customer_email'])->subject('Your Reminder!');
        });

        return "Registered successfully, Please check your mail to verify account";
    }

    public function signverify(){
        $email = $_GET['mail'];
        $token = $_GET['token'];
        $res = Customers::signverify($email, $token);
        if($res)
            return Redirect::to('user/profile');
    }

    public function signinpost(){
        $username = Input::get('username');
        $password = Input::get('password');
        $redirect = Input::get('redirect');

        $logincheck = Customers::check_login($username, $password);
        if($logincheck == 1){
            if(isset($redirect)){
                return Redirect::to($redirect);
            }
            return Redirect::to('/');
        } else {
            $status = Customers::customer_status($username, $password);
            return Redirect::to('/');
        }
    }
}
