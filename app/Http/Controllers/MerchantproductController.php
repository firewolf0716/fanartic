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
        $topCategorys = Categorys::getTopCategorys();

        return view('merchant.product.product_add')->with('merchant_id', $merchant_id)
            ->with('brands', $brands)
            ->with('sizeCategorys', $sizeCategorys)
            ->with('events', $events)
            ->with('colors', $colors)
            ->with('productstates', $productstates)
            ->with('merchant_id', $merchant_id)
            ->with('topCategorys', $topCategorys)
            ->with('merchant', $merchant);
    }

    public function merchant_product_edit($id){
        $product = Products::get_product($id);
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
        $categoryinfo = Categorys::get_category($id);
        $product_parents = $this->merchant_getparentprefers($product->product_category_id, $product->product_brand_id);
        $selectedColors = explode("/**/", $product->product_color);
        $selectedSizes = explode("/**/", $product->product_size);

        $main_category_id = Categorys::getMainCategoryID($product->product_category_id);
        $top_category_id = Categorys::getTopCategoryID($product->product_category_id);
        $master_images = Products::get_master_images($product->product_id);

        // $product_sizes = Sizes::get_sizes_with_category(Input::get('product_sizeCategory'));
        $product_size_id = Products::get_product_size_id($id);
        $product_stock_info = Products::get_product_stock_info($id)->first();
        $topCategorys = Categorys::getTopCategorys();

        $size_category = Sizes::get_size($selectedSizes[0])->size_category_id;
        $sizes = Sizes::get_sizes_with_category($size_category);

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
            ->with('sizes', $sizes)
            ->with('size_category', $size_category)
            ->with('selectedColors', $selectedColors)
            ->with('selectedSizes', $selectedSizes)
            ->with('top_category_id', $top_category_id)
            ->with('main_category_id', $main_category_id)
            ->with('master_images', $master_images)
            ->with('product_size_id', $product_size_id)
            ->with('product_stock_info', $product_stock_info)
            ->with('proimg_ct', count($master_images) + 1)
            ->with('topCategorys', $topCategorys);
    }
    public function merchant_product_addpost(){
        if (!Session::has('merchantid')) {
            return Redirect::to('merchant/signin');
        }
        $merchant_id = Session::get('merchantid');
        // product color string
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
        // product size string
        $strProductSizes = '';
        if(Input::has('product_size')) {
            $product_sizes = Input::get('product_size');
            foreach($product_sizes as $product_size_id) {
                if ($strProductSizes != '') {
                    $strProductSizes .= '/**/';
                }
                $strProductSizes .= $product_size_id;
            }
        }
        // Save fan product
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
            'product_taxflag' => Input::get('product_taxflag'),
            'product_old_status' => Input::get('product_old_status'),
            'product_color' => $strProductColors,
            'product_size' => $strProductSizes,
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
            'shipping_id' => Input::get('shipping_id'),
            'product_color_1' => Input::get('product_color_1')
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
        if(Input::has('product_size')) {
            $product_sizes = Input::get('product_size');
            foreach($product_sizes as $product_size_id) {
                $sku_info = array (
                    'product_id' => $productid,
                    'sku_type' => '2',
                    'sku_type_id' => $product_size_id,
                    'sku_status' => '1',
                    'sku_create' => Input::get('create_date'),
                    'sku_update' => Input::get('update_date'),
                    'product_merchant_id' => $merchant_id
                );
                ProductSKU::insert_sku($sku_info);
            }
        }

        $product_sku_colors = ProductSKU::get_product_sku($productid, 1, $merchant_id);
        $product_sku_sizes = ProductSKU::get_product_sku($productid, 2, $merchant_id);

        // stock
        foreach($product_sku_colors as $product_sku_color) {
            $storeCount = 0;
            if (Input::get('stock_type') == 1) {
                $storeCount = 1;
                if (Input::get('stock_count') != '') {
                    $storeCount = Input::get('stock_count');
                }
            }
            
            foreach($product_sku_sizes as $product_sku_size) {
                $stock_info = array (
                    'product_id' => $productid,
                    'product_count_1' => $storeCount,
                    'product_count_2' => 0,
                    'product_count_3' => 0,
                    'product_count_4' => 0,
                    'product_count_5' => 0,
                    'product_count_6' => 0,
                    'product_merchant_id' => $merchant_id,
                    'product_sku_size_id' => $product_sku_size->sku_id,
                    'product_sku_color_id' => $product_sku_color->sku_id,
                    'product_stock_create' => Input::get('create_date'),
                    'product_stock_update' => Input::get('update_date'),
                    'product_price_sale' => Input::get('product_price_sale'),
                    'product_price_ref' => Input::get('product_price_ref'),
                    'product_price_law' => Input::get('product_price_law')
                );
                ProductStock::insert_product_stock($stock_info);
            }
        }

        // master image
        $filename_new_get = '';
        $imgct = Input::get('proimg_ct');
        
        $masterImageCount = 0;
        for ($i = count($master_images) + 1; $i <= $imgct; $i++) {
            $file_more = Input::file('product_img_' . $i);
            if ($file_more == null || $file_more == "") {
                continue;
            }
            $masterImageCount += 1;
            $file_more_name = $file_more->getClientOriginalName();
            $move_more_img = explode('.', $file_more_name);
            $filename_new = "master_image_" . $merchant_id . "_" . $productid . "_" . time() . "_" . $masterImageCount . "." . strtolower($file_more->getClientOriginalExtension());
            $newdestinationPath = './images/products/';
            $uploadSuccess_new = $file_more->move($newdestinationPath, $filename_new);
            // $filename_new_get .= $filename_new . "/**/";

            $entry =  array(
                'product_id' => $productid,
                'master_image_name' => $filename_new,
                'merchant_id' => $merchant_id,
                'master_image_create' => Input::get('create_date'),
                'master_image_update' => Input::get('update_date')
            );
            $master_image_id = Products::insert_master_image($entry);

            // product images
            if(Input::has('product_color')) {
                $product_colors = Input::get('product_color');
                $image_name = '';
                if (Input::get('stock_type') == 1) {
                    $image_name = $filename_new;
                }

                foreach($product_colors as $product_color_id) {
                    $entry =  array(
                        'product_id' => $productid,
                        'master_image_id' => $master_image_id,
                        'merchant_id' => $merchant_id,
                        'color_id' => $product_color_id,
                        'image_name' => $image_name,
                        'image_create' => Input::get('create_date'),
                        'image_update' => Input::get('update_date')
                    );
                    Products::insert_image($entry);
                }
            }
        }

        if (Input::get('stock_type') == 1) {
            return Redirect::to('merchant/product/manage')->with('product_status', 1);
        } else {
            return $this->merchant_product_edit_sku($productid);
        }
    }
    public function merchant_product_editpost() {
        if (!Session::has('merchantid')) {
            return Redirect::to('merchant/signin');
        }
        $merchant_id = Session::get('merchantid');
        $productid = Input::get('product_id');
        $master_images = Products::get_master_images($productid);
        // Before info
        $current_product_info = Products::get_product($productid);
        $current_product_colors = explode('/**/', $current_product_info->product_color);
        $current_product_master_images = Products::get_master_images($productid);
        // $current_product_sizes = collect(Products::get_product_sizes($productid))->toArray();
        $current_product_sizes = explode('/**/', $current_product_info->product_size);
        // product color string
        $strProductColors = '';
        $product_colors = array();
        if(Input::has('product_color')) {
            $product_colors = Input::get('product_color');
            foreach($product_colors as $product_color_id) {
                if ($strProductColors != '') {
                    $strProductColors .= '/**/';
                }
                $strProductColors .= $product_color_id;
            }
        }
        // product size string
        $strProductSizes = '';
        $product_sizes = array();
        if(Input::has('product_size')) {
            $product_sizes = Input::get('product_size');
            foreach($product_sizes as $product_size_id) {
                if ($strProductSizes != '') {
                    $strProductSizes .= '/**/';
                }
                $strProductSizes .= $product_size_id;
            }
        }
        // Edit info
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
            'product_taxflag' => Input::get('product_taxflag'),
            'product_old_status' => Input::get('product_old_status'),
            'product_color' => $strProductColors,
            'product_size' => $strProductSizes,
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
            'shipping_id' => Input::get('shipping_id'),
            'product_color_1' => Input::get('product_color_1')
        );
        Products::edit_product($entry, $productid);

        $added_colors = array_diff($product_colors, $current_product_colors);
        $removed_colors = array_diff($current_product_colors, $product_colors);

        // Master Image Update
        $current_master_images = Products::get_master_images($productid);
        foreach ($current_master_images as $master_image) {
            $file_update = Input::file('product_image_' . $master_image->master_image_id);
            $uploadSuccess_new = '';
            // foreach($removed_colors as $product_color_id) {
            //     Products::delete_product_image($productid, $merchant_id, $product_color_id);
            // }

            $image_name = '';
            if (Input::get('stock_type') == 1) {
                $image_name = $master_image->master_image_name;
            }
            // add image for added new color
            foreach($added_colors as $product_color_id) {
                $entry =  array(
                    'product_id' => $productid,
                    'master_image_id' => $master_image->master_image_id,
                    'merchant_id' => $merchant_id,
                    'color_id' => $product_color_id,
                    'image_name' => $image_name,
                    'image_create' => Input::get('create_date'),
                    'image_update' => Input::get('update_date')
                );
                Products::insert_image($entry);
            }
            // update master image
            if ($file_update == null && $file_update == "") {
                continue;
            }
            $newdestinationPath = './images/products/';
            $uploadSuccess_new = $file_update->move($newdestinationPath, $master_image->master_image_name);
        }
        // Master Image Add
        $filename_new_get = '';
        $masterImageCount = 0;
        
        $imgct = Input::get('proimg_ct');
        $product_colors = Input::get('product_color');
        for ($i = count($master_images); $i <= $imgct; $i++) {
            $file_more = Input::file('product_img_' . $i);
            if ($file_more == null || $file_more == "") {
                continue;
            }
            $masterImageCount += 1;
            $file_more_name = $file_more->getClientOriginalName();
            $move_more_img = explode('.', $file_more_name);
            $filename_new = "master_image_" . $merchant_id . "_" . $productid . "_" . time() . $masterImageCount . "." . strtolower($file_more->getClientOriginalExtension());
            $newdestinationPath = './images/products/';
            $uploadSuccess_new = $file_more->move($newdestinationPath, $filename_new);

            $entry =  array(
                'product_id' => $productid,
                'master_image_name' => $filename_new,
                'merchant_id' => $merchant_id,
                'master_image_create' => Input::get('create_date'),
                'master_image_update' => Input::get('update_date')
            );
            $master_image_id = Products::insert_master_image($entry);

            // product images
            $image_name = '';
            
            if (Input::get('stock_type') == 1) {
                $image_name = $filename_new;
            }

            foreach($product_colors as $product_color_id) {
                $entry =  array(
                    'product_id' => $productid,
                    'master_image_id' => $master_image_id,
                    'merchant_id' => $merchant_id,
                    'color_id' => $product_color_id,
                    'image_name' => $image_name,
                    'image_create' => Input::get('create_date'),
                    'image_update' => Input::get('update_date')
                );
                Products::insert_image($entry);
            }
        }
        // delete master image for removed color
        $all_product_images = Products::get_images($productid);
        foreach ($all_product_images as $product_image) {
            if (in_array($product_image->color_id, $product_colors) == false) {
                Products::delete_product_image($productid, $merchant_id, $product_image->color_id);
            }
        }
        // add SKU Color 
        foreach($added_colors as $product_color_id) {
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
        // remove sku color
        foreach($removed_colors as $product_color_id) {
            ProductSKU::remove_SKU($productid, 1, $product_color_id);
        }
        // remove sku color
        $all_sku_color_items = ProductSKU::get_for_product($productid, 1);
        foreach ($all_sku_color_items as $sku_color) {
            if (in_array($sku_color->sku_type_id, $product_colors) == false) {
                ProductSKU::remove_SKU($productid, 1, $sku_color->sku_type_id);
            }
        }

        // $new_product_sizes = array();
        // if (Input::get('stock_type') == 1) {
        //     array_push($new_product_sizes, Input::get('product_size'));
        // } else {
        //     foreach($product_sizes as $product_size) {
        //         array_push($new_product_sizes, $product_size->size_id);
        //     }
        // }
        // $current_product_size_ids = array();
        // foreach($current_product_sizes as $current_product_size) {
        //     array_push($current_product_size_ids, $current_product_size->sku_type_id);
        // }
        // $new_product_size_ids = array();

        // foreach($new_product_sizes as $new_product_size) {
        //     array_push($new_product_size_ids, $new_product_size);
        // } 
        $added_sizes = array_diff($product_sizes, $current_product_sizes);
        $removed_sizes = array_diff($current_product_sizes, $product_sizes);
        foreach($added_sizes as $added_size) {
            $sku_info = array (
                'product_id' => $productid,
                'sku_type' => '2',
                'sku_type_id' => $added_size,
                'sku_status' => '1',
                'sku_create' => Input::get('create_date'),
                'sku_update' => Input::get('update_date'),
                'product_merchant_id' => $merchant_id
            );
            ProductSKU::insert_sku($sku_info);
        }
        foreach($removed_sizes as $removed_size) {
            ProductSKU::remove_SKU($productid, 2, $removed_size);
        }

        $all_sku_size_items = ProductSKU::get_for_product($productid, 2);
        foreach ($all_sku_size_items as $sku_size) {
            if (in_array($sku_size->sku_type_id, $product_sizes) == false) {
                ProductSKU::remove_SKU($productid, 2, $sku_color->sku_type_id);
            }
        }

        $product_sku_colors = ProductSKU::get_product_sku($productid, 1, $merchant_id);
        $product_sku_sizes = ProductSKU::get_product_sku($productid, 2, $merchant_id);

        // Edit stock info
        foreach($product_sku_colors as $product_sku_color) {
            $storeCount = 0;
            if (Input::get('stock_type') == 1) {
                $storeCount = 1;
                if (Input::get('stock_count') != '') {
                    $storeCount = Input::get('stock_count');
                }
            }

            foreach($product_sku_sizes as $product_sku_size) {
                $product_sku = ProductStock::get_for_product($productid, $product_sku_color->sku_id, $product_sku_size->sku_id);
                if (count($product_sku) == 0) {
                    $stock_info = array (
                        'product_id' => $productid,
                        'product_count_1' => $storeCount,
                        'product_count_2' => 0,
                        'product_count_3' => 0,
                        'product_count_4' => 0,
                        'product_count_5' => 0,
                        'product_count_6' => 0,
                        'product_merchant_id' => $merchant_id,
                        'product_sku_size_id' => $product_sku_size->sku_id,
                        'product_sku_color_id' => $product_sku_color->sku_id,
                        'product_stock_create' => Input::get('create_date'),
                        'product_stock_update' => Input::get('update_date'),
                        'product_price_sale' => Input::get('product_price_sale'),
                        'product_price_ref' => Input::get('product_price_ref'),
                        'product_price_law' => Input::get('product_price_law')
                    );
                    ProductStock::insert_product_stock($stock_info);
                }
            }
        }

        $stock_all_items = ProductStock::get_product_sku_id($productid);
        
        foreach ($stock_all_items as $stock_all_item) {
            $temp_product_sku_color = ProductSKU::get_sku($stock_all_item->product_sku_color_id);
            $temp_product_sku_size = ProductSKU::get_sku($stock_all_item->product_sku_size_id);
            
            if (count($temp_product_sku_color) == 0 || count($temp_product_sku_size) == 0) {
                ProductStock::remove_stock($productid, $stock_all_item->product_sku_color_id, $stock_all_item->product_sku_size_id);
            }
        }
        
        if (Input::get('stock_type') == 1) {
            return Redirect::to('merchant/product/manage')->with('product_status', 1);
        } else {
            return $this->merchant_product_edit_sku($productid);
        }
    }
    public function merchant_product_manage() {
        return $this->merchant_manage(1);
        // dd($this->merchant_product_manage_with_status(1));
    }
    public function merchant_product_sold(){
        return $this->merchant_manage(5);
    }
    public function merchant_manage($product_status) {
        return view('merchant.product.product_manage')->with('product_status', $product_status);
    }
    public function merchant_product_manage_with_status($product_status) {
        $merchant_id = Session::get('merchantid');
        $products = Products::get_products_manage($merchant_id, $product_status);
        
        foreach ($products as $product) {
            $master_images = Products::get_master_images($product->product_id);
            if (count($master_images) == 0) {
                $master_images = '';
            }
            $product->product_images = $master_images;
        }
        return $products;
    }
    
    public function mer_product_details($id){

    }
    public function merchant_product_csvupload(){
        return view('merchant.product.product_csvupload');
    }
    public function mer_delete_product($id, $product_status){
        $product = Products::get_product($id);
        
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
        //     $sizes = Sizes::get_sizes_with_category($sizeid);
        //     return $sizes;
        // }
        
        $sizes = Sizes::get_sizes_with_category($categoryid);
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
        $merchant_id = Session::get('merchantid');
        $product = Products::get_product($id);

        $selectedColors = explode("/**/", $product->product_color);
        $master_images = Products::get_master_images($id);
        $images = Array();
        foreach ($selectedColors as $selectedColor) {
            $image = array('color_name' => '');
            $color = Colors::get_color($selectedColor);
            $image['color_name'] = $color->color_name;
            $color_images = Array();
            foreach ($master_images as $master_image) {
                $color_image = Products::get_image($selectedColor, $master_image->master_image_id);
                array_push($color_images, $color_image);
            }

            $image['images'] = $color_images;
            array_push($images, $image);
        }
        
        $production_sku_infos = Products::get_product_stock_full_info($id);
        return view('merchant.product.product_edit_sku')->with('master_images', $master_images)
                                                        ->with('merchant_id', $merchant_id)
                                                        ->with('images', $images)
                                                        ->with('product_id', $id)
                                                        ->with('production_sku_infos', $production_sku_infos);
    }

    public function merchant_product_set_sku() {
        $product_id = Input::get('product_id');
        $merchant_id = Input::get('merchant_id');
        $product_images = Products::get_images($product_id);
        
        foreach ($product_images as $proruct_image) {
            $new_image = Input::file('product_image_' . $proruct_image->image_id);
            if ($new_image == null || $new_image == "") {
                continue;
            }

            $newdestinationPath = './images/products/';
            $newFileName = "product_image_" . strval($merchant_id) . "_" . strval($product_id) 
                    . "_" . strval($proruct_image->master_image_id) . "_" . strval($proruct_image->color_id) . "." . strtolower($new_image->getClientOriginalExtension());
            $uploadSuccess_new = $new_image->move($newdestinationPath, $newFileName);
            
            Products::set_image_path($proruct_image->image_id, $newFileName);
        }

        $production_sku_infos = Products::get_product_stock_info($product_id);
        foreach ($production_sku_infos as $production_sku_info) {
            $product_count = Input::get('product_count_' . $production_sku_info->product_stock_id);
            $product_count_endless = Input::get('product_count_endless_' . $production_sku_info->product_stock_id);
            $product_price_sale = Input::get('product_price_sale_' . $production_sku_info->product_stock_id);
            $product_price_ref = Input::get('product_price_ref_' . $production_sku_info->product_stock_id);
            $product_price_law = Input::get('product_price_law_' . $production_sku_info->product_stock_id);
            
            Products::set_stock_info($production_sku_info->product_stock_id, $product_count, $product_count_endless, $product_price_sale, $product_price_ref, $product_price_law);
        }

        return $this->merchant_manage(1);
    }
}
