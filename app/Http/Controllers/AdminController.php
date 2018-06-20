<?php

namespace App\Http\Controllers;

use Session;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Admins;
use App\Merchants;
use App\Plans;
use App\States;

class AdminController extends Controller
{
    //
    public function dashboard(){
        return view('admin.dashboard');
    }

    public function login(){
        if (Session::has('adminid')) {
            return redirect::to('admin/dashboard');
        } else {
            if(isset($_GET['redirect'])){
                return view('admin.login')->with('redirect', $_GET['redirect']);
            }
            return view('admin.login')->with('redirect', 'admin');
        }
    }

    public function signin(){
        $username = Input::get('username');
        $password = Input::get('password');
        $redirect = Input::get('redirect');

        $logincheck = Admins::check_login($username, $password);
        if($logincheck == 1){
            if(isset($redirect)){
                return Redirect::to($redirect);
            }
            return Redirect::to('admin');
        } else {
            return Redirect::to('admin/login');
        }
    }

    public function signout(){
        Session::forget('adminid');
        Session::forget('adminname');
        Session::flush();
        return Redirect::to('admin/login');
    }

    public function manage_merchants(){
        $merchants_live = Merchants::getMerchants();
        $merchants_wait = Merchants::getMerchantTempos();
        return view("admin.merchants")->with('merchants_live', $merchants_live)->with('merchants_wait', $merchants_wait);
    }

    public function approve_merchant($id){
        $mw = Merchants::getMerchantTempo($id)->first();
        $mw->merchant_status = 1;
        $array = json_decode(json_encode($mw),true);
        unset($array['merchant_id']);
        Log::debug($array);
        Merchants::editMerchantTempo($array, $mw->merchant_id);
        Merchants::addMerchant($array);
        return Redirect::to('admin/merchants');
    }

    public function merchant_reject($id){
        $mw = Merchants::getMerchantTempo($id)->first();
        $mw->merchant_status = 2;
        $array = json_decode(json_encode($mw),true);
        unset($array['merchant_id']);
        Log::debug($array);
        Merchants::editMerchantTempo($array, $mw->merchant_id);
        return Redirect::to('admin/merchants');
    }

    public function merchant_open($id){
        $ml = Merchants::getMerchant($id)->first();
        $ml->merchant_open = 1;
        $array = json_decode(json_encode($ml),true);
        unset($array['merchant_id']);
        Log::debug($array);
        Merchants::editMerchant($array, $ml->merchant_id);
        return Redirect::to('admin/merchants');
    }

    public function merchant_close($id){
        $ml = Merchants::getMerchant($id)->first();
        $ml->merchant_open = 0;
        $array = json_decode(json_encode($ml),true);
        unset($array['merchant_id']);
        Log::debug($array);
        Merchants::editMerchant($array, $ml->merchant_id);
        return Redirect::to('admin/merchants');
    }

    public function detail_merchant_wait($id){
        $merchant = Merchants::getMerchantTempo($id)->first();
        $plans = Plans::get_plans();
        $states = States::get_states();
        return view('admin.merchant_detail')->with('merchant', $merchant)
                                    ->with('plans', $plans)
                                    ->with('states', $states);
    }

    public function detail_merchant_live($id){
        $merchant = Merchants::getMerchant($id)->first();
        $plans = Plans::get_plans();
        $states = States::get_states();
        return view('admin.merchant_detail')->with('merchant', $merchant)
                                    ->with('plans', $plans)
                                    ->with('states', $states);
    }
}
