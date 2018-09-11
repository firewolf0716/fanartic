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
}
