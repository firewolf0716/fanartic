<?php

namespace App\Http\Controllers\Customer;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
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
        $customer = CustomerUser::find(Auth::id());

        $mmg = $customer->magazine;
        if ($mmg == null) {
            $mmg = new CustomerMagazine();
            $mmg->customer_id = Auth::id();
            $mmg->magazine_status = 0;
            $mmg->save();
        }

        $email = $customer->customer_email;

        return $this->layout_init(view('customer.user.magazine'), 1)
            ->with('email', $email)
            ->with('customerid', Auth::id())
            ->with('mmg', $mmg);
    }

    public function magazine_post()
    {
        $customer = CustomerUser::find(Auth::id());
        $mmg = $customer->magazine;
        $mmg->magazine_status = Input::get('status');
        $mmg->save();

        return Redirect::to('user/magazine');
    }
}
