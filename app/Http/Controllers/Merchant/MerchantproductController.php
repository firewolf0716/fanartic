<?php

namespace App\Http\Controllers\Merchant;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Products;
use App\Models\MerchantProducts;
use App\Models\Brands;
use App\Models\Categorys;
use App\Models\Sizes;
use App\Services\SizeService;
use App\Models\SizeCategory;
use App\Models\Colors;
use App\Models\Events;
use App\Models\Merchants;
use App\Models\MerchantBrands;
use App\Models\ProductStates;
use App\Models\ProductSKU;
use App\Models\ProductStock;
use App\Models\MerchantShipping;
use App\Models\ProductImage;
use App\Models\ProductMasterImage;
use App\Services\BrandService;
use App\Services\CategoryService;
use App\Services\SkuService;
use App\Services\MatchService;
use App\Services\StockService;
use DB;
use Session;

class MerchantproductController extends Controller
{
    //
    public function __construct()
    {
        // parent::__construct();
    }

    public function product_add()
    {
        $merchant = Merchants::find(Auth::id());
        if ($merchant->merchant_type == 1 || $merchant->merchant_type == 2) {
            $brands = MatchService::get_brands_merchant(Auth::id());
        } else {
            $brands = Brands::get();
        }
        $sizeCategorys = Sizes::get();
        $events = Events::get();
        $colors = Colors::get();
        $productstates = ProductStates::get();
        $topCategorys = CategoryService::getTopCategorys();
        $shippings = MerchantShipping::get_merchant_shippings(Auth::id());

        return view('merchant.product.product_add')->with('merchant_id', Auth::id())
            ->with('brands', $brands)
            ->with('sizeCategorys', $sizeCategorys)
            ->with('events', $events)
            ->with('colors', $colors)
            ->with('productstates', $productstates)
            ->with('merchant_id', Auth::id())
            ->with('topCategorys', $topCategorys)
            ->with('merchant', $merchant)
            ->with('shippings', $shippings);
    }

    public function product_edit($id)
    {
        $product = Products::get_product($id);
        $merchants = Merchants::find(Auth::id());
        $merchant = $merchants[0];
        if ($merchant->merchant_type == 1 || $merchant->merchant_type == 2) {
            $brands = MatchService::get_brands_merchant(Auth::id());
        } else {
            $brands = Brands::get();
        }
        $events = Events::get();
        $colors = Colors::get();
        $productstates = ProductStates::get();
        $sizeCategorys = Sizes::get();
        $categoryinfo = Categorys::find($id);
        $product_parents = $this->merchant_getparentprefers($product->product_category_id, $product->product_brand_id);
        $selectedColors = explode("/**/", $product->product_color);
        $selectedSizes = explode("/**/", $product->product_size);

        $main_category_id = CategoryService::getMainCategoryID($product->product_category_id);
        $top_category_id = CategoryService::getTopCategoryID($product->product_category_id);
        $master_images = Products::get_master_images($product->product_id);

        $product_size_id = Products::get_product_size_id($id);
        $product_stock_info = Products::get_product_stock_info($id)->first();
        $topCategorys = CategoryService::getTopCategorys();

        $size_category = Sizes::get_size($selectedSizes[0])->size_category_id;
        $sizes = SizeCategory::find($size_category)->sizes;

        $shippings = MerchantShipping::get_merchant_shippings(Auth::id());

        return view('merchant.product.product_edit')->with('merchant_id', Auth::id())
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
            ->with('shippings', $shippings)
            ->with('topCategorys', $topCategorys);
    }

