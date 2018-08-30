<?php

namespace App;

use DB;
use Illuminate\Database\Eloquent\Model;

class ProductSKU extends AppModel
{
    public static function insert_sku($entry)
    {
        $check_insert = DB::table('fan_product_sku')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function get_product_sku($product_id, $sku_type, $merchant_id)
    {
        return DB::table('fan_product_sku')->where('product_id', $product_id)
            ->where('sku_type', $sku_type)
            ->where('product_merchant_id', $merchant_id)
            ->get();
    }

    public static function get_for_product($product_id, $type)
    {
        if ($type == 1) {
            return DB::table('fan_product_sku')
                ->where('product_id', $product_id)
                ->where('sku_type', $type)
                ->leftJoin('master_color', 'master_color.color_id', 'fan_product_sku.sku_type_id')
                ->get();
        } else if ($type == 2) {
            return DB::table('fan_product_sku')
                ->where('product_id', $product_id)
                ->where('sku_type', $type)
                ->leftJoin('master_size', 'master_size.size_id', 'fan_product_sku.sku_type_id')
                ->get();
        }
    }

    public static function remove_SKU($product_id, $type, $type_id)
    {
        return DB::table('fan_product_sku')->where('product_id', $product_id)
            ->where('sku_type', $type)
            ->where('sku_type_id', $type_id)->delete();
    }

    public static function update_sku_info($product_id, $sku_type, $sku_type_id, $new_sku_type_id, $update_date)
    {
        return DB::table('fan_product_sku')
            ->where('product_id', $product_id)
            ->where('sku_type', $sku_type)
            ->where('sku_type_id', $sku_type_id)
            ->update(['sku_type_id' => $new_sku_type_id,
                'updated_at' => $update_date]);
    }

    public static function remove_all_size_SKU($product_id)
    {
        return DB::table('fan_product_sku')->where('product_id', $product_id)
            ->where('sku_type', 2)->delete();
    }

    public static function get_sku($product_sku_id)
    {
        return DB::table('fan_product_sku')->where('sku_id', $product_sku_id)
            ->get();
    }

    public static function get_sku_info($product_id, $sku_type, $sku_type_id)
    {
        return DB::table('fan_product_sku')
            ->where('product_id', $product_id)
            ->where('sku_type', $sku_type)
            ->where('sku_type_id', $sku_type_id)
            ->get();
    }
}
