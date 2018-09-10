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
use App\Services\LocationService;
use App\Services\MatchService;
use App\Models\Products;

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
            $merchants = Merchants::find($id);
            $merchant = $merchants[0];
            $plans = Plans::get();
            $states = States::get();
            $brands = Brands::get();
            $selbrands = MatchService::get_brands_merchant($merchant->merchant_id);
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
        $citys = LocationService::getCitys($stateid);
        return $citys;
    }
    
    public function merchant_editsetting(){
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $id = Input::get('merchant_id');
        $id = Input::get('merchant_id');
        $merchant = Merchants::find($id);
        $merchant->merchant_type = Input::get('merchant_type');
        $merchant->merchant_plan = Input::get('merchant_plan');
        $merchant->merchant_taxflag = Input::get('merchant_taxflag');
        $merchant->merchant_companyname = Input::get('merchant_companyname');
        $merchant->merchant_name = Input::get('merchant_name');
        $merchant->merchant_rep = Input::get('merchant_rep');
        $merchant->merchant_admin = Input::get('merchant_admin');
        $merchant->merchant_permit = Input::get('merchant_permit');
        $merchant->merchant_email = Input::get('merchant_email');
        $merchant->merchant_password = Input::get('merchant_password');
        $merchant->merchant_postalcode = Input::get('merchant_postalcode');
        $merchant->merchant_state = Input::get('merchant_state');
        $merchant->merchant_commission_jp = Input::get('merchant_commission_jp');
        $merchant->merchant_commission_ex = Input::get('merchant_commission_ex');
        $merchant->merchant_open_state = Input::get('merchant_open_state');
        $merchant->merchant_fixcost = Input::get('merchant_fixcost');
        $merchant->merchant_opencost = Input::get('merchant_opencost');
        $merchant->merchant_phone = Input::get('merchant_phone');

        $state = Input::get('merchant_state');
        if($state == 1){
            $merchant->merchant_city = '';
            $merchant->merchant_address_ex = '';
            $merchant->merchant_province = Input::get('merchant_province');
            $merchant->merchant_county = Input::get('merchant_county');
            $merchant->merchant_address_jp = Input::get('merchant_address_jp');
        } else if($state > 1){
            $merchant->merchant_city = Input::get('merchant_city');
            $merchant->merchant_address_ex = Input::get('merchant_address_ex');
            $merchant->merchant_province = '';
            $merchant->merchant_county = '';
            $merchant->merchant_address_jp = '';
        }
        $merchant->save();
        MatchService::remove_brands_merchant($id);
        if(Input::has('merchant_brands')){
            $brands = Input::get('merchant_brands');
            foreach($brands as $brand){
                $mentry = array(
                    'merchant_id' => $id,
                    'brand_id' => $brand
                );
                $match = new MerchantBrands();
                $match->merchant_id = $id;
                $match->brand_id = $brand;
                $match->save();
            }
        }

        return Redirect::to('merchant/setting');
    }
}
