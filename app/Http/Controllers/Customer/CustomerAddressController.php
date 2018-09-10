<?php

namespace App\Http\Controllers\Customer;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use Session;
use Hash;
use Mail;

use App\Models\States;
use App\Models\CustomerUser;
use App\Models\CustomerAddress;


class CustomerAddressController extends Controller
{
    public function address(){
        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');
        $customer = CustomerUser::find($customerid);
        $addresses = $customer->address;
        return $this->layout_init(view('customer.user.address'), 1)->with('addresses', $addresses);
    }
    public function addressadd(){
        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        $states = States::get();
        $customerid = Session::get('customerid');
        return $this->layout_init(view('customer.user.address_add'), 1)->with('states', $states);
    }
    public function address_add_post(){
        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');
        $state = Input::get('state');

        $address = new CustomerAddress();
        $address->customer_id = $customerid;
        $address->address_name = Input::get('name');
        $address->address_phone = Input::get('tel1').'-'.Input::get('tel2').'-'.Input::get('tel3');
        $address->address_postalcode = Input::get('zipcode');
        $address->address_state = Input::get('state');
        $address->address_city = Input::get('city');
        $address->address_address_ex = Input::get('address_ex');
        $address->address_province = Input::get('province');
        $address->address_county = Input::get('county');
        $address->address_address_jp = Input::get('address_jp');
        $address->save();

        return Redirect::to('user/address');
    }
    public function address_flag($id){
        if(!Session::has('customerid')){
            return;
        }
        $customerid = Session::get('customerid');
        Customers::unset_address_flag($customerid);

        $address = CustomerAddress::find($id);
        $address->address_default = 1;
        $address->save();
        return Redirect::to('user/address');
    }
    public function address_edit($id){
        $address = CustomerAddress::find($id);
        $states = States::get();
        $customerid = Session::get('customerid');
        $phone = $address->address_phone;
        $tel = array('', '', '');
        if($phone != '' || isset($phone)){
            $tel = explode('-', $phone);
        }
        return $this->layout_init(view('customer.user.address_edit'), 1)->with('states', $states)->with('address', $address)
            ->with('phone', $tel)->with('customerid', $customerid);
    }
    public function address_edit_post(){
        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');
        $state = Input::get('state');
        $id =  Input::get('address_id');

        $address = CustomerAddress::find($id);
        $address->customer_id = $customerid;
        $address->address_name = Input::get('name');
        $address->address_phone = Input::get('tel1').'-'.Input::get('tel2').'-'.Input::get('tel3');
        $address->address_postalcode = Input::get('zipcode');
        $address->address_state = Input::get('state');
        $address->address_city = Input::get('city');
        $address->address_address_ex = Input::get('address_ex');
        $address->address_province = Input::get('province');
        $address->address_county = Input::get('county');
        $address->address_address_jp = Input::get('address_jp');
        $address->save();
        
        return Redirect::to('user/address');
    }
    public function address_delete($id){
        CustomerAddress::find($id)->delete();
        return Redirect::to('user/address');
    }
}
