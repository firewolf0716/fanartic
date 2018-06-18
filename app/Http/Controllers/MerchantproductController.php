<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Products;
use App\MerchantProducts;
use App\Brands;
use App\Categorys;
use App\Sizes;
use App\Colors;


use DB;
use Session;

class MerchantproductController extends Controller
{
    //
    public function __construct(){
        // parent::__construct();
    }
    public function merchant_product_add(){
        if (!Session::has('merchantid')) {
            return Redirect::to('merchant/login?redirect=merchant/product/add');
        }
        $merchant_id = Session::get('merchantid');
        $brands = Brands::get_brands();
        return view('merchant.product.product_add')->with('merchant_id', $merchant_id)
            ->with('brands', $brands);
    }
    public function mer_edit_product($id){

    }
    public function merchant_product_addpost(){

    }
    public function merchant_product_editpost(){

    }
    public function merchant_product_manage(){

    }
    public function merchant_product_sold(){

    }
    public function mer_product_details($id){

    }
    public function merchant_product_csvupload(){
        return view('merchant.product.product_csvupload');
    }
    public function mer_delete_product($id){
        Merchantproducts::delete_product($id);
        return Redirect::to('merchant_product_manage');
    }
}