    public function product_addpost()
    {
        // product color string
        $strProductColors = '';
        if (Input::has('product_color')) {
            $product_colors = Input::get('product_color');
            foreach ($product_colors as $product_color_id) {
                if ($strProductColors != '') {
                    $strProductColors .= '/**/';
                }
                $strProductColors .= $product_color_id;
            }
        }
        // product size string
        $strProductSizes = '';
        if (Input::has('product_size')) {
            $product_sizes = Input::get('product_size');
            foreach ($product_sizes as $product_size_id) {
                if ($strProductSizes != '') {
                    $strProductSizes .= '/**/';
                }
                $strProductSizes .= $product_size_id;
            }
        }
        // Save fan product
        $product = new Products();
        $product->product_salemethod = Input::get('product_salemethod');
        $product->product_salerange = Input::get('product_salerange');
        $product->product_brand_id = Input::get('product_brand');
        $product->product_category_id = Input::get('sub_category');
        $product->product_event = Input::get('product_event');
        $product->product_code = Input::get('product_code');
        $product->product_name = Input::get('product_name');
        $product->product_name_kana = Input::get('product_name_kana');
        $product->product_name_detail = Input::get('product_name_detail');
        $product->product_taxflag = Input::get('product_taxflag');
        $product->product_old_status = Input::get('product_old_status');
        $product->product_color = $strProductColors;
        $product->product_size = $strProductSizes;
        $product->product_weight = Input::get('product_weight');
        $product->product_season = Input::get('product_season');
        $product->product_place = Input::get('product_place');
        $product->product_material = Input::get('product_material');
        $product->product_memo = Input::get('product_memo');
        $product->product_status = Input::get('product_status');
        $product->product_parent_id = Input::get('product_parent');
        $product->product_merchant_id = Auth::id();
        $product->stock_type = Input::get('stock_type');
        $product->max_order_count = Input::get('max_order_count');
        $product->postage_type = Input::get('postage_type');
        $product->postage = Input::get('postage');
        $product->delivery_id = Input::get('delivery_id');
        $product->shipping_id = Input::get('shipping_id');
        $product->product_color_1 = Input::get('product_color_1');
        $product->save();

        $productid = $product->product_id;
        // SKU Color 1
        if (Input::has('product_color')) {
            $product_colors = Input::get('product_color');
            foreach ($product_colors as $product_color_id) {
                $sku = new ProductSKU();
                $sku->product_id = $productid;
                $sku->sku_type = '1';
                $sku->sku_type_id = $product_color_id;
                $sku->sku_status = '1';
                $sku->product_merchant_id = Auth::id();
                $sku->save();
            }
        }
        // SKU Size 2
        if (Input::has('product_size')) {
            $product_sizes = Input::get('product_size');
            foreach ($product_sizes as $product_size_id) {
                $sku = new ProductSKU();
                $sku->product_id = $productid;
                $sku->sku_type = '2';
                $sku->sku_type_id = $product_size_id;
                $sku->sku_status = '1';
                $sku->product_merchant_id = Auth::id();
                $sku->save();
            }
        }

        $product_sku_colors = SKUService::get_product_sku($productid, 1, Auth::id());
        $product_sku_sizes = SKUService::get_product_sku($productid, 2, $merchant_id);

        // stock
        foreach ($product_sku_colors as $product_sku_color) {
            $storeCount = 0;
            if (Input::get('stock_type') == 1) {
                $storeCount = 1;
                if (Input::get('stock_count') != '') {
                    $storeCount = Input::get('stock_count');
                }
            }

            foreach ($product_sku_sizes as $product_sku_size) {
                $productstock = new ProductStock();
                $productstock->product_id = $productid;
                $productstock->product_count = $storeCount;
                $productstock->product_merchant_id = $merchant_id;
                $productstock->product_sku_size_id = $product_sku_size->sku_id;
                $productstock->product_sku_color_id = $product_sku_color->sku_id;
                $productstock->product_price_sale = Input::get('product_price_sale');
                $productstock->product_price_ref = Input::get('product_price_ref');
                $productstock->product_price_law = Input::get('product_price_law');
                $productstock->save();
            }
        }

        // master image
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
            $filename_new = "master_image_" . $merchant_id . "_" . $productid . "_" . time() . "_" . $masterImageCount . "." . strtolower($file_more->getClientOriginalExtension());
            $newdestinationPath = './images/products/';
            $uploadSuccess_new = $file_more->move($newdestinationPath, $filename_new);
            // $filename_new_get .= $filename_new . "/**/";

            $entry = array(
                'product_id' => $productid,
                'master_image_name' => $filename_new,
                'merchant_id' => $merchant_id,
                'created_at' => Input::get('create_date'),
                'updated_at' => Input::get('update_date')
            );
            $master_image_id = Products::insert_master_image($entry);

            // product images
            if (Input::has('product_color')) {
                $product_colors = Input::get('product_color');
                $image_name = '';
                if (Input::get('stock_type') == 1) {
                    $image_name = $filename_new;
                }

                foreach ($product_colors as $product_color_id) {
                    $productimg = new ProductImage();
                    $productimg->product_id = $productid;
                    $productimg->merchant_id = $merchant_id;
                    $productimg->color_id = $product_color_id;
                    $productimg->image_name = $image_name;
                    $productimg->save();
                }
            }
        }

