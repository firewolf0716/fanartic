<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    //
    public function __construct(){
        // parent::__construct();
    }
    public function dashboard_merchant(){
        return view('merchant.dashboard');
    }
}
