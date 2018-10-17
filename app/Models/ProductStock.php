<?php

namespace App\Models;

use DB;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int product_stock_id
 * @property int product_id
 * @property int product_count
 * @property int product_merchant_id
 * @property int product_sku_color_id
 * @property int product_sku_size_id
 * @property double product_price_sale
 * @property double product_price_ref
 * @property double product_price_law
 * @property int product_count_endless
 * @property string created_at
 * @property string updated_at
 * @property string deleted_at
 */
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

    public static function get_product_stock_info($product_id)
    {
        return ProductStock::where('product_id', $product_id)->get();
        return $stocks;
    }

    public static function set_stock_info($product_stock_id, $product_count, $product_count_endless, $product_price_sale, $product_price_ref, $product_price_law)
    {
        return ProductStock::where('product_stock_id', $product_stock_id)
            ->update(['product_count' => $product_count,
                'product_count_endless' => $product_count_endless,
                'product_price_sale' => $product_price_sale,
                'product_price_ref' => $product_price_ref,
                'product_price_law' => $product_price_law]);
    }
}
