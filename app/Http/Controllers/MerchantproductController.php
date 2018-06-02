<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;

class MerchantproductController extends Controller
{
    //
    public function __construct(){
        // parent::__construct();
    }
    public function merchant_product_add(){
        $productcategory    = Products::get_product_category();
        return view('merchant.product.product_add')->with('productcategory', $productcategory);
    }
    public function merchant_product_manage(){
        return view('merchant.product.product_manage');
    }
    public function merchant_product_sold(){
        return view('merchant.product.product_sold');
    }
    public function merchant_product_csvupload(){
        return view('merchant.product.product_csvupload');
    }
}
