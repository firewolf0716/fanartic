<?php

namespace App\Http\Controllers\Customer;

use App\Models\Customers;
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
        if (!empty($customer->customer_birthday)) {
            $births = explode('-', date("Y-n-j", strtotime($customer->customer_birthday)));
        }

        $tel = array('', '', '');
        if (!empty($customer->customer_phone)) {
            $tel = explode('-', $customer->customer_phone);
        }
        $view = view('customer.user.profile');

        return $this->layout_init($view, 1)->with('customer', $customer)->with('birth', $births)->with('phone', $tel);
    }

    public function profilepost(Request $request)
    {
        $this->customer = new Customers();

        $request->validate($this->customer->getValidateList());

        $customer = CustomerUser::find(Auth::id());
        $customer->customer_name_first = $request->input('customer_name_first');
        $customer->customer_name_second = $request->input('customer_name_second');
        $customer->customer_gender = $request->input('sex');
        $birth = $request->input('birthday_year') . '-' . $request->input('birthday_month') . '-' . $request->input('birthday_day');
        $customer->customer_birthday = $birth;
        $customer->customer_phone = Input::get('tel1') . '-' . Input::get('tel2') . '-' . Input::get('tel3');
        $customer->save();

/*        $password = Input::get('password');
        if (isset($password)) {
            $entry['customer_password'] = $password;
        }*/

        return Redirect::to('user/profile');
    }
}
