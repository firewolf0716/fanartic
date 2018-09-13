<?php

namespace App\Http\Controllers\Customer;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;
use Session;

use App\Models\CustomerUser;
use App\Models\CustomerMagazine;

class MagazineController extends Controller
{
    public function magazine()
    {
        if (!Session::has('customerid')) {
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');

        $customer = CustomerUser::find($customerid);

        $mmg = $customer->magazine;
        if ($mmg == null) {
            $mmg = new CustomerMagazine();
            $mmg->customer_id = $customerid;
            $mmg->magazine_status = 0;
            $mmg->save();
        }

        $email = $customer->customer_email;

        return $this->layout_init(view('customer.user.magazine'), 1)
            ->with('email', $email)
            ->with('customerid', $customerid)
            ->with('mmg', $mmg);
    }

    public function magazine_post()
    {
        if (!Session::has('customerid')) {
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');
        $customer = CustomerUser::find($customerid);
        $mmg = $customer->magazine;
        $mmg->magazine_status = Input::get('status');
        $mmg->save();

        return Redirect::to('user/magazine');
    }
}
