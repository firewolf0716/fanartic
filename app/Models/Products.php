<?php

namespace App\Models;

use DB;
use File;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;

use App\Services\CategoryService;

/**
 * @property int product_id
 * @property string product_salemethod
 * @property string product_salerange
 * @property int product_brand_id
 * @property int product_category_id
 * @property string product_event
 * @property string product_code
 * @property string product_name
 * @property string product_name_kana
 * @property string product_name_detail
 * @property string product_taxflag
 * @property string product_old_status
 * @property string product_color
 * @property string product_size_category_id
 * @property string product_weight
 * @property string product_season
 * @property string product_place
 * @property string product_material
 * @property string product_memo
 * @property string product_status
 * @property int product_merchant_id
 * @property int product_parent_id
 * @property int stock_type
 * @property int max_order_count
 * @property int postage_type
 * @property int postage
 * @property int delivery_id
 * @property int shipping_id
 * @property int product_size_id
 * @property string product_ca
 * @property string product_color_1
 * @property string product_size
 * @property string created_at
 * @property string updated_at
 * @property string deleted_at
 */

class Products extends AppModel
{
    //new code
    protected $guarded = array('id');
    protected $table = 'fan_product';
    protected $primaryKey = 'product_id';

    public function brand()
    {
        return $this->belongsTo(Brands::class, "product_brand_id");
    }

    public function category()
    {
        return $this->belongsTo(Categorys::class, "product_category_id");
    }

    public function stocks()
    {
        return $this->hasMany(ProductStock::class, "product_id");
    }

    public function priceRange()
    {
        $min = ProductStock::where('product_id', $this->product_id)->min('product_price_sale');
        $max = ProductStock::where('product_id', $this->product_id)->max('product_price_sale');
        $result = array();
        $result['min'] = $min;
        $result['max'] = $max;
        return $result;
    }

    public function masterImages()
    {
        return $this->hasMany(ProductMasterImage::class, "product_id");
    }

    public static function get_products_by_category($merchant_id, $category_id, $brand_id)
    {
        return DB::table('fan_product')->where('product_merchant_id', $merchant_id)
            ->where('product_category_id', $category_id)
            ->where('product_brand_id', $brand_id)
            ->where('product_parent_id', null)
            ->get();
    }

    public static function get_product($id)
    {
        return DB::table('fan_product')->where('product_id', $id)->first();
    }

    public static function delete_product($id)
    {
        return DB::table('fan_product')->where('product_id', $id)->delete();
    }

    public static function get_product_filter($categorylevel, $category_id, $size, $color, $rangemin, $rangemax)
    {
        $sql = (new self())
            ->leftJoin('master_brand', 'master_brand.brand_id', '=', 'fan_product.product_brand_id')
            ->leftJoin('fan_product_stock_management', 'fan_product_stock_management.product_id', '=', 'fan_product.product_id')
            ->leftJoin('fan_product_sku AS color', 'fan_product_stock_management.product_sku_color_id', '=', 'color.sku_id')
            ->leftJoin('fan_product_sku AS size', 'fan_product_stock_management.product_sku_size_id', '=', 'size.sku_id')
            ->where('fan_product_stock_management.product_count', '>', '0')
            ->select('fan_product.*',
                'color.sku_type AS color_sku',
                'color.sku_type_id AS color_id',
                'size.sku_type AS size_sku',
                'size.sku_type_id AS size_id',
                'fan_product_stock_management.product_price_sale',
                'master_brand.brand_name');
        if ($categorylevel == 1) {
            $arrCategories = CategoryService::getSubCategoryIDs($category_id);
            $sql = $sql->whereIn('product_category_id', $arrCategories);
        } else if ($categorylevel == 2) {
            $arrCategories = CategoryService::getSubCategoryIDs($category_id);
            $sql = $sql->whereIn('product_category_id', $arrCategories);
        } else if ($categorylevel == 3)
            $sql = $sql->where('product_category_id', $category_id);
        if (isset($size) && $size != '') {
            $sizes = explode(',', $size);
            unset($sizes[sizeof($sizes) - 1]);
            $sql = $sql->where('size.sku_type', 2);
            $sql = $sql->whereIn('size.sku_type_id', $sizes);
        }
        if (isset($color) && $color != '') {
            $colors = explode(',', $color);
            unset($colors[sizeof($colors) - 1]);
            $sql = $sql->where('color.sku_type', 1);
            $sql = $sql->whereIn('color.sku_type_id', $colors);
        }
        if (isset($rangemin) && $rangemin != '') {
            $sql = $sql->where('fan_product_stock_management.product_price_sale', '>=', $rangemin);
        }
        if (isset($rangemax) && $rangemax != '') {
            $sql = $sql->where('fan_product_stock_management.product_price_sale', '<=', $rangemax);
        }
        return $sql->groupBy('fan_product.product_id')->get();
    }

    public static function is_registered_product($merchant_id, $product_code)
    {
        $product = DB::table('fan_product')
            ->where('product_merchant_id', $merchant_id)
            ->where('product_code', $product_code)
            ->get();
        if (count($product) > 0) {
            return $product[0]->product_id;
        } else {
            return 0;
        }
    }

    public static function set_product_status($id, $status)
    {
        if ($status == 1) {
            $query = "SELECT * FROM (SELECT * FROM receipts WHERE id = '$id') AS receipts
                INNER JOIN receipt_detail ON receipt_detail.receipt_id = receipts.id
                INNER JOIN receipt_stock  ON receipt_stock.id = receipt_detail.stock_data
                INNER JOIN receipt_product ON receipt_product.id = receipt_detail.product_data
                INNER JOIN fan_product_stock_management ON fan_product_stock_management.product_id = receipt_product.product_id 
                AND fan_product_stock_management.product_sku_color_id = receipt_stock.product_sku_color_id 
                AND fan_product_stock_management.product_sku_size_id = receipt_stock.product_sku_size_id";
            $product = DB::select($query)[0];

            DB::table('fan_product_stock_management')
                ->where('product_stock_id', $product->product_stock_id)
                ->update(['product_count' => $product->product_count + $product->product_amt]);
        }

        $history_id = DB::table('receipts')->where('id', $id)->leftJoin('receipt_detail', 'receipt_detail.receipt_id', 'receipts.id')->first()->history_id;
        DB::table('customer_buy_history')->where('id', $history_id)->update(['history_status' => $status]);
        return DB::table('receipts')
            ->where('id', $id)
            ->update(['status' => $status]);
    }
}