<?php

namespace App\Models;

use DB;
use Illuminate\Database\Eloquent\Model;


class ProductStock extends AppModel
{
    protected $table = 'fan_product_stock_management';
    protected $primaryKey = 'product_stock_id';

    public function skucolor(){
        return $this->belongsTo(ProductSKU::class, "product_sku_color_id");
    }

    public function skusize(){
        return $this->belongsTo(ProductSKU::class, "product_sku_size_id");
    }
}
