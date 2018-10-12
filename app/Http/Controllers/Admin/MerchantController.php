<?php

namespace App\Http\Controllers\Admin;

use Session;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Hash;

use App\Models\Merchants;
use App\Models\Plans;
use App\Models\States;
use App\Models\Brands;
use App\Models\MerchantBrands;

use App\Services\MatchService;

class MerchantController extends Controller
{
    public function manage() {
        $merchants_live = Merchants::get();
        return view("admin.merchant.merchants")->with('merchants_live', $merchants_live);
    }

    public function open($id) {
        $ml = Merchants::find($id);
        $ml->merchant_status = 1;
        $ml->save();
        return Redirect::to('admin/merchants/list');
    }

    public function close($id) {
        $ml = Merchants::find($id);
        $ml->merchant_status = '0';
        $ml->save();
        return Redirect::to('admin/merchants/list');
    }

    public function detail_live($id) {
        $merchant = Merchants::find($id);
        $plans = Plans::get();
        $states = States::get();
        $brands = Brands::get();
        $selbrands = MatchService::get_brands_merchant($merchant->merchant_id);

        return view('admin.merchant.merchant_detail')->with('merchant', $merchant)
                                    ->with('plans', $plans)
                                    ->with('states', $states)
                                    ->with('brands', $brands)
                                    ->with('selbrands', $selbrands);
    }

    public function add() {
        $plans = Plans::get();
        $states = States::get();
        $brands = Brands::get();
        return view('admin.merchant.merchant_add')->with('plans', $plans)->with('states', $states)->with('brands', $brands);
    }

    public function add_post() {
        $merchant = new Merchants();
        $merchant->merchant_type = Input::get('merchant_type');
        $merchant->merchant_plan = Input::get('merchant_plan');
        $merchant->merchant_taxflag = Input::get('merchant_taxflag');
        $merchant->merchant_companyname = Input::get('merchant_companyname');
        $merchant->name = Input::get('name');
        $merchant->merchant_rep = Input::get('merchant_rep');
        $merchant->merchant_admin = Input::get('merchant_admin');
        $merchant->merchant_permit = Input::get('merchant_permit');
        $merchant->email = Input::get('email');
        $merchant->password = Hash::make(Input::get('password'));
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
        if(Input::has('merchant_brands')){
            $brands = Input::get('merchant_brands');
            foreach($brands as $brand){
                $match = new MerchantBrands();
                $match->merchant_id = $merchant->merchant_id;
                $match->brand_id = $brand;
                $match->save();
            }
        }
        return Redirect::to('admin/merchants/list');
    }

    public function get_plan($planId) {
        $plan = Plans::find($planId);
        return $plan;
    }

    public function edit_post() {
        $id = Input::get('merchant_id');
        /** @var Merchants $merchant */
        $merchant = Merchants::find($id);
        $merchant->merchant_type = Input::get('merchant_type');
        $merchant->merchant_plan = Input::get('merchant_plan');
        $merchant->merchant_taxflag = Input::get('merchant_taxflag');
        $merchant->merchant_companyname = Input::get('merchant_companyname');
        $merchant->name = Input::get('name');
        $merchant->merchant_rep = Input::get('merchant_rep');
        $merchant->merchant_admin = Input::get('merchant_admin');
        $merchant->merchant_permit = Input::get('merchant_permit');
        $merchant->email = Input::get('email');

        if (Input::filled('password')) {
            $merchant->password = Hash::make(Input::get('password'));
        }

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
                $match = new MerchantBrands();
                $match->merchant_id = $id;
                $match->brand_id = $brand;
                $match->save();
            }
        }
        return Redirect::to('admin/merchants/list');
    }
}

