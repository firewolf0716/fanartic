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
use App\Brands;
use App\MerchantBrands;

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
        return view("admin.merchant.merchants")->with('merchants_live', $merchants_live)->with('merchants_wait', $merchants_wait);
    }

    // public function approve_merchant($id){
    //     $mw = Merchants::getMerchantTempo($id)->first();
    //     $mw->merchant_status = 1;
    //     $array = json_decode(json_encode($mw),true);
    //     unset($array['merchant_id']);
    //     Log::debug($array);
    //     Merchants::editMerchantTempo($array, $mw->merchant_id);
    //     Merchants::addMerchant($array);
    //     return Redirect::to('admin/merchants');
    // }

    // public function merchant_reject($id){
    //     $mw = Merchants::getMerchantTempo($id)->first();
    //     $mw->merchant_status = 2;
    //     $array = json_decode(json_encode($mw),true);
    //     unset($array['merchant_id']);
    //     Log::debug($array);
    //     Merchants::editMerchantTempo($array, $mw->merchant_id);
    //     return Redirect::to('admin/merchants');
    // }

    public function merchant_open($id){
        $ml = Merchants::getMerchant($id)->first();
        $ml->merchant_status = 1;
        $array = json_decode(json_encode($ml),true);
        unset($array['merchant_id']);
        Log::debug($array);
        Merchants::editMerchant($array, $ml->merchant_id);
        return Redirect::to('admin/merchants/list');
    }

    public function merchant_close($id){
        $ml = Merchants::getMerchant($id)->first();
        $ml->merchant_status = 0;
        $array = json_decode(json_encode($ml),true);
        unset($array['merchant_id']);
        Log::debug($array);
        Merchants::editMerchant($array, $ml->merchant_id);
        return Redirect::to('admin/merchants/list');
    }

    // public function detail_merchant_wait($id){
    //     $merchant = Merchants::getMerchantTempo($id)->first();
    //     $plans = Plans::get_plans();
    //     $states = States::get_states();
    //     return view('admin.merchant_detail')->with('merchant', $merchant)
    //                                 ->with('plans', $plans)
    //                                 ->with('states', $states);
    // }

    public function detail_merchant_live($id){
        $merchant = Merchants::getMerchant($id)->first();
        $plans = Plans::get_plans();
        $states = States::get_states();
        $brands = Brands::get_brands();
        $selbrands = MerchantBrands::get_brands($merchant->merchant_id);
        return view('admin.merchant.merchant_detail')->with('merchant', $merchant)
                                    ->with('plans', $plans)
                                    ->with('states', $states)
                                    ->with('brands', $brands)
                                    ->with('selbrands', $selbrands);
    }

    public function merchant_add(){
        $plans = Plans::get_plans();
        $states = States::get_states();
        $brands = Brands::get_brands();
        return view('admin.merchant.merchant_add')->with('plans', $plans)->with('states', $states)->with('brands', $brands);
    }

    public function merchant_addpost(){
        $state = Input::get('merchant_state');
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
                'merchant_password' => Input::get('merchant_password'),
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
                'merchant_open_state' => Input::get('merchant_open_state'),
                'merchant_create' => Input::get('create_date'),
                'merchant_update' => Input::get('update_date'),
                'merchant_fixcost' => Input::get('merchant_fixcost'),
                'merchant_opencost' => Input::get('merchant_opencost'),
            );
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
                'merchant_password' => Input::get('merchant_password'),
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
                'merchant_open_state' => Input::get('merchant_open_state'),
                'merchant_fixcost' => Input::get('merchant_fixcost'),
                'merchant_opencost' => Input::get('merchant_opencost'),
            );
        }
        $newid = Merchants::addMerchant($entry);
        if(Input::has('merchant_brands')){
            $brands = Input::get('merchant_brands');
            foreach($brands as $brand){
                $mentry = array(
                    'merchant_id' => $newid,
                    'brand_id' => $brand
                );
                MerchantBrands::insert_match($mentry);
            }
        }
        return Redirect::to('admin/merchants/list');
    }
    public function get_plan($planid) {
        $plan = Plans::get_plan($planid);
        return $plan;
    }
    public function merchant_editpost(){
        $state = Input::get('merchant_state');
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
                'merchant_password' => Input::get('merchant_password'),
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
                'merchant_open_state' => Input::get('merchant_open_state'),
                'merchant_fixcost' => Input::get('merchant_fixcost'),
                'merchant_opencost' => Input::get('merchant_opencost'),
            );
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
                'merchant_password' => Input::get('merchant_password'),
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
                'merchant_open_state' => Input::get('merchant_open_state'),
                'merchant_fixcost' => Input::get('merchant_fixcost'),
                'merchant_opencost' => Input::get('merchant_opencost'),
            );
        }
        $id = Input::get('merchant_id');
        Merchants::editMerchant($entry, $id);
        MerchantBrands::remove_brands($id);
        if(Input::has('merchant_brands')){
            $brands = Input::get('merchant_brands');
            foreach($brands as $brand){
                $mentry = array(
                    'merchant_id' => $id,
                    'brand_id' => $brand
                );
                MerchantBrands::insert_match($mentry);
            }
        }
        return Redirect::to('admin/merchants/list');
    }

    public function addadmin(){
        return view('admin.admin.add');
    }

    public function addadminpost(){
        $entry =  array(
            'admin_name' => Input::get('admin_name'),
            'admin_email' => Input::get('admin_email'),
            'admin_password' => Input::get('admin_password'),
            'admin_permission' => '2'
        );
        Admins::insert_admin($entry);
        return Redirect::to('admin/admins/list');
    }

    public function editadmin($id){
        $admins = Admins::get_admin($id);
        $admin = $admins->first();
        return view('admin.admin.edit')->with('admin', $admin);
    }

    public function listadmin(){
        $admins = Admins::get_admins();
        return view('admin.admin.list')->with('admins', $admins);
    }

    public function editadminpost(){
        $adminid = Input::get('admin_id');
        $entry =  array(
            'admin_name' => Input::get('admin_name'),
            'admin_email' => Input::get('admin_email'),
            'admin_password' => Input::get('admin_password')
        );
        Admins::edit_admin($entry, $adminid);
        return Redirect::to('admin/admins/list');
    }
}