        if (Input::get('stock_type') == 1) {
            return Redirect::to('merchant/product/manage')->with('product_status', 1);
        } else {
            return $this->merchant_product_edit_sku($productid);
        }
    }

    public function product_editpost()
    {
        $merchant_id = Auth::id();
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
        if (Input::has('product_color')) {
            $product_colors = Input::get('product_color');
            foreach ($product_colors as $product_color_id) {
                if ($strProductColors != '') {
                    $strProductColors .= '/**/';
                }
                $strProductColors .= $product_color_id;
            }
        }
        // product size string
        $strProductSizes = '';
        $product_sizes = array();
        if (Input::has('product_size')) {
            $product_sizes = Input::get('product_size');
            foreach ($product_sizes as $product_size_id) {
                if ($strProductSizes != '') {
                    $strProductSizes .= '/**/';
                }
                $strProductSizes .= $product_size_id;
            }
        }
        // Edit info
        $product = Products::find($productid);
        $product->product_salemethod = Input::get('product_salemethod');
        $product->product_salerange = Input::get('product_salerange');
        $product->product_brand_id = Input::get('product_brand');
        $product->product_category_id = Input::get('sub_category');
        $product->product_event = Input::get('product_event');
        $product->product_code = Input::get('product_code');
        $product->product_name = Input::get('product_name');
        $product->product_name_kana = Input::get('product_name_kana');
        $product->product_name_detail = Input::get('product_name_detail');
        $product->product_taxflag = Input::get('product_taxflag');
        $product->product_old_status = Input::get('product_old_status');
        $product->product_color = $strProductColors;
        $product->product_size = $strProductSizes;
        $product->product_weight = Input::get('product_weight');
        $product->product_season = Input::get('product_season');
        $product->product_place = Input::get('product_place');
        $product->product_material = Input::get('product_material');
        $product->product_memo = Input::get('product_memo');
        $product->product_status = Input::get('product_status');
        $product->product_parent_id = Input::get('product_parent');
        $product->product_merchant_id = $merchant_id;
        $product->stock_type = Input::get('stock_type');
        $product->max_order_count = Input::get('max_order_count');
        $product->postage_type = Input::get('postage_type');
        $product->postage = Input::get('postage');
        $product->delivery_id = Input::get('delivery_id');
        $product->shipping_id = Input::get('shipping_id');
        $product->product_color_1 = Input::get('product_color_1');

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
            foreach ($added_colors as $product_color_id) {
                $productimg = new ProductImage();
                $productimg->product_id = $productid;
                $productimg->master_image_id = $master_image->master_image_id;
                $productimg->merchant_id = $merchant_id;
                $productimg->color_id = $product_color_id;
                $productimg->image_name = $image_name;
                $productimg->save();
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

            $productmimg = new ProductMasterImage();
            $productmimg->product_id = $productid;
            $productmimg->master_image_name = $filename_new;
            $productmimg->merchant_id = $merchant_id;
            $productmimg->save();
            $master_image_id = $productmimg->master_image_id;

            // product images
            $image_name = '';

            if (Input::get('stock_type') == 1) {
                $image_name = $filename_new;
            }

            foreach ($product_colors as $product_color_id) {
                $productimg = new ProductImage();
                $productimg->product_id = $productid;
                $productimg->merchant_id = $merchant_id;
                $productimg->color_id = $product_color_id;
                $productimg->image_name = $image_name;
                $productimg->save();
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
        foreach ($added_colors as $product_color_id) {
            $sku = new ProductSKU();
            $sku->product_id = $productid;
            $sku->sku_type = '1';
            $sku->sku_type_id = $product_color_id;
            $sku->sku_status = '1';
            $sku->product_merchant_id = $merchant_id;
            $sku->save();
        }
        // remove sku color
        foreach ($removed_colors as $product_color_id) {
            SkuService::remove_SKU($productid, 1, $product_color_id);
        }
        // remove sku color
        $all_sku_color_items = ProductSKU::SKUService($productid, 1);
        foreach ($all_sku_color_items as $sku_color) {
            if (in_array($sku_color->sku_type_id, $product_colors) == false) {
                SkuService::remove_SKU($productid, 1, $sku_color->sku_type_id);
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
        foreach ($added_sizes as $added_size) {
            $sku = new ProductSKU();
            $sku->product_id = $productid;
            $sku->sku_type = '2';
            $sku->sku_type_id = $added_size;
            $sku->sku_status = '1';
            $sku->product_merchant_id = $merchant_id;
            $sku->save();
        }
        foreach ($removed_sizes as $removed_size) {
            SkuService::remove_SKU($productid, 2, $removed_size);
        }

        $all_sku_size_items = SKUService::get_for_product($productid, 2);
        foreach ($all_sku_size_items as $sku_size) {
            if (in_array($sku_size->sku_type_id, $product_sizes) == false) {
                SkuService::remove_SKU($productid, 2, $sku_color->sku_type_id);
            }
        }

        $product_sku_colors = SKUService::get_product_sku($productid, 1, $merchant_id);
        $product_sku_sizes = SKUService::get_product_sku($productid, 2, $merchant_id);

        // Edit stock info
        foreach ($product_sku_colors as $product_sku_color) {
            $storeCount = 0;
            if (Input::get('stock_type') == 1) {
                $storeCount = 1;
                if (Input::get('stock_count') != '') {
                    $storeCount = Input::get('stock_count');
                }
            }

            foreach ($product_sku_sizes as $product_sku_size) {
                $product_sku = ProductStock::SKUService($productid, $product_sku_color->sku_id, $product_sku_size->sku_id);
                if (count($product_sku) == 0) {
                    $stock_info = new ProductStock();
                    $stock_info->product_id = $productid;
                    $stock_info->product_count = $storeCount;
                    $stock_info->product_merchant_id = $merchant_id;
                    $stock_info->product_sku_size_id = $product_sku_size->sku_id;
                    $stock_info->product_sku_color_id = $product_sku_color->sku_id;
                    $stock_info->product_price_sale = Input::get('product_price_sale');
                    $stock_info->product_price_ref = Input::get('product_price_ref');
                    $stock_info->product_price_law = Input::get('product_price_law');
                    $stock_info->save();
                } else {
                    $stock_info = new ProductStock();
                    $stock_info->product_count = $storeCount;
                    $stock_info->product_sku_size_id = $product_sku_size->sku_id;
                    $stock_info->product_sku_color_id = $product_sku_color->sku_id;
                    $stock_info->product_price_sale = Input::get('product_price_sale');
                    $stock_info->product_price_ref = Input::get('product_price_ref');
                    $stock_info->product_price_law = Input::get('product_price_law');
                    $stock_info->save();
                }
            }
        }

        $stock_all_items = StockService::get_product_sku_id($productid);

        foreach ($stock_all_items as $stock_all_item) {
            $temp_product_sku_color = ProductSKU::find($stock_all_item->product_sku_color_id);
            $temp_product_sku_size = ProductSKU::find($stock_all_item->product_sku_size_id);

            if (count($temp_product_sku_color) == 0 || count($temp_product_sku_size) == 0) {
                StockService::remove_stock($productid, $stock_all_item->product_sku_color_id, $stock_all_item->product_sku_size_id);
            }
        }

        if (Input::get('stock_type') == 1) {
            return Redirect::to('merchant/product/manage')->with('product_status', 1);
        } else {
            return $this->merchant_product_edit_sku($productid);
        }
    }

    public function product_manage()
    {
        return $this->manage(1);
        // dd($this->merchant_product_manage_with_status(1));
    }

    public function manage($product_status)
    {
        return view('merchant.product.product_store_manage')->with('product_status', $product_status);
    }

    public function product_manage_with_status($product_status)
    {
        $merchant_id = Auth::id();
        $products = Products::get_products_manage($merchant_id);

        foreach ($products as $product) {
            $master_images = Products::get_master_images($product->product_id);
            if (count($master_images) == 0) {
                $master_images = '';
            }
            $product->product_images = $master_images;
        }
        return $products;
    }

    public function product_csvupload()
    {
        return view('merchant.product.product_csvupload');
    }

    public function delete_product($id, $product_status)
    {
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

    public function getscategory($tcategory)
    {
        $scategorys = Categorys::get_subcategorys($tcategory);
        return $scategorys;
    }

    public function getsizecategory($categoryid)
    {
        $sizes = SizeCategory::find($categoryid)->sizes;
        return $sizes;
    }

    public function getparentprefers($categoryid, $brandid)
    {
        $merchant_id = Session::get('merchantid');
        $parents = Products::get_products_by_category($merchant_id, $categoryid, $brandid);
        return $parents;
    }

    public function product_import_csv()
    {

// return Input::all();
        // echo(Input::all());
        // return (Input::all());
    }

    public function product_edit_sku($id)
    {
        $merchant_id = Auth::id();
        $product = Products::get_product($id);

        $selectedColors = explode("/**/", $product->product_color);
        $images = Array();
        foreach ($selectedColors as $selectedColor) {
            $color_image = Products::get_image($product->product_id, $selectedColor);
            array_push($images, $color_image);
        }

        $production_sku_infos = Products::get_product_stock_full_info($id);
        return view('merchant.product.product_edit_sku')->with('merchant_id', $merchant_id)
            ->with('images', $images)
            ->with('product_id', $id)
            ->with('production_sku_infos', $production_sku_infos);
    }

    public function product_set_sku()
    {
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
                . "_" . strval($proruct_image->color_id) . "." . strtolower($new_image->getClientOriginalExtension());
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

        return $this->manage(1);
    }

    public function accept_pay_shipping_delivery($id)
    {
        Products::set_product_status($id, '3');
    }

    public function decline_pay_shipping_delivery($id)
    {
        Products::set_product_status($id, '1');
    }

    public function accept_sold_product($id)
    {
        Products::set_product_status($id, '4');
    }

    public function remove_solded_product($id)
    {
        Products::set_product_status($id, '5');
    }

    public function importProductFromCSV()
    {
        $merchant_id = Auth::id();
        if ($merchant_id == 0) {
            return Redirect::to('merchant/signin');
        }

        $csv_file = Input::file('csv_file');
        if ($csv_file == null || $csv_file == "") {
            return Redirect::to('merchant/product/manage');
        }

        // $filename_new = "merchant_product_csv_" . time() . "." . strtolower($csv_file->getClientOriginalExtension());
        $filename_new = "merchant_product_csv_" . $merchant_id . "." . strtolower($csv_file->getClientOriginalExtension());
        $newdestinationPath = './csv/';
        $uploadSuccess_new = $csv_file->move($newdestinationPath, $filename_new);

        $importProductCount = 0;
        if (($handle = fopen($uploadSuccess_new, 'r')) !== FALSE) {
            while (($data = fgetcsv($handle, 1000, ',')) !== FALSE) {
                $importProductCount += 1;
                if ($importProductCount == 1) {
                    continue;
                }
                $product_code = $data[6];
                if (Products::is_registered_product($merchant_id, $product_code) != 0) {
                    continue;
                }
                // product color string
                $product_colors = array();
                $tmpColors = explode('/**/', $data[25]);
                $strProductColors = '';
                foreach ($tmpColors as $tmpColor) {
                    if ($strProductColors != '') {
                        $strProductColors .= '/**/';
                    }
                    $tmpColor = SkuService::get_color_with_name($tmpColor);
                    if (count($tmpColor) == 0) {
                        continue;
                    }
                    $tmpColorId = $tmpColor->color_id;
                    array_push($product_colors, $tmpColorId);
                    $strProductColors .= $tmpColorId;
                }

                $product_sizes = array();
                $tmpSizes = explode('/**/', $data[26]);
                $strProductSizes = '';
                if (count($tmpSizes) == 0) {
                    continue;
                }
                foreach ($tmpSizes as $tmpSize) {
                    if ($strProductSizes != '') {
                        $strProductSizes .= '/**/';
                    }
                    $tmpSizeId = SizeService::get_size_id($tmpSize);
                    array_push($product_sizes, $tmpSizeId);
                    $strProductSizes .= $tmpSizeId;
                }

                $product_salemethod = 0;
                if ($data[0] == '通常') {
                    $product_salemethod = 1;
                }
                $product_salerange = $data[1];
                $product_brand_id = BrandService::get_brand_id($data[2]);
                $product_category_id = CategoryService::get_category_id($data[3], $data[4], $data[5]);

                $product_event = '';
                $product_old_status = 0;
                if ($data[24] == 'B') {
                    $product_old_status = 5;
                }
                $product_parent = '';
                $stock_type = 1;
                $max_order_count = 1;
                $postage_type = 0;
                $postage = '';
                $delivery_id = 1;
                $shipping_id = 0;
                $product_color_1 = 1;
                $current_date = date("Y/m/d H:i:s");

                // Save fan product
                $product = new Products();
                $product->product_salemethod = $product_salemethod;
                $product->product_salerange = $product_salerange;
                $product->product_brand_id = $product_brand_id;
                $product->product_category_id = $product_category_id;
                $product->product_event = $product_event;
                $product->product_code = $product_code;
                $product->product_name = $data[7];
                $product->product_name_kana = $data[8];
                $product->product_name_detail = $data[9];
                $product->product_taxflag = $data[13];
                $product->product_old_status = $product_old_status;
                $product->product_color = $strProductColors;
                $product->product_size = $strProductSizes;
                $product->product_weight = $data[28];
                $product->product_season = $data[29];
                $product->product_place = $data[30];
                $product->product_material = $data[31];
                $product->product_memo = $data[32];
                $product->product_status = $data[33];
                $product->product_parent_id = $product_parent;
                $product->product_merchant_id = $merchant_id;
                $product->stock_type = $stock_type;
                $product->max_order_count = $max_order_count;
                $product->postage_type = $postage_type;
                $product->postage = $postage;
                $product->delivery_id = $delivery_id;
                $product->shipping_id = $data[34];
                $product->product_color_1 = $product_color_1;
                $product->save();
                $productid = $product->product_id;
                // SKU Color 1
                foreach ($product_colors as $product_color_id) {
                    $sku = new ProductSKU();
                    $sku->product_id = $productid;
                    $sku->sku_type = '1';
                    $sku->sku_type_id = $product_color_id;
                    $sku->sku_status = '1';
                    $sku->product_merchant_id = $merchant_id;
                    $sku->save();
                }

                // SKU Size 2
                foreach ($product_sizes as $product_size_id) {
                    $sku = new ProductSKU();
                    $sku->product_id = $productid;
                    $sku->sku_type = '2';
                    $sku->sku_type_id = $product_size_id;
                    $sku->sku_status = '1';
                    $sku->product_merchant_id = $merchant_id;
                    $sku->save();
                }

                $product_sku_colors = SKUService::get_product_sku($productid, 1, $merchant_id);
                $product_sku_sizes = SKUService::get_product_sku($productid, 2, $merchant_id);

                // stock
                foreach ($product_sku_colors as $product_sku_color) {
                    $storeCount = 0;
                    if ($stock_type == 1) {
                        $storeCount = 1;
                    }

                    foreach ($product_sku_sizes as $product_sku_size) {
                        $stock_info = new ProductStock();
                        $stock_info->product_id = $productid;
                        $stock_info->product_count = $storeCount;
                        $stock_info->product_merchant_id = $merchant_id;
                        $stock_info->product_sku_size_id = $product_sku_size->sku_id;
                        $stock_info->product_sku_color_id = $product_sku_color->sku_id;
                        $stock_info->product_price_sale = $data[10];
                        $stock_info->product_price_ref = $data[11];
                        $stock_info->product_price_law = $data[12];
                        $stock_info->save();
                    }
                }

                // master image
                $filename_new_get = '';
                for ($masterImageCount = 14; $masterImageCount < 24; $masterImageCount++) {
                    $filename_new = $data[$masterImageCount];
                    if ($filename_new == "") {
                        continue;
                    }

                    $productmimg = new ProductMasterImage();
                    $productmimg->product_id = $productid;
                    $productmimg->master_image_name = $filename_new;
                    $productmimg->merchant_id = $merchant_id;
                    $productmimg->save();
                    $master_image_id = $productmimg->master_image_id;

                    $image_name = '';
                    if ($stock_type == 1) {
                        $image_name = $filename_new;
                    }

                    foreach ($product_colors as $product_color_id) {
                        $productimg = new ProductImage();
                        $productimg->product_id = $productid;
                        $productimg->merchant_id = $merchant_id;
                        $productimg->color_id = $product_color_id;
                        $productimg->image_name = $image_name;
                        $productimg->save();
                    }
                }
            }

            fclose($handle);
        }
        return Redirect::to('merchant/product/manage')->with('product_status', 1);

        // if ($stock_type == 1) {
        //     return Redirect::to('merchant/product/manage')->with('product_status', 1);
        // } else {
        //     return $this->merchant_product_edit_sku($productid);
        // }
    }

    public function product_cash_on_delivery()
    {
        $merchant_id = Auth::id();
        // $cashProducts = Products::get_cash_on_delivery_products($merchant_id);
        $cashProducts = Products::get_products_search($merchant_id, '2', '', '', '', '0', '');

        return view('merchant.product.product_cash_on_delivery')->with('merchant_id', $merchant_id)
            ->with('cashProducts', $cashProducts)
            ->with('product_status', '2')
            ->with('free_word', '')
            ->with('min_price', '')
            ->with('max_price', '')
            ->with('duration_setting', '0')
            ->with('duration_range', '');
    }

    public function product_shipping()
    {
        $merchant_id = Auth::id();
        $cashProducts = Products::get_products_search($merchant_id, '3', '', '', '', '0', '');

        return view('merchant.product.product_shipping')->with('merchant_id', $merchant_id)
            ->with('cashProducts', $cashProducts)
            ->with('product_status', '3')
            ->with('free_word', '')
            ->with('min_price', '')
            ->with('max_price', '')
            ->with('duration_setting', '0')
            ->with('duration_range', '');
    }

    public function product_sold()
    {
        $merchant_id = Auth::id();
        $cashProducts = Products::get_products_search($merchant_id, '4', '', '', '', '0', '');

        return view('merchant.product.product_sold')->with('merchant_id', $merchant_id)
            ->with('cashProducts', $cashProducts)
            ->with('product_status', '4')
            ->with('free_word', '')
            ->with('min_price', '')
            ->with('max_price', '')
            ->with('duration_setting', '0')
            ->with('duration_range', '');
    }

    public function search()
    {
        $merchant_id = Auth::id();
        if ($merchant_id == 0) {
            return Redirect::to('merchant/signin');
        }

        $product_status = '2';
        $free_word = '';
        $min_price = '';
        $max_price = '';
        $duration_setting = '0';
        $duration_range = '';

        if (Input::has('product_status')) {
            $product_status = Input::get('product_status');
        }
        if (Input::has('free_word')) {
            $free_word = Input::get('free_word');
        }
        if (Input::has('min_price')) {
            $min_price = Input::get('min_price');
        }
        if (Input::has('max_price')) {
            $max_price = Input::get('max_price');
        }
        if (Input::has('duration_setting')) {
            $duration_setting = Input::get('duration_setting');
        }
        if (Input::has('duration_range')) {
            $duration_range = Input::get('duration_range');
        }

        $cashProducts = Products::get_products_search($merchant_id, $product_status, $free_word, $min_price, $max_price, $duration_setting, $duration_range);

        if ($product_status == '2') {
            return view('merchant.product.product_cash_on_delivery')->with('merchant_id', $merchant_id)
                ->with('cashProducts', $cashProducts)
                ->with('product_status', $product_status)
                ->with('free_word', $free_word)
                ->with('min_price', $min_price)
                ->with('max_price', $max_price)
                ->with('duration_setting', $duration_setting)
                ->with('duration_range', $duration_range);
        } else {
            return;
        }
    }

    public function showUpdateProductCount()
    {
        return view('merchant.product.product_csvupdate');
    }

    public function updateProductCountFromCSV()
    {
        $merchant_id = Auth::id();
        if ($merchant_id == 0) {
            return Redirect::to('merchant/signin');
        }

        $csv_file = Input::file('csv_file');
        if ($csv_file == null || $csv_file == "") {
            return Redirect::to('merchant/product/manage');
        }

        $filename_new = "merchant_product_count_csv_" . time() . "." . strtolower($csv_file->getClientOriginalExtension());
        $newdestinationPath = './csv/';
        $uploadSuccess_new = $csv_file->move($newdestinationPath, $filename_new);

        $importProductCount = 0;
        if (($handle = fopen($uploadSuccess_new, 'r')) !== FALSE) {
            while (($data = fgetcsv($handle, 1000, ',')) !== FALSE) {
                $importProductCount += 1;
                if ($importProductCount == 1) {
                    continue;
                }
                $product_code = $data[0];
                $product_count = $data[1];
                $product_color = $data[2];
                $product_size = $data[3];
                $product_id = Products::is_registered_product($merchant_id, $product_code);
                if ($product_id == 0) {
                    continue;
                }

                Products::update_product_count($merchant_id, $product_id, $product_color, $product_size, $product_count);
            }

            fclose($handle);
        }
        return Redirect::to('merchant/product/manage')->with('product_status', 1);
    }

    // public function gotoMerchantSearch($product_status, $free_word, $min_price, $max_price, $duration_setting, $duration_range) {
    //     $merchant_id = $this->get_merchant_session_id();
    //     if ($merchant_id == 0) {
    //         return Redirect::to('merchant/signin');
    //     }

    //     $products = Products::get_products_search($merchant_id, $product_status, $free_word, $min_price, $max_price, $duration_setting, $duration_range);

    //     foreach ($products as $product) {
    //         $master_images = Products::get_master_images($product->product_id);
    //         if (count($master_images) == 0) {
    //             $master_images = '';
    //         }
    //         $product->product_images = $master_images;
    //     }

    //     return Redirect::to('merchant/product/manage')->with('product_status', $product_status)
    //                                                 ->with('free_word', $free_word)
    //                                                 ->with('min_price', $min_price)
    //                                                 ->with('max_price', $max_price)
    //                                                 ->with('duration_setting', $duration_setting)
    //                                                 ->with('duration_range', $duration_range)
    //                                                 ->with('products', $products);
    // }


}
