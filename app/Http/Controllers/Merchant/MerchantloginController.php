<?php

namespace App\Http\Controllers\Merchant;
use DB;
use Session;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Log;

use App\Models\Merchants;
use App\Models\Plans;
use App\Models\States;
use App\Models\Citys;
use App\Services\MerchantUserService;

class MerchantloginController extends Controller
{
    //
    public function merchant_signin(){
        if (Session::has('merchantid')) {
            return redirect::to('merchant/dashboard');
        } else {
            if(isset($_GET['redirect'])){
                return view('merchant.login')->with('redirect', $_GET['redirect']);
            }
            return view('merchant.login')->with('redirect', 'merchant/dashboard');
        }
    }
    public function merchant_signinpost(){
        $username = Input::get('username');
        $password = Input::get('password');
        $redirect = Input::get('redirect');

        $logincheck = MerchantUserService::check_login($username, $password);
        if($logincheck == 1){
            if(isset($redirect)){
                return Redirect::to($redirect);
            }
            return Redirect::to('merchant/dashboard');
        } else {
            $status = MerchantUserService::merchant_status($username, $password);
            return Redirect::to('merchant/signin?status='.$status);
        }
    }
    public function merchant_signout(){
        Log::debug(Session::has('merchantid'));
        
        Session::forget('site');
        Session::forget('merchantid');
        Session::forget('merchantname');
        Session::flush();
        return Redirect::to('merchant/signin');
    }
}
