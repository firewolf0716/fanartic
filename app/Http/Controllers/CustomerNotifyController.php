<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CustomerNotifyController extends Controller
{
    //
    public function add(){
        $merchant = array();
        return view('admin.notifyc.add');
    }
}
