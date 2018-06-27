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
use App\Events;
use App\Merchants;
use App\MerchantBrands;
use App\ProductStates;

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
        $merchants = Merchants::getMerchant($merchant_id);
        $merchant = $merchants[0];
        if($merchant->merchant_type == 1 || $merchant->merchant_type == 2){
            $brands = MerchantBrands::get_brands($merchant_id);
        } else 
            $brands = Brands::get_brands();
        $topcategorys = Categorys::get_topcategorys();
        $events = Events::get_events();
        $colors = Colors::get_colors();
        $productstates = ProductStates::get_productstates();
        return view('merchant.product.product_add')->with('merchant_id', $merchant_id)
            ->with('brands', $brands)
            ->with('topcategorys', $topcategorys)
            ->with('events', $events)
            ->with('colors', $colors)
            ->with('productstates', $productstates)
            ->with('merchant', $merchant);
    }
    public function merchant_product_edit($id){
        $product = Products::get_product($id)->first();
        $merchant_id = Session::get('merchantid');
        $merchants = Merchants::getMerchant($merchant_id);
        $merchant = $merchants[0];
        if($merchant->merchant_type == 1 || $merchant->merchant_type == 2){
            $brands = MerchantBrands::get_brands($merchant_id);
        } else 
            $brands = Brands::get_brands();
        $topcategorys = Categorys::get_topcategorys();
        $events = Events::get_events();
        $colors = Colors::get_colors();
        $productstates = ProductStates::get_productstates();

        $categorybranch = Categorys::get_category($product->product_category)->first()->category_branch;
        $parents = explode(',', $categorybranch);
        $tcategory = (string)$parents[0];
        $scategorys = $this->merchant_getscategory($tcategory);
        $scategory = (string)$parents[1];
        $rcategorys = $this->merchant_getscategory($parents[1]);

        $product_parents = $this->merchant_getparentprefers($product->product_category);

        return view('merchant.product.product_edit')->with('merchant_id', $merchant_id)
            ->with('brands', $brands)
            ->with('topcategorys', $topcategorys)
            ->with('events', $events)
            ->with('colors', $colors)
            ->with('productstates', $productstates)
            ->with('merchant', $merchant)
            ->with('tcategory', $tcategory)
            ->with('s_category', $scategory)
            ->with('scategorys', $scategorys)
            ->with('rcategorys', $rcategorys)
            ->with('product_parents', $product_parents)
            ->with('product', $product);
    }
    public function merchant_product_addpost(){
        Log::debug(Input::all());

        $datenow = date('Y/m/d');
        $filename_new_get = '';
        $imgct = Input::get('proimg_ct');
        for ($i = 0; $i < $imgct; $i++) {
            $file_more = Input::file('product_img_' . $i);
            $file_more_name = $file_more->getClientOriginalName();
            $move_more_img = explode('.', $file_more_name);
            $filename_new = $move_more_img[0] . str_random(8) . "." . strtolower($file_more->getClientOriginalExtension());
            $newdestinationPath = './public/images/products/';
            $uploadSuccess_new = Input::file('product_img_' . $i)->move($newdestinationPath, $filename_new);
            $filename_new_get .= $filename_new . "/**/";
        }

        $entry =  array(
            'product_salemethod' => Input::get('product_salemethod'),
            'product_salerange' => Input::get('product_salerange'),
            'product_brand' => Input::get('product_brand'),
            'product_category' => Input::get('product_category'),
            'product_parent' => Input::get('product_parent'),
            'product_event' => Input::get('product_event'),
            'product_code' => Input::get('product_code'),
            'product_name' => Input::get('product_name'),
            'product_name_kana' => Input::get('product_name_kana'),
            'product_name_detail' => Input::get('product_name_detail'),
            'product_price_sale' => Input::get('product_price_sale'),
            'product_price_ref' => Input::get('product_price_ref'),
            'product_price_law' => Input::get('product_price_law'),
            'product_taxflag' => Input::get('product_taxflag'),
            'product_image' => $filename_new_get,
            'product_old_status' => Input::get('product_old_status'),
            'product_color' => Input::get('product_color'),
            'product_size' => Input::get('product_size'),
            'product_size2' => Input::get('product_size2'),
            'product_weight' => Input::get('product_weight'),
            'product_season' => Input::get('product_season'),
            'product_place' => Input::get('product_place'),
            'product_material' => Input::get('product_material'),
            'product_memo' => Input::get('product_memo'),
            'product_status' => Input::get('product_status'),
            'product_create' => Input::get('create_date'),
            'product_update' => Input::get('update_date'),
            'product_merchant' => Input::get('merchant_id')
        );
        $productid = Products::insert_product($entry);
        return Redirect::to('merchant/product/edit/'.$productid);
    }
    public function merchant_product_editpost(){

        Log::debug(Input::all());

        $datenow = date('Y/m/d');
        $filename_new_get = '';

        for($j = 0; $j < 10; $j++){
            if(Input::has('existing_img_'.$j)){
                $prevfilename = Input::get('existing_img_'.$j);
                $filename_new_get .= $prevfilename . "/**/";
            }
        }

        $imgct = Input::get('proimg_ct');
        for ($i = 0; $i < $imgct; $i++) {
            if(!Input::has('product_img_'.$i)){
                continue;
            }
            $file_more = Input::file('product_img_' . $i);
            $file_more_name = $file_more->getClientOriginalName();
            $move_more_img = explode('.', $file_more_name);
            $filename_new = $move_more_img[0] . str_random(8) . "." . strtolower($file_more->getClientOriginalExtension());
            $newdestinationPath = './public/images/products/';
            $uploadSuccess_new = Input::file('product_img_' . $i)->move($newdestinationPath, $filename_new);
            $filename_new_get .= $filename_new . "/**/";
        }
        $productid = Input::get('product_id');
        $entry =  array(
            'product_salemethod' => Input::get('product_salemethod'),
            'product_salerange' => Input::get('product_salerange'),
            'product_brand' => Input::get('product_brand'),
            'product_category' => Input::get('product_category'),
            'product_parent' => Input::get('product_parent'),
            'product_event' => Input::get('product_event'),
            'product_code' => Input::get('product_code'),
            'product_name' => Input::get('product_name'),
            'product_name_kana' => Input::get('product_name_kana'),
            'product_name_detail' => Input::get('product_name_detail'),
            'product_price_sale' => Input::get('product_price_sale'),
            'product_price_ref' => Input::get('product_price_ref'),
            'product_price_law' => Input::get('product_price_law'),
            'product_taxflag' => Input::get('product_taxflag'),
            'product_image' => $filename_new_get,
            'product_old_status' => Input::get('product_old_status'),
            'product_color' => Input::get('product_color'),
            'product_size' => Input::get('product_size'),
            'product_size2' => Input::get('product_size2'),
            'product_weight' => Input::get('product_weight'),
            'product_season' => Input::get('product_season'),
            'product_place' => Input::get('product_place'),
            'product_material' => Input::get('product_material'),
            'product_memo' => Input::get('product_memo'),
            'product_status' => Input::get('product_status'),
            'product_create' => Input::get('create_date'),
            'product_update' => Input::get('update_date'),
            'product_merchant' => Input::get('merchant_id')
        );
        Products::edit_product($entry, $productid);
        return Redirect::to('merchant/product/edit/'.$productid);
    }
    public function merchant_product_manage(){
        $merchant_id = Session::get('merchantid');
        // Log::debug($merchant_id);
        $products = Products::get_products_manage($merchant_id);
        return view('merchant.product.product_manage')->with('products', $products);
    }
    public function merchant_product_sold(){
        
    }
    public function mer_product_details($id){

    }
    public function merchant_product_csvupload(){
        return view('merchant.product.product_csvupload');
    }
    public function mer_delete_product($id){
        Products::delete_product($id);
        return Redirect::to('merchant/product/manage');
    }
    public function merchant_getscategory($tcategory){
        $scategorys = Categorys::get_subcategorys($tcategory);
        return $scategorys;
    }
    public function merchant_getsizecategory($categoryid){
        $categorys = Categorys::get_category($categoryid);
        if(isset($categorys)){
            $category = $categorys[0];
            $sizeid = $category->category_size;
            $sizes = Sizes::get_sizebycategory($sizeid);
            return $sizes;
        }
    }
    public function merchant_getparentprefers($categoryid){
        $parents = Products::get_products_by_category($categoryid);
        return $parents;
    }
}
