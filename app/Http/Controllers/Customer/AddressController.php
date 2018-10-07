<?php

namespace App\Http\Controllers\Customer;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use Session;
use Hash;
use Mail;
use Countries;

use App\Models\Customers;
use App\Models\States;
use App\Models\CustomerUser;
use App\Models\CustomerAddress;


class AddressController extends Controller
{
    protected $_validates_jp = [
        'zipcode'  => 'sometimes|required',
        'province_jp'  => 'sometimes|required',
        'city_jp'  => 'sometimes|required',
        'address_jp'  => 'sometimes|required',
    ];
    protected $_validates_us = [
        'city'  => 'sometimes|required',
        'address_ex'  => 'sometimes|required',
    ];

    public function index()
    {
        $locale = session('applocale');
        $countries = Countries::getList($locale, 'php');

        $customer = CustomerUser::find(Auth::id());
        $addresses = $customer->address;
        return $this->layout_init(view('customer.user.address'), 1)
            ->with(compact('addresses', 'countries'));
    }

    public function add()
    {
        $locale = session('applocale');
        $countries = Countries::getList($locale, 'php');

        // $states = States::get();
        return $this->layout_init(view('customer.user.address_add'), 1)->with(compact('countries'));
    }

    public function addPost(Request $request)
    {
        $request->merge(['phone' => $request->input('tel1') . '-' . $request->input('tel2') . '-' . $request->input('tel3')]);
        $request->merge(['customer_id' => Auth::id()]);
        $this->address = new CustomerAddress();
        if ($request->input('country') == 'JP') {
            $validate_list = array_merge($this->address->getValidateList(), $this->_validates_jp);
        } else {
            $validate_list = array_merge($this->address->getValidateList(), $this->_validates_us);
        }

        $request->validate($validate_list);

        $address = new CustomerAddress();
        $address->customer_id = Auth::id();
        $address->name = $request->input('name');
        $address->phone = $request->input('phone');
        $address->zipcode = $request->input('zipcode');
        $address->country = $request->input('country');
        $address->city = $request->input('city');
        $address->address_ex = $request->input('address_ex');
        $address->province_jp = $request->input('province_jp');
        $address->city_jp = $request->input('city_jp');
        $address->address_jp = $request->input('address_jp');
        $address->save();

        return Redirect::to('user/address');
    }

    public function flag($id)
    {
        Customers::unset_flag(Auth::id());
        $address = CustomerAddress::find($id);
        $address->is_default = 1;
        $address->save();
        return Redirect::to('user/address');
    }

    public function edit($id)
    {
        $locale = session('applocale');
        $country = new CountryList();
        $countries = json_decode($country->getList($locale, 'json'));

        $address = CustomerAddress::find($id);
        return $this->layout_init(view('customer.user.address_edit'), 1)
            ->with(compact('address', 'countries'));
    }

    public function editPost(Request $request)
    {
        $request->merge(['phone' => $request->input('tel1') . '-' . $request->input('tel2') . '-' . $request->input('tel3')]);
        $request->merge(['customer_id' => Auth::id()]);
        $this->address = new CustomerAddress();
        if ($request->input('country') == 'JP') {
            $validate_list = array_merge($this->address->getValidateList(), $this->_validates_jp);
        } else {
            $validate_list = array_merge($this->address->getValidateList(), $this->_validates_us);
        }

        $request->validate($validate_list);

        $id = $request->input('address_id');

        $address = CustomerAddress::find($id);
        $address->name = $request->input('name');
        $address->phone = $request->input('phone');
        $address->zipcode = $request->input('zipcode');
        $address->country = $request->input('country');
        $address->city = $request->input('city');
        $address->address_ex = $request->input('address_ex');
        $address->province_jp = $request->input('province_jp');
        $address->city_jp = $request->input('city_jp');
        $address->address_jp = $request->input('address_jp');
        $address->save();

        return Redirect::to('user/address');
    }

    public function delete($id)
    {
        CustomerAddress::find($id)->delete();
        return Redirect::to('user/address');
    }
}
