<?php

namespace App;

use DB;
use Illuminate\Database\Eloquent\Model;

class ProductStock extends Model
{
    public static function insert_product_stock($entry) {
        $check_insert = DB::table('fan_product_stock_management')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function get($merchant_id) {
        DB::table('fan_product_stock_management')->where('product_merchant_id', $merchant_id)
                                            ->leftJoin('master_color', 'master_color.color_id', 'product_merchant_id.product_sku_color_id')
                                            ->leftJoin('master_size', 'master_size.color_id', 'product_merchant_id.product_sku_size_id')
                                            ->get();
    }

    public static function get_for_merchant($merchant_id) {
        DB::table('fan_product_stock_management')->where('product_merchant_id', $merchant_id)->get();
    }

    public static function get_for_product($product_id, $sku_color, $sku_size) {
        return DB::table('fan_product_stock_management')
            ->where('product_id', $product_id)
            ->where('product_sku_color_id', $sku_color)
            ->where('product_sku_size_id', $sku_size)
            ->get();
    }
    public static function get_product_sku_id($product_id) {
        return DB::table('fan_product_stock_management')
        ->where('product_id', $product_id)
        ->get();
    }
    public static function remove_stock($product_id, $sku_color, $sku_size) {
        return DB::table('fan_product_stock_management')
            ->where('product_id', $product_id)
            ->where('product_sku_color_id', $sku_color)
            ->where('product_sku_size_id', $sku_size)
            ->delete();
    }
    public static function get_price_range($product_id){
        $min = DB::table('fan_product_stock_management')->where('product_id', $product_id)->min('product_price_sale');
        $max = DB::table('fan_product_stock_management')->where('product_id', $product_id)->max('product_price_sale');
        $result = array();
        $result['min'] = $min;
        $result['max'] = $max;
        return $result;
    }
}
