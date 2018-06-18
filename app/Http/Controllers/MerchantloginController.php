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
            return redirect::to('merchant_dashboard');
        } else {
            if(isset($_GET['redirect'])){
                return view('merchant.login')->with('redirect', $_GET['redirect']);
            }
            return view('merchant.login')->with('redirect', 'merchant_dashboard');
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
            return Redirect::to('merchant_dashboard');
        } else {
            return Redirect::to('merchant_login');
        }
    }
    public function merchant_signout(){
        Log::debug(Session::has('merchantid'));
        
        Session::forget('merchantid');
        Session::forget('merchantname');
        Session::flush();
        return Redirect::to('merchant_login');
    }
}
