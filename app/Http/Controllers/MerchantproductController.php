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
use App\ProductSKU;
use App\ProductStock;

use DB;
use Session;

class MerchantproductController extends Controller
{
    //
    public function __construct(){
        // parent::__construct();
    }
    public function merchant_product_add() {
        if (!Session::has('merchantid')) {
            return Redirect::to('merchant/signin?redirect=merchant/product/add');
        }
        $merchant_id = Session::get('merchantid');
        $merchants = Merchants::getMerchant($merchant_id);
        $merchant = $merchants[0];
        if($merchant->merchant_type == 1 || $merchant->merchant_type == 2){
            $brands = MerchantBrands::get_brands($merchant_id);
        } else {
            $brands = Brands::get_brands();
        }
        $sizeCategorys = Sizes::get_sizecategorys();
        $events = Events::get_events();
        $colors = Colors::get_colors();
        $productstates = ProductStates::get_productstates();

        return view('merchant.product.product_add')->with('merchant_id', $merchant_id)
            ->with('brands', $brands)
            ->with('sizeCategorys', $sizeCategorys)
            ->with('events', $events)
            ->with('colors', $colors)
            ->with('productstates', $productstates)
            ->with('merchant_id', $merchant_id)
            ->with('merchant', $merchant);
    }

    public function merchant_product_edit($id){
        $product = Products::get_product($id)->first();
        $merchant_id = Session::get('merchantid');
        $merchants = Merchants::getMerchant($merchant_id);
        $merchant = $merchants[0];
        if($merchant->merchant_type == 1 || $merchant->merchant_type == 2){
            $brands = MerchantBrands::get_brands($merchant_id);
        } else {
            $brands = Brands::get_brands();
        }
        $events = Events::get_events();
        $colors = Colors::get_colors();
        $productstates = ProductStates::get_productstates();
        $sizeCategorys = Sizes::get_sizecategorys();
        $categoryinfo = Categorys::get_category($product->product_category_id);
        $product_parents = $this->merchant_getparentprefers($product->product_category_id, $product->product_brand_id);
        $selectedColors = explode("/**/", $product->product_color);

        $main_category_id = Categorys::getMainCategoryID($id);
        $top_category_id = Categorys::getTopCategoryID($id)->category_id;

        return view('merchant.product.product_edit')->with('merchant_id', $merchant_id)
            ->with('brands', $brands)
            ->with('events', $events)
            ->with('colors', $colors)
            ->with('productstates', $productstates)
            ->with('merchant', $merchant)
            ->with('product_parents', $product_parents)
            ->with('sizeCategorys', $sizeCategorys)
            ->with('categoryinfo', $categoryinfo)
            ->with('product', $product)
            ->with('selectedColors', $selectedColors)
            ->with('top_category_id', $top_category_id)
            ->with('main_category_id', $main_category_id);
    }
    public function merchant_product_addpost(){
        Log::debug(Input::all());

        $strProductColors = '';
        if(Input::has('product_color')) {
            $product_colors = Input::get('product_color');
            foreach($product_colors as $product_color_id) {
                if ($strProductColors != '') {
                    $strProductColors .= '/**/';
                }
                $strProductColors .= $product_color_id;
            }
        }

        if (!Session::has('merchantid')) {
            return Redirect::to('merchant/signin');
        }
        $merchant_id = Session::get('merchantid');
        
        $entry =  array(
            'product_salemethod' => Input::get('product_salemethod'),
            'product_salerange' => Input::get('product_salerange'),
            'product_brand_id' => Input::get('product_brand'),
            'product_category_id' => Input::get('sub_category'),
            'product_event' => Input::get('product_event'),
            'product_code' => Input::get('product_code'),
            'product_name' => Input::get('product_name'),
            'product_name_kana' => Input::get('product_name_kana'),
            'product_name_detail' => Input::get('product_name_detail'),
            'product_price_sale' => Input::get('product_price_sale'),
            'product_price_ref' => Input::get('product_price_ref'),
            'product_price_law' => Input::get('product_price_law'),
            'product_taxflag' => Input::get('product_taxflag'),
            // 'product_image' => $filename_new_get,
            'product_old_status' => Input::get('product_old_status'),
            'product_color' => $strProductColors,
            'product_size_category_id' => Input::get('product_sizeCategory'),
            'product_weight' => Input::get('product_weight'),
            'product_season' => Input::get('product_season'),
            'product_place' => Input::get('product_place'),
            'product_material' => Input::get('product_material'),
            'product_memo' => Input::get('product_memo'),
            'product_status' => Input::get('product_status'),
            'product_create' => Input::get('create_date'),
            'product_update' => Input::get('update_date'),
            'product_parent_id' => Input::get('product_parent'),
            'product_merchant_id' => $merchant_id,
            'stock_type' => Input::get('stock_type'),
            'max_order_count' => Input::get('max_order_count'),
            'postage_type' => Input::get('postage_type'),
            'postage' => Input::get('postage'),
            'delivery_id' => Input::get('delivery_id'),
            'shipping_id' => Input::get('shipping_id')
        );
        $productid = Products::insert_product($entry);

        // SKU Color 1
        if(Input::has('product_color')) {
            $product_colors = Input::get('product_color');
            foreach($product_colors as $product_color_id) {
                $sku_info = array (
                    'product_id' => $productid,
                    'sku_type' => '1',
                    'sku_type_id' => $product_color_id,
                    'sku_status' => '1',
                    'sku_create' => Input::get('create_date'),
                    'sku_update' => Input::get('update_date'),
                    'product_merchant_id' => $merchant_id
                );
                ProductSKU::insert_sku($sku_info);
            }
        }

        // SKU Size 2
        $product_sizes = Sizes::get_sizes_with_category(Input::get('product_sizeCategory'));
        foreach($product_sizes as $product_size) {
            $sku_info = array (
                'product_id' => $productid,
                'sku_type' => '2',
                'sku_type_id' => $product_size->size_id,
                'sku_status' => '1',
                'sku_create' => Input::get('create_date'),
                'sku_update' => Input::get('update_date'),
                'product_merchant_id' => $merchant_id
            );
            ProductSKU::insert_sku($sku_info);
        }

        $product_sku_colors = ProductSKU::get_product_sku($productid, 1, $merchant_id);
        $product_sku_sizes = ProductSKU::get_product_sku($productid, 2, $merchant_id);

        // stock
        foreach($product_sku_colors as $product_sku_color) {
            foreach($product_sku_sizes as $product_sku_size) {
                $stock_info = array (
                    'product_id' => $productid,
                    'product_count_1' => '0',
                    'product_count_2' => '0',
                    'product_count_3' => '0',
                    'product_count_4' => '0',
                    'product_count_5' => '0',
                    'product_count_6' => '0',
                    'product_count_7' => '0',
                    'product_merchant_id' => $merchant_id,
                    'product_size_id' => '',
                    'product_color_id' => '',
                    'product_sku_size_id' => $product_sku_size->sku_id,
                    'product_sku_color_id' => $product_sku_color->sku_id,
                    'product_stock_create' => Input::get('create_date'),
                    'product_stock_update' => Input::get('update_date'),
                );
                ProductStock::insert_product_stock($stock_info);
            }
        }

        // master image
        $datenow = date('Y/m/d');
        $filename_new_get = '';
        $imgct = Input::get('proimg_ct');
        
        $masterImageCount = 0;
        for ($i = 1; $i <= $imgct; $i++) {
            $file_more = Input::file('product_img_' . $i);
            if ($file_more == null || $file_more == "") {
                continue;
            }
            $masterImageCount += 1;
            $file_more_name = $file_more->getClientOriginalName();
            $move_more_img = explode('.', $file_more_name);
            $filename_new = "master_image_" . $merchant_id . "_" . $productid . "_" . time() . '_' . $masterImageCount . "." . strtolower($file_more->getClientOriginalExtension());
            $newdestinationPath = './images/products/';
            $uploadSuccess_new = Input::file('product_img_' . $i)->move($newdestinationPath, $filename_new);
            // $filename_new_get .= $filename_new . "/**/";

            $entry =  array(
                'product_id' => $productid,
                'master_image_name' => $filename_new,
                'merchant_id' => $merchant_id,
                'master_image_create' => Input::get('create_date'),
                'master_image_update' => Input::get('update_date')
            );
            $master_image_id = Products::insert_master_image($entry);
            if(Input::has('product_color')) {
                $product_colors = Input::get('product_color');
                foreach($product_colors as $product_color_id) {
                    $entry =  array(
                        'product_id' => $productid,
                        'master_image_id' => $master_image_id,
                        'merchant_id' => $merchant_id,
                        'color_id' => $product_color_id,
                        'image_name' => '',
                        'image_create' => Input::get('create_date'),
                        'image_update' => Input::get('update_date')
                    );
                    Products::insert_image($entry);
                }
            }
        }

        return Redirect::to('merchant/product/manage')->with('product_status', 1);
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
        for ($i = 1; $i <= $imgct; $i++) {
            if(!Input::has('product_img_'.$i)){
                continue;
            }
            $file_more = Input::file('product_img_' . $i);
            $file_more_name = $file_more->getClientOriginalName();
            $move_more_img = explode('.', $file_more_name);
            $filename_new = $move_more_img[0] . str_random(8) . "." . strtolower($file_more->getClientOriginalExtension());
            $newdestinationPath = './images/products/';
            $uploadSuccess_new = Input::file('product_img_' . $i)->move($newdestinationPath, $filename_new);
            $filename_new_get .= $filename_new . "/**/";
        }

        $productid = Input::get('product_id');
        $merchant_id = Session::get('merchantid');

        $strProductColors = '';
        if(Input::has('product_color')) {
            $product_colors = Input::get('product_color');
            foreach($product_colors as $product_color_id) {
                if ($strProductColors != '') {
                    $strProductColors .= '/**/';
                }
                $strProductColors .= $product_color_id;
            }
        }

        $entry =  array(
            'product_salemethod' => Input::get('product_salemethod'),
            'product_salerange' => Input::get('product_salerange'),
            'product_brand_id' => Input::get('product_brand'),
            'product_category_id' => Input::get('sub_category'),
            'product_event' => Input::get('product_event'),
            'product_code' => Input::get('product_code'),
            'product_name' => Input::get('product_name'),
            'product_name_kana' => Input::get('product_name_kana'),
            'product_name_detail' => Input::get('product_name_detail'),
            'product_price_sale' => Input::get('product_price_sale'),
            'product_price_ref' => Input::get('product_price_ref'),
            'product_price_law' => Input::get('product_price_law'),
            'product_taxflag' => Input::get('product_taxflag'),
            // 'product_image' => $filename_new_get,
            'product_old_status' => Input::get('product_old_status'),
            'product_color' => $strProductColors,
            'product_size_category_id' => Input::get('product_sizeCategory'),
            'product_weight' => Input::get('product_weight'),
            'product_season' => Input::get('product_season'),
            'product_place' => Input::get('product_place'),
            'product_material' => Input::get('product_material'),
            'product_memo' => Input::get('product_memo'),
            'product_status' => Input::get('product_status'),
            'product_create' => Input::get('create_date'),
            'product_update' => Input::get('update_date'),
            'product_merchant_id' => $merchant_id,
            'stock_type' => Input::get('stock_type'),
            'max_order_count' => Input::get('max_order_count'),
            'postage_type' => Input::get('postage_type'),
            'postage' => Input::get('postage'),
            'delivery_id' => Input::get('delivery_id'),
            'shipping_id' => Input::get('shipping_id')
        );
        Products::edit_product($entry, $productid);
        return Redirect::to('merchant/product/manage')->with('product_status', 1);
    }
    public function merchant_product_manage() {
        $merchant_id = Session::get('merchantid');
        // Log::debug($merchant_id);
        $products = Products::get_products_manage($merchant_id, 1);
        return view('merchant.product.product_manage')->with('products', $products);
    }
    public function merchant_product_manage_with_status($product_status) {
        $merchant_id = Session::get('merchantid');
        
        // Log::debug($merchant_id);
        $products = Products::get_products_manage($merchant_id, $product_status);
        return $products;
    }
    public function merchant_product_sold(){
        $merchant_id = Session::get('merchantid');
        // Log::debug($merchant_id);
        $products = Products::get_products_manage($merchant_id, 5);
        return view('merchant.product.product_sold')->with('products', $products);
    }
    public function mer_product_details($id){

    }
    public function merchant_product_csvupload(){
        return view('merchant.product.product_csvupload');
    }
    public function mer_delete_product($id, $product_status){
        $product = Products::get_product($id)->first();
        
        // $imgFileNames = explode("/**/", $product->product_image, -1); 
        // $imgRootPath = "./images/products/";
        // for ($i = 0; $i < count($imgFileNames); $i++) {
        //     $imgPath = $imgRootPath.$imgFileNames[$i];
        //     if (file_exists($imgPath)) {
        //         unlink($imgPath);
        //     }
        // }

        Products::delete_product($id);
        return Redirect::to('merchant/product/manage')->with('product_status', $product_status);
    }
    public function merchant_getscategory($tcategory){
        $scategorys = Categorys::get_subcategorys($tcategory);
        return $scategorys;
    }
    
    public function merchant_getsizecategory($categoryid){
        // $categorys = Categorys::get_categorys($categoryid);
        // if(isset($categorys)){
        //     $category = $categorys[0];
        //     $sizeid = $category->category_size;
        //     $sizes = Sizes::get_sizebycategory($sizeid);
        //     return $sizes;
        // }
        
        $sizes = Sizes::get_sizebycategory($categoryid);
        return $sizes;
    }
    public function merchant_getparentprefers($categoryid, $brandid) {
        $merchant_id = Session::get('merchantid');
        $parents = Products::get_products_by_category($merchant_id, $categoryid, $brandid);
        return $parents;
    }

    public function product_import_csv(){

// return Input::all();
        // echo(Input::all());
        // return (Input::all());
    }

    public function merchant_product_edit_sku ($id) {
        return view('merchant.product.product_edit_sku')->with('merchant_id', '123');
    }
}
