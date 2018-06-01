<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MerchantproductController extends Controller
{
    //
    public function __construct(){
        // parent::__construct();
    }
    public function merchant_product_add(){
        return view('merchant.product.product_add');
    }
}
