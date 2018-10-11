<?php

namespace App\Services;

use App\Models\ProductStock;

class StockService
{
    public static function get_for_product($product_id, $sku_color, $sku_size) {
        return ProductStock::where('product_id', $product_id)
            ->where('product_sku_color_id', $sku_color)
            ->where('product_sku_size_id', $sku_size)
            ->first();
    }
    public static function get_product_sku_id($product_id) {
        return ProductStock::where('product_id', $product_id)->get();
    }
    public static function remove_stock($product_id, $sku_color, $sku_size) {
        return ProductStock::where('product_id', $product_id)
            ->where('product_sku_color_id', $sku_color)
            ->where('product_sku_size_id', $sku_size)
            ->delete();
    }
    public static function get_price_range($product_id){
        $min = ProductStock::where('product_id', $product_id)->min('product_price_sale');
        $max = ProductStock::where('product_id', $product_id)->max('product_price_sale');
        $result = array();
        $result['min'] = $min;
        $result['max'] = $max;
        return $result;
    }
}