<?php
namespace App;
use DB;
use File;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;

use App\Categorys;

class Products extends Model{
    protected $guarded = array('id');
    protected $table = 'fan_product';

    public static function insert_product($entry){
        $check_insert = DB::table('fan_product')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function get_products_by_category($merchant_id, $category_id, $brand_id){
        // $category_obj = Categorys::get_categorys($category)->first();
        // $category_branch = $category_obj->category_branch;
        // if($category_branch != null){
        //     $category_parents = explode(',', $category_branch);
            
        // }
        return DB::table('fan_product')->where('product_merchant_id', $merchant_id)
                                    ->where('product_category_id', $category_id)
                                    ->where('product_brand_id', $brand_id)
                                    ->where('product_parent_id', null)
                                    ->get();
    }

    public static function get_product($id){
        return DB::table('fan_product')->where('product_id', $id)->get();
    }

    public static function edit_product($entry, $id){
        return DB::table('fan_product')->where('product_id', '=', $id)->update($entry);
    }

    public static function get_products_manage($merchant, $product_exist_status = 1, $sub_category_id = '0', $brand_id = '0') {
        $query = "SELECT fan_product.product_id, fan_product.product_name, fan_product.product_price_sale, fan_product.product_image
            , fan_product.product_status, fan_product_stock_management.product_count_$product_exist_status as product_count
             FROM (SELECT * FROM fan_product WHERE product_merchant_id = '$merchant'";
        if ($sub_category_id != '0') {
            $query .= " AND product_category_id = '$sub_category_id'";
        }

        if ($brand_id != '0') {
            $query .= " AND product_brand_id = '$brand_id'";
        }
        $query .= ") AS fan_product
         LEFT JOIN fan_product_stock_management ON fan_product.product_id = fan_product_stock_management.product_id
         ORDER BY fan_product.product_category_id";

        $products = DB::select($query);
        return $products;

        // return DB::table('fan_product')
        //     ->where('product_merchant_id', $merchant)
        //     ->orderby('product_id', 'ASC')->get();
    }

    public static function delete_product($id){
        return DB::table('fan_product')->where('product_id', $id)->delete();
    }

    public static function get_product_filter($categorylevel, $category_id, $size, $color, $rangemin, $rangemax){
        $sql = DB::table('fan_product')
                ->leftJoin('fan_product_stock_management', 'fan_product_stock_management.product_id', '=', 'fan_product.product_id')
                ->leftJoin('fan_product_sku AS color', 'fan_product_stock_management.product_sku_color_id', '=', 'color.sku_id')
                ->leftJoin('fan_product_sku AS size', 'fan_product_stock_management.product_sku_size_id', '=', 'size.sku_id')
                ->where('fan_product_stock_management.product_count_1', '>' , '0')
                ->select('fan_product.*', 
                    'color.sku_type AS color_sku', 
                    'color.sku_type_id AS color_id', 
                    'size.sku_type AS size_sku', 
                    'size.sku_type_id AS size_id',
                    'fan_product_stock_management.product_price_sale');
        if($categorylevel == 1){
            $arrCategories = Categorys::getSubCategoryIDs($category_id);
            $sql = $sql->whereIn('product_category_id', $arrCategories);
        }
        else if($categorylevel == 2){
            $arrCategories = Categorys::getSubCategoryIDs($category_id);
            $sql = $sql->whereIn('product_category_id', $arrCategories);
        }
        else if($categorylevel == 3)
            $sql = $sql->where('product_category_id', $category_id);
        if(isset($size) && $size != ''){
            $sizes = explode(',', $size);
            unset($sizes[sizeof($sizes) - 1]);
            $sql = $sql->where('size.sku_type', 2);
            $sql = $sql->whereIn('size.sku_type_id', $sizes);
        }
        if(isset($color) && $color != ''){
            $colors = explode(',', $color);
            unset($colors[sizeof($colors) - 1]);
            $sql = $sql->where('color.sku_type', 1);
            $sql = $sql->whereIn('color.sku_type_id', $colors);
        }
        if(isset($rangemin) && $rangemin != ''){
            $sql = $sql->where('fan_product_stock_management.product_price_sale', '>=' ,$rangemin);
        }
        if(isset($rangemax) && $rangemax != ''){
            $sql = $sql->where('fan_product_stock_management.product_price_sale', '<=' ,$rangemax);
        }
        return $sql->groupBy('fan_product.product_id')->get();
    }

    public static function get_product_detail($id){
        return DB::table('fan_product')->where('product_id', $id)
            ->leftJoin('master_brand', 'fan_product.product_brand_id', '=', 'master_brand.brand_id')
            ->leftJoin('master_color', 'fan_product.product_color', '=', 'master_color.color_id')
            ->get();
    }

    public static function insert_master_image($entry){
        $check_insert = DB::table('fan_product_master_image')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function get_master_images($product_id) {
        return DB::table('fan_product_master_image')->where('product_id', $product_id)->get();
    }
    public static function insert_image($entry) {
        $check_insert = DB::table('fan_product_image')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }
}