<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MerchantNotifyController extends Controller
{
    //
    public function add(){
        $merchant = array();
        return view('admin.notifym.add');
    }
}
