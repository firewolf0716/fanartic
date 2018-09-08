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
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        return view('admin.dashboard');
    }

    public function login() {
        if ($this->check_admin_session() == true) {
            return redirect::to('admin/dashboard');
        } else {
            if(isset($_GET['redirect'])){
                return view('admin.login')->with('redirect', $_GET['redirect']);
            }
            return view('admin.login')->with('redirect', 'admin');
        }
    }

    public function signin() {
        $username = Input::get('username');
        $password = Input::get('password');
        $redirect = Input::get('redirect');

        $logincheck = AdminUserService::check_login($username, $password);
        if($logincheck == 1){
            if(isset($redirect)){
                return Redirect::to($redirect);
            }
            return Redirect::to('admin');
        } else {
            return Redirect::to('admin/login');
        }
    }

    public function signout() {
        Session::forget('adminid');
        Session::forget('adminname');
        Session::flush();
        return Redirect::to('admin/login');
    }

    public function manage_merchants() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $merchants_live = Merchants::get();
        return view("admin.merchant.merchants")->with('merchants_live', $merchants_live);
    }

    public function merchant_open($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $ml = Merchants::find($id);
        $ml->merchant_status = 1;
        $ml->save();
        return Redirect::to('admin/merchants/list');
    }

    public function merchant_close($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $ml = Merchants::find($id);
        $ml->merchant_status = '0';
        $ml->save();
        return Redirect::to('admin/merchants/list');
    }

    public function detail_merchant_live($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $merchant = Merchants::find($id);
        $plans = Plans::get_plans();
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
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $plans = Plans::get();
        $states = States::get();
        $brands = Brands::get();
        return view('admin.merchant.merchant_add')->with('plans', $plans)->with('states', $states)->with('brands', $brands);
    }

    public function merchant_addpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $merchant = new Merchants();
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
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $plan = Plans::find($planid);
        return $plan;
    }

    public function merchant_editpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

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
        return Redirect::to('admin/merchants/list');
    }

    public function addadmin() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        return view('admin.admin.add');
    }

    public function addadminpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $admin = new Admins();
        $admin->admin_name = Input::get('admin_name');
        $admin->admin_email = Input::get('admin_email');
        $admin->admin_password = Input::get('admin_password');
        $admin->admin_permission = 2;
        $admin->save();

        return Redirect::to('admin/admins/list');
    }

    public function editadmin($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $admin = Admins::find($id);
        return view('admin.admin.edit')->with('admin', $admin);
    }

    public function listadmin() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $admins = Admins::where('admin_permission', '!=', 1)->orderBy('admin_id', 'ASC')->get();
        return view('admin.admin.list')->with('admins', $admins);
    }

    public function editadminpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $admin = Admins::find(Input::get('admin_id'));
        $admin->admin_name = Input::get('admin_name');
        $admin->admin_email = Input::get('admin_email');
        $admin->admin_password = Input::get('admin_password');
        $admin->save();

        return Redirect::to('admin/admins/list');
    }
}
