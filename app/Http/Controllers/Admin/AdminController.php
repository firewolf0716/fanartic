<?php

namespace App\Http\Controllers\Admin;

use Session;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Admins;
use App\Models\Merchants;
use App\Models\Plans;
use App\Models\States;
use App\Models\Brands;
use App\Models\MerchantBrands;

use App\Services\AdminUserService;
use App\Services\MatchService;

class AdminController extends Controller
{
    public function dashboard() {
        return view('admin.dashboard');
    }

    public function manage_merchants() {
        $merchants_live = Merchants::get();
        return view("admin.merchant.merchants")->with('merchants_live', $merchants_live);
    }

    public function merchant_open($id) {
        $ml = Merchants::find($id);
        $ml->merchant_status = 1;
        $ml->save();
        return Redirect::to('admin/merchants/list');
    }

    public function merchant_close($id) {
        $ml = Merchants::find($id);
        $ml->merchant_status = '0';
        $ml->save();
        return Redirect::to('admin/merchants/list');
    }

    public function detail_merchant_live($id) {
        $merchant = Merchants::find($id);
        $plans = Plans::get();
        $states = States::get();
        $brands = Brands::get();
        $selbrands = MatchService::get_brands($merchant->merchant_id);
        return view('admin.merchant.merchant_detail')->with('merchant', $merchant)
                                    ->with('plans', $plans)
                                    ->with('states', $states)
                                    ->with('brands', $brands)
                                    ->with('selbrands', $selbrands);
    }

    public function merchant_add() {
        $plans = Plans::get();
        $states = States::get();
        $brands = Brands::get();
        return view('admin.merchant.merchant_add')->with('plans', $plans)->with('states', $states)->with('brands', $brands);
    }

    public function merchant_addpost() {
        $merchant = new Merchants();
        $merchant->merchant_type = Input::get('merchant_type');
        $merchant->merchant_plan = Input::get('merchant_plan');
        $merchant->merchant_taxflag = Input::get('merchant_taxflag');
        $merchant->merchant_companyname = Input::get('merchant_companyname');
        $merchant->name = Input::get('merchant_name');
        $merchant->merchant_rep = Input::get('merchant_rep');
        $merchant->merchant_admin = Input::get('merchant_admin');
        $merchant->merchant_permit = Input::get('merchant_permit');
        $merchant->email = Input::get('merchant_email');
        $merchant->password = Input::get('merchant_password');
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
                // $mentry = array(
                //     'merchant_id' => $merchant->merchant_id,
                //     'brand_id' => $brand
                // );
                $match = new MerchantBrands();
                $match->merchant_id = $merchant->merchant_id;
                $match->brand_id = $brand;
                $match->save();
            }
        }
        return Redirect::to('admin/merchants/list');
    }

    public function get_plan($planid) {
        $plan = Plans::find($planid);
        return $plan;
    }

    public function merchant_editpost() {
        $id = Input::get('merchant_id');
        $merchant = Merchants::find($id);
        $merchant->merchant_type = Input::get('merchant_type');
        $merchant->merchant_plan = Input::get('merchant_plan');
        $merchant->merchant_taxflag = Input::get('merchant_taxflag');
        $merchant->merchant_companyname = Input::get('merchant_companyname');
        $merchant->name = Input::get('merchant_name');
        $merchant->merchant_rep = Input::get('merchant_rep');
        $merchant->merchant_admin = Input::get('merchant_admin');
        $merchant->merchant_permit = Input::get('merchant_permit');
        $merchant->email = Input::get('merchant_email');
        $merchant->password = Input::get('merchant_password');
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
        return Redirect::to('admin/merchants/list');
    }

    public function addadmin() {
        return view('admin.admin.add');
    }

    public function addadminpost() {
        $admin = new Admins();
        $admin->admin_name = Input::get('admin_name');
        $admin->admin_email = Input::get('admin_email');
        $admin->admin_password = Input::get('admin_password');
        $admin->admin_permission = 2;
        $admin->save();

        return Redirect::to('admin/admins/list');
    }

    public function editadmin($id) {
        $admin = Admins::find($id);
        return view('admin.admin.edit')->with('admin', $admin);
    }

    public function listadmin() {
        $admins = Admins::where('admin_permission', '!=', 1)->orderBy('admin_id', 'ASC')->get();
        return view('admin.admin.list')->with('admins', $admins);
    }

    public function editadminpost() {
        $admin = Admins::find(Input::get('admin_id'));
        $admin->admin_name = Input::get('admin_name');
        $admin->admin_email = Input::get('admin_email');
        $admin->admin_password = Input::get('admin_password');
        $admin->save();

        return Redirect::to('admin/admins/list');
    }
}
