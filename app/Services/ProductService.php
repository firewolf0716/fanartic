<?php

namespace App\Services;

use DB;
use App\Models\Brands;
use App\Models\Products;
use App\Models\ProductStock;
use App\Models\Receipts;
use App\Services\CategoryService;

class ProductService
{
    public static function getByCode($code) {
        $product = Products::where('product_code', $code);
        if(empty($product->id)) return false;
        return $product;
    }

    public static function get_product_filter_mall($mallid, $brandid, $categorylevel, $category_id, $size, $color, $rangemin, $rangemax, $filterdate)
    {
        if (is_null($brandid))
            if(empty($filterdate))
                $filtered_products = Products::get();
            else
                $filtered_products = Products::orderBy('fan_product.created_at', 'desc')->get();
        else
            $filtered_products = Brands::find($brandid)->products;

        if ($categorylevel == 1 || $categorylevel == 2) {
            $categories = CategoryService::getSubCategorys_mall_fromtop($mallid, $category_id);
            $arrCategories = array();
            foreach ($categories as $category) {
                array_push($arrCategories, $category->category_id);
            }
            $filtered_products = $filtered_products->whereIn('product_category_id', $arrCategories);
        } else if ($categorylevel == 3)
            $filtered_products = $filtered_products->where('product_category_id', $category_id);

        if (isset($color) && !empty($color)) {
            $colors = explode(',', $color);
            unset($colors[sizeof($colors) - 1]);
            $filtered_products = $filtered_products
                            ->whereIn('stocks.skucolor.sku_type_id', $colors);
        }
        if (isset($size) && !empty($size)) {
            $sizes = explode(',', $size);
            unset($sizes[sizeof($sizes) - 1]);
            $filtered_products = $filtered_products
                            ->whereIn('stocks.skusize.sku_type_id', $colors);
        }

        if (isset($rangemin) && !empty($rangemin))
            $filtered_products = $filtered_products
                            ->where('stocks.product_price_sale', '>=', $rangemin);

        if (isset($rangemax) && !empty($rangemax) && $rangemax != '500000')
            $filtered_products = $filtered_products
                            ->where('stocks.product_price_sale', '<=', $rangemax);
        if( !empty($filterdate)){
             $today = date("Y-m-d");
            if ( $filterdate == 'today') {
                    $filtered_products = $filtered_products->where('fan_product.created_at', 'like', $today."%");
            } elseif($filterdate == "week"){
                    $week_ago = date('Y-m-d', strtotime('-1 week'));
                    $filtered_products = $filtered_products->where('fan_product.created_at', '<=', $today."%")
                                ->where('fan_product.created_at', '>=', $week_ago."%");
            }
        }

        return $filtered_products;
    }

    public static function get_product_stock_full_info($product_id)
    {
        $output = array();
        $stocks = Products::find($product_id)->stocks;
        foreach ($stocks as $stock) {
            $stock->color_name = Colors::find($stock->skucolor->sku_type_id)->color_name;
            $stock->size_name = Sizes::find($stock->skusize->sku_type_id)->size_name;
            $output[] = $stock;            
        }
        return $output;
    }

    public static function update_product_count($merchant_id, $product_id, $product_color, $product_size, $product_count)
    {
        $stocks = Products::find($product_id)->stocks;
        foreach ($stocks as $stock) {
            $color_name = $stock->skucolor->color->color_name;
            $size_name = $stock->skusize->size->size_name;
            if ($color_name == $product_color && $size_name == $product_size) 
                $product_stock_id = $stock->product_stock_id;
        }
        $result = ProductStock::where('product_stock_id', $product_stock_id)
            ->update(['product_count' => $product_count]);
        return $result;
    }

    public static function get_products_search($merchant_id, $product_status, $free_word, $min_price, $max_price, $duration_setting, $duration_range)
    {
        $receipts = Receipts::get_receipt_from_merchant_status($merchant_id, $product_status);
        return $receipts;
    }
}
