<?php

namespace App\Http\Controllers;

use Session;
use DB;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;

use App\Merchants;
use App\Plans;
use App\States;
use App\Citys;

class MerchantController extends Controller
{
    //
    public function merchant_dashboard(){
        if (Session::has('merchantid')) {
            return view('merchant.dashboard');
        } else {
            return Redirect::to('merchant/login?redirect=merchant_dashboard');
        }
    }
    public function merchant_setting(){
        if (Session::has('merchantid')) {
            $id = Session::get('merchantid');
            $merchants = Merchants::getMerchant($id);
            $merchant = $merchants[0];
            $plans = Plans::get_plans();
            $states = States::get_states();
            return view('merchant.setting')->with('merchant', $merchant)
                                        ->with('plans', $plans)
                                        ->with('states', $states);
        } else {
            return Redirect::to('merchant/login?redirect=merchant_dashboard');
        }
    }
    public function getcity(){
        $stateid = Input::get('state');
        $citys = Citys::getCitys($stateid);
        return $citys;
    }
    public function merchant_editsetting(){
        Log::debug(Input::all());
        $state = Input::get('merchant_state');
        $id = Input::get('merchant_id');
        if($state > 1){
            $entry = array(
                'merchant_id' => Input::get('merchant_id'),
                'merchant_type' => Input::get('merchant_type'),
                'merchant_plan' => Input::get('merchant_plan'),
                'merchant_taxflag' => Input::get('merchant_taxflag'),
                'merchant_companyname' => Input::get('merchant_companyname'),
                'merchant_name' => Input::get('merchant_name'),
                'merchant_rep' => Input::get('merchant_rep'),
                'merchant_admin' => Input::get('merchant_admin'),
                'merchant_permit' => Input::get('merchant_permit'),
                'merchant_email' => Input::get('merchant_email'),
                'merchant_phone' => Input::get('merchant_phone'),
                'merchant_postalcode' => Input::get('merchant_postalcode'),
                'merchant_state' => Input::get('merchant_state'),
                'merchant_city' => Input::get('merchant_city'),
                'merchant_address_ex' => Input::get('merchant_address_ex'),
                'merchant_province' => '',
                'merchant_county' => '',
                'merchant_address_jp' => '',
                'merchant_commission_jp' => Input::get('merchant_commission_jp'),
                'merchant_commission_ex' => Input::get('merchant_commission_ex'),
                'merchant_create' => Input::get('create_date'),
                'merchant_update' => Input::get('update_date'),
            );
            Merchants::editMerchant($entry, $id);
        } else if($state == 1){
            $entry = array(
                'merchant_id' => Input::get('merchant_id'),
                'merchant_type' => Input::get('merchant_type'),
                'merchant_plan' => Input::get('merchant_plan'),
                'merchant_taxflag' => Input::get('merchant_taxflag'),
                'merchant_companyname' => Input::get('merchant_companyname'),
                'merchant_name' => Input::get('merchant_name'),
                'merchant_rep' => Input::get('merchant_rep'),
                'merchant_admin' => Input::get('merchant_admin'),
                'merchant_permit' => Input::get('merchant_permit'),
                'merchant_email' => Input::get('merchant_email'),
                'merchant_phone' => Input::get('merchant_phone'),
                'merchant_postalcode' => Input::get('merchant_postalcode'),
                'merchant_state' => Input::get('merchant_state'),
                'merchant_city' => '',
                'merchant_address_ex' => '',
                'merchant_province' => Input::get('merchant_province'),
                'merchant_county' => Input::get('merchant_county'),
                'merchant_address_jp' => Input::get('merchant_address_jp'),
                'merchant_commission_jp' => Input::get('merchant_commission_jp'),
                'merchant_commission_ex' => Input::get('merchant_commission_ex'),
                'merchant_create' => Input::get('create_date'),
                'merchant_update' => Input::get('update_date'),
            );
            Merchants::editMerchant($entry, $id);
        }
        return Redirect::to('merchant/setting');
    }
}
