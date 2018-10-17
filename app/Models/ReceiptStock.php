<?php

namespace App\Models;

use DB;
use DateTime;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class ReceiptStock extends AppModel
{
    protected $table = 'receipt_stock';
    protected $primaryKey = 'id';

    public function skucolor(){
        return $this->belongsTo(ProductSKU::class, "product_sku_color_id");
    }

    public function skusize(){
        return $this->belongsTo(ProductSKU::class, "product_sku_size_id");
    }
}