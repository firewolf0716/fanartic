<?php

namespace App\Http\Controllers\Merchant;

use Session;
use DB;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;

use App\Models\Merchants;
use App\Models\Plans;
use App\Models\States;
use App\Models\Citys;
use App\Models\Brands;
use App\Models\MerchantBrands;

class MerchantController extends Controller
{
    //
    public function merchant_dashboard(){
        if (Session::has('merchantid')) {
            return view('merchant.dashboard');
        } else {
            return Redirect::to('merchant/signin?redirect=merchant_dashboard');
        }
    }
    public function merchant_setting(){
        if (Session::has('merchantid')) {
            $id = Session::get('merchantid');
            $merchants = Merchants::getMerchant($id);
            $merchant = $merchants[0];
            $plans = Plans::get_plans();
            $states = States::get_states();
            $brands = Brands::get_brands();
            $selbrands = MerchantBrands::get_brands($merchant->merchant_id);
            return view('merchant.setting')->with('merchant', $merchant)
                                        ->with('plans', $plans)
                                        ->with('states', $states)
                                        ->with('brands', $brands)
                                        ->with('selbrands', $selbrands);
        } else {
            return Redirect::to('merchant/signin?redirect=merchant_dashboard');
        }                           
    }
    public function getcity(){
        $stateid = Input::get('state');
        $citys = Citys::getCitys($stateid);
        return $citys;
    }
    
    public function merchant_editsetting(){
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $state = Input::get('merchant_state');
        $array1 = array(
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
            'created_at' => Input::get('create_date'),
            'updated_at' => Input::get('update_date'),
            'merchant_open_state' => Input::get('merchant_open_state'),
            'merchant_fixcost' => Input::get('merchant_fixcost'),
            'merchant_opencost' => Input::get('merchant_opencost'),
        );

        $array2 = array();
        if($state > 1){
            $array2 = array(
                'merchant_city' => Input::get('merchant_city'),
                'merchant_address_ex' => Input::get('merchant_address_ex'),
                'merchant_province' => '',
                'merchant_county' => '',
                'merchant_address_jp' => '',
            );
        } else if($state == 1) {
            $array2 = array(
                'merchant_city' => '',
                'merchant_address_ex' => '',
                'merchant_province' => Input::get('merchant_province'),
                'merchant_county' => Input::get('merchant_county'),
                'merchant_address_jp' => Input::get('merchant_address_jp'),
            );
        }
        $entry = array_merge($array1, $array2);

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

        return Redirect::to('merchant/setting');
    }
}
