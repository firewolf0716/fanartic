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

        $logincheck = Merchants::check_login($username, $password);
        if($logincheck == 1){
            if(isset($redirect)){
                return Redirect::to($redirect);
            }
            return Redirect::to('merchant/dashboard');
        } else {
            $status = Merchants::merchant_status($username, $password);
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

    public function merchant_signuppost(){
        // $username = Input::get('username_up');
        // $password = Input::get('password_up');
        // $email = Input::get('email_up');
        // date_default_timezone_set('Asia/Tokyo');
        // $create_date = date('Y/m/d H:i:s');
        // $entry = array(
        //     'merchant_admin' => $username,
        //     'merchant_email' => $email,
        //     'merchant_password' => $password,
        //     'merchant_status' => '1',
        //     'merchant_create' => $create_date,
        //     'merchant_update' => $create_date
        // );
        // $id = Merchants::addMerchant($entry);
        // if($id > 0){
        //     Session::put('site','merchant');
        //     Session::put('merchantid', $id);
        //     Session::put('merchantname', $username);
        //     return Redirect::to('merchant/dashboard');
        // }
        // $state = Input::get('merchant_state');
        // $id = Input::get('merchant_id');
        // if($state > 1){
        //     $entry = array(
        //         'merchant_id' => Input::get('merchant_id'),
        //         'merchant_type' => Input::get('merchant_type'),
        //         'merchant_plan' => Input::get('merchant_plan'),
        //         'merchant_taxflag' => Input::get('merchant_taxflag'),
        //         'merchant_companyname' => Input::get('merchant_companyname'),
        //         'merchant_name' => Input::get('merchant_name'),
        //         'merchant_rep' => Input::get('merchant_rep'),
        //         'merchant_admin' => Input::get('merchant_admin'),
        //         'merchant_permit' => Input::get('merchant_permit'),
        //         'merchant_email' => Input::get('merchant_email'),
        //         'merchant_password' => Input::get('merchant_password'),
        //         'merchant_phone' => Input::get('merchant_phone'),
        //         'merchant_postalcode' => Input::get('merchant_postalcode'),
        //         'merchant_state' => Input::get('merchant_state'),
        //         'merchant_city' => Input::get('merchant_city'),
        //         'merchant_address_ex' => Input::get('merchant_address_ex'),
        //         'merchant_province' => '',
        //         'merchant_county' => '',
        //         'merchant_address_jp' => '',
        //         'merchant_commission_jp' => Input::get('merchant_commission_jp'),
        //         'merchant_commission_ex' => Input::get('merchant_commission_ex'),
        //         'merchant_create' => Input::get('create_date'),
        //         'merchant_update' => Input::get('update_date'),
        //         'merchant_status' => '0',
        //     );
        //     Merchants::addMerchantTempo($entry);
        // } else if($state == 1){
        //     $entry = array(
        //         'merchant_id' => Input::get('merchant_id'),
        //         'merchant_type' => Input::get('merchant_type'),
        //         'merchant_plan' => Input::get('merchant_plan'),
        //         'merchant_taxflag' => Input::get('merchant_taxflag'),
        //         'merchant_companyname' => Input::get('merchant_companyname'),
        //         'merchant_name' => Input::get('merchant_name'),
        //         'merchant_rep' => Input::get('merchant_rep'),
        //         'merchant_admin' => Input::get('merchant_admin'),
        //         'merchant_permit' => Input::get('merchant_permit'),
        //         'merchant_email' => Input::get('merchant_email'),
        //         'merchant_password' => Input::get('merchant_password'),
        //         'merchant_phone' => Input::get('merchant_phone'),
        //         'merchant_postalcode' => Input::get('merchant_postalcode'),
        //         'merchant_state' => Input::get('merchant_state'),
        //         'merchant_city' => '',
        //         'merchant_address_ex' => '',
        //         'merchant_province' => Input::get('merchant_province'),
        //         'merchant_county' => Input::get('merchant_county'),
        //         'merchant_address_jp' => Input::get('merchant_address_jp'),
        //         'merchant_commission_jp' => Input::get('merchant_commission_jp'),
        //         'merchant_commission_ex' => Input::get('merchant_commission_ex'),
        //         'merchant_create' => Input::get('create_date'),
        //         'merchant_update' => Input::get('update_date'),
        //         'merchant_status' => '0',
        //     );
        //     Merchants::addMerchantTempo($entry);
        // }
        // return Redirect::to('merchant/signin');
    }

    public function merchant_signup(){
        // $plans = Plans::get_plans();
        // $states = States::get_states();
        // return view('merchant.signup')->with('plans', $plans)->with('states', $states);
    }
}
