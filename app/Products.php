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
        return DB::table('fan_product')->where('product_id', $id)->get()->first();
    }

    public static function edit_product($entry, $id){
        return DB::table('fan_product')->where('product_id', '=', $id)->update($entry);
    }

    public static function get_products_manage($merchant, $product_exist_status = 1, $sub_category_id = '0', $brand_id = '0') {
        $query = "SELECT fan_product.product_id, fan_product.product_name, fan_product_stock_management.product_price_sale
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
         GROUP BY fan_product_stock_management.product_id
         ORDER BY fan_product.product_category_id";
        $products = DB::select($query);

        foreach ($products as $product) {
            $query = "SELECT SUM(product_count_$product_exist_status) as product_count
             FROM fan_product_stock_management WHERE product_id = '$product->product_id'";
            $product_count = DB::select($query)[0]->product_count;
            $product->product_count = $product_count;
        }

        foreach ($products as $product) {
            $query = "SELECT MAX(product_price_sale) as max_product_price_sale, MIN(product_price_sale) as min_product_price_sale
             FROM fan_product_stock_management WHERE product_id = '$product->product_id'";
            $product_price_sale = DB::select($query)[0];
            $max_product_price_sale = $product_price_sale->max_product_price_sale;
            $min_product_price_sale = $product_price_sale->min_product_price_sale;
            if ($max_product_price_sale == $min_product_price_sale) {
                $product->product_price_sale = $min_product_price_sale;
            } else {
                $product->product_price_sale = $min_product_price_sale . '~' . $max_product_price_sale;
            }
        }
    
        return $products;
    }

    public static function delete_product($id){
        return DB::table('fan_product')->where('product_id', $id)->delete();
    }
    public static function delete_product_image($product_id, $merchant_id, $color_id) {
        return DB::table('fan_product_image')->where('product_id', $product_id)
                                    ->where('merchant_id', $merchant_id)
                                    ->where('color_id', $color_id)
                                    ->delete();
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
        return DB::table('fan_product_master_image')->where('product_id', $product_id)
                                                ->orderBy('master_image_id', 'ASC')
                                                ->get();
    }
    public static function get_product_colors($product_id) {
        return DB::table('fan_product_sku')->where('product_id', $product_id)
                                                ->where('sku_type', '1')
                                                ->get();
    }
    public static function get_product_sizes($product_id) {
        return DB::table('fan_product_sku')->where('product_id', $product_id)
                                                ->where('sku_type', '2')
                                                ->get();
    }
    public static function insert_image($entry) {
        $check_insert = DB::table('fan_product_image')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }
    public static function get_image($color_id, $master_image_id) {
        return DB::table('fan_product_image')->where('master_image_id', $master_image_id)
            ->where('fan_product_image.color_id', $color_id)
            ->leftJoin('master_color', 'fan_product_image.color_id', 'master_color.color_id')
            ->orderBy('fan_product_image.master_image_id', 'ASC')
            ->orderBy('fan_product_image.image_id', 'ASC')
            ->get()->first();
    }
    public static function get_images($product_id) {
        return DB::table('fan_product_image')->where('product_id', $product_id)->get();
    }
    public static function set_image_path($product_image_id, $image_path) {
        return DB::table('fan_product_image')
            ->where('image_id', $product_image_id)
            ->update(['image_name' => $image_path]);
    }
    public static function get_product_stock_full_info($product_id) {
        $query = "SELECT stock_table.product_stock_id, stock_table.product_id, stock_table.product_count_1, stock_table.product_count_2, stock_table.product_count_3, stock_table.product_count_4
                , stock_table.product_count_5, stock_table.product_count_6, stock_table.product_price_sale, stock_table.product_price_ref, stock_table.product_price_law
                , stock_table.product_count_endless, color_table.color_name, size_table.size_name
                 FROM (SELECT * FROM fan_product_stock_management WHERE product_id = '$product_id') AS stock_table
                 LEFT JOIN fan_product_sku AS color_sku_table ON stock_table.product_sku_color_id = color_sku_table.sku_id
                 LEFT JOIN master_color AS color_table ON color_sku_table.sku_type_id = color_table.color_id
                 LEFT JOIN fan_product_sku AS size_sku_table ON stock_table.product_sku_size_id = size_sku_table.sku_id
                 LEFT JOIN master_size AS size_table ON size_sku_table.sku_type_id = size_table.size_id
                 ORDER BY color_table.color_id, size_table.size_id";
        $stocks = DB::select($query);
        return $stocks;
    }
    public static function get_product_stock_info($product_id) {
        return DB::table('fan_product_stock_management')->where('product_id', $product_id)->get();
        return $stocks;
    }
    public static function set_stock_info($product_stock_id, $product_count, $product_count_endless, $product_price_sale, $product_price_ref, $product_price_law) {
        return DB::table('fan_product_stock_management')
            ->where('product_stock_id', $product_stock_id)
            ->update(['product_count_1' => $product_count,
                    'product_count_endless' => $product_count_endless,
                    'product_price_sale' => $product_price_sale,
                    'product_price_ref' => $product_price_ref,
                    'product_price_law' => $product_price_law]);
    }

    public static function get_product_size_id($id) {
        $product_size_id = DB::table('fan_product_sku')->where('product_id', $id)
                                                    ->where('sku_type', 2)
                                                    ->get()->first()->sku_type_id;
        return $product_size_id;
    }
}