<?php

namespace App\Services;

use Session;
use Hash;

use App\Models\Sizes;
use App\Models\Colors;
use App\Models\ProductSKU;

class SkuService
{
    public static function get_color_with_name($color_name) {
        return Colors::where('color_name', $color_name)->first();
    }
    public static function remove_SKU($product_id, $type, $type_id)
    {
        return ProductSKU::where('product_id', $product_id)->where('sku_type', $type)->where('sku_type_id', $type_id)->delete();
    }
    public static function get_product_sku($product_id, $sku_type, $merchant_id)
    {
        return ProductSKU::where('product_id', $product_id)
            ->where('sku_type', $sku_type)
            ->where('product_merchant_id', $merchant_id)
            ->get();
    }

    public static function get_for_product($product_id, $type)
    {
        if ($type == 1) {
            return ProductSKU::where('product_id', $product_id)
                ->where('sku_type', $type)
                ->leftJoin('master_color', 'master_color.color_id', 'fan_product_sku.sku_type_id')
                ->get();
        } else if ($type == 2) {
            return ProductSKU::where('product_id', $product_id)
                ->where('sku_type', $type)
                ->leftJoin('master_size', 'master_size.size_id', 'fan_product_sku.sku_type_id')
                ->get();
        }
    }
}