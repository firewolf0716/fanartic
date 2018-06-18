<?php

namespace App\Http\Controllers;
use DB;
use Session;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Log;

use App\Merchants;

class MerchantloginController extends Controller
{
    //
    public function merchant_login(){
        if (Session::has('merchantid')) {
            return redirect::to('merchant/dashboard');
        } else {
            if(isset($_GET['redirect'])){
                return view('merchant.login')->with('redirect', $_GET['redirect']);
            }
            return view('merchant.login')->with('redirect', 'merchant/dashboard');
        }
    }
    public function merchant_signin(){
        $username = Input::get('username');
        $password = Input::get('password');
        $redirect = Input::get('redirect');

        $logincheck = Merchants::check_login($username, $password);
        if($logincheck == 1){
            if(isset($redirect)){
                return Redirect::to($redirect);
            }
            return Redirect::to('merchant/dashboard');
        } else {
            return Redirect::to('merchant/login');
        }
    }
    public function merchant_signout(){
        Log::debug(Session::has('merchantid'));
        
        Session::forget('site');
        Session::forget('merchantid');
        Session::forget('merchantname');
        Session::flush();
        return Redirect::to('merchant/login');
    }

    public function merchant_signup(){
        $username = Input::get('username_up');
        $password = Input::get('password_up');
        $email = Input::get('email_up');
        date_default_timezone_set('Asia/Tokyo');
        $create_date = date('Y/m/d H:i:s');
        $entry = array(
            'merchant_admin' => $username,
            'merchant_email' => $email,
            'merchant_password' => $password,
            'merchant_status' => '1',
            'merchant_create' => $create_date,
            'merchant_update' => $create_date
        );
        $id = Merchants::addMerchant($entry);
        if($id > 0){
            Session::put('site','merchant');
            Session::put('merchantid', $id);
            Session::put('merchantname', $username);
            return Redirect::to('merchant/dashboard');
        }
    }
}
