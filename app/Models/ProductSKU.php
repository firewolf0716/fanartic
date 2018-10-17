<?php

namespace App\Models;

use DB;

class ProductSKU extends AppModel
{
    protected $table = 'fan_product_sku';
    protected $primaryKey = 'sku_id';

    public function color(){
        return $this->belongsTo(Colors::class, "sku_type_id");
    }

    public function size(){
        return $this->belongsTo(Sizes::class, "sku_type_id");
    }

    public static function get_product_sizes($product_id)
    {
        return ProductSKU::where('product_id', $product_id)
            ->where('sku_type', '2')
            ->get();
    }

    public static function get_product_size_id($id)
    {
        $product_size_id = ProductSKU::where('product_id', $id)
            ->where('sku_type', 2)
            ->first()->sku_type_id;
        return $product_size_id;
    }
}
