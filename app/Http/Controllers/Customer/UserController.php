<?php

namespace App\Http\Controllers\Customer;

use Illuminate\Support\Facades\Auth;
use Session;
use Hash;
use Mail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\CustomerUser;
use App\Services\CustomerUserService;
use App\Models\CustomerAddress;

class UserController extends Controller
{
    public function signout()
    {
        Session::forget('site');
        Session::forget('customerid');
        Session::forget('customermail');
        return Redirect::to(url(''));
    }

    public function signuppost()
    {
        if (CustomerUserService::is_customer_email_exists(Input::get('email'))) {
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

    public function signverify($token)
    {
        // 使用可能なトークンか
        if (!CustomerUser::where('token', $token)->exists()) {
            return redirect('login');
        } else {
            $user = CustomerUser::where('token', $token)->first();
            // 本登録済みユーザーか
            if ($user->verified == 1) {
                return Redirect::to('login');
            }
            // ユーザーステータス更新
            $user->verified = 1;
            if ($user->save()) {
                return Redirect::to('user/profile');
            } else {
                return Redirect::to('login');
            }
        }
    }

    public function signinpost()
    {
        $username = Input::get('username');
        $password = Input::get('password');
        $redirect = Input::get('redirect');

        $logincheck = CustomerUserService::check_login($username, $password);
        if ($logincheck == 1) {
            if (isset($redirect)) {
                return Redirect::to($redirect);
            }
            return Redirect::to('/');
        } else {
            $status = CustomerUserService::customer_status($username, $password);
            return Redirect::to('/');
        }
    }

    public function profile()
    {
        $customer = CustomerUser::find(Auth::id());
        $births = array('', '', '');
        if (!empty($customer->customer_birthda)) {
            $births = explode('-', $customer->customer_birthday);
        }

        $tel = array('', '', '');
        if (!empty($customer->customer_phone)) {
            $tel = explode('-', $customer->customer_phone);
        }
        $view = view('customer.user.profile');

        return $this->layout_init($view, 1)->with('customer', $customer)->with('birth', $births)->with('phone', $tel);
    }

    public function profilepost()
    {
        $customer = CustomerUser::find(Auth::id());

        $p_address_province = $customer->customer_province;
        $p_address_county = $customer->customer_county;
        $p_address_ex = $customer->customer_address_jp;
        
        $customer->customer_name_first = Input::get('first_name');
        $customer->customer_name_second = Input::get('second_name');
        $customer->customer_name_kana_first = Input::get('first_name_kana');
        $customer->customer_name_kana_second = Input::get('second_name_kana');
        $customer->customer_gender = Input::get('sex');
        $customer->customer_birthday = Input::get('birthday_year') . '/' . Input::get('birthday_month') . '/' . Input::get('birthday_day');
        $customer->customer_phone = Input::get('tel1') . '-' . Input::get('tel2') . '-' . Input::get('tel3');
        $customer->customer_status = $customer->customer_status;
        $customer->save();

        $password = Input::get('password');
        if (isset($password)) {
            $entry['customer_password'] = $password;
        }
        return Redirect::to('user/profile');
    }
}
