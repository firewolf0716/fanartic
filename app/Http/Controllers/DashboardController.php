<?php

namespace App\Http\Controllers;

use Session;

use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    //
    public function __construct(){
        // parent::__construct();
    }
    public function dashboard_merchant(){
        if (Session::has('merchantid')) {
            return view('merchant.dashboard');
        } else {
            return Redirect::to('signin?redirect=merchant_dashboard');
        }
    }
}
