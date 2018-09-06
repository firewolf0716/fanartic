<?php

namespace App\Models;

use DB;
use File;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;

use App\Categorys;

class Products extends AppModel
{
    protected $guarded = array('id');
    protected $table = 'fan_product';
    protected $primaryKey = 'product_id';

    public static function insert_product($entry)
    {
        $check_insert = DB::table('fan_product')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function get_products_by_category($merchant_id, $category_id, $brand_id)
    {
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

    public static function get_product($id)
    {
        return DB::table('fan_product')->where('product_id', $id)->get()->first();
    }

    public static function edit_product($entry, $id)
    {
        return DB::table('fan_product')->where('product_id', '=', $id)->update($entry);
    }

    public static function get_products_manage($merchant, $sub_category_id = '0', $brand_id = '0')
    {
        $query = "SELECT fan_product.product_id, fan_product.product_name, fan_product_stock_management.product_price_sale
            , fan_product.product_status, fan_product_stock_management.product_count as product_count, fan_product.stock_type
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
            $query = "SELECT SUM(product_count) as product_count
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
                $product->product_price = $min_product_price_sale . "";
            } else {
                $product->product_price = $min_product_price_sale . ' ~ ' . $max_product_price_sale;
            }
        }

        return $products;
    }

    public static function delete_product($id)
    {
        return DB::table('fan_product')->where('product_id', $id)->delete();
    }

    public static function delete_product_image($product_id, $merchant_id, $color_id)
    {
        return DB::table('fan_product_image')->where('product_id', $product_id)
            ->where('merchant_id', $merchant_id)
            ->where('color_id', $color_id)
            ->delete();
    }

    public static function get_product_filter_mall($mallid, $brandid, $categorylevel, $category_id, $size, $color, $rangemin, $rangemax)
    {
        $sql = DB::table('fan_product')
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
        if (isset($brandid)) {
            $sql = $sql->where('fan_product.product_brand_id', $brandid);
        }
        if ($categorylevel == 1) {
            $categories = Categorys::getSubCategorys_mall_fromtop($mallid, $category_id);
            $arrCategories = array();
            foreach ($categories as $category) {
                array_push($arrCategories, $category->category_id);
            }
            $sql = $sql->whereIn('product_category_id', $arrCategories);
        } else if ($categorylevel == 2) {
            $categories = Categorys::getSubCategorys_mall_frommain($mallid, $category_id);
            $arrCategories = array();
            foreach ($categories as $category) {
                array_push($arrCategories, $category->category_id);
            }
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
        if (isset($rangemax) && $rangemax != '' && $rangemax != '500000') {
            $sql = $sql->where('fan_product_stock_management.product_price_sale', '<=', $rangemax);
        }
        return $sql->groupBy('fan_product.product_id')->get();
    }

    public static function get_product_filter_brand($brandid, $categorylevel, $category_id, $size, $color, $rangemin, $rangemax)
    {
        $sql = DB::table('fan_product')
            ->leftJoin('master_brand', 'master_brand.brand_id', '=', 'fan_product.product_brand_id')
            ->leftJoin('fan_product_stock_management', 'fan_product_stock_management.product_id', '=', 'fan_product.product_id')
            ->leftJoin('fan_product_sku AS color', 'fan_product_stock_management.product_sku_color_id', '=', 'color.sku_id')
            ->leftJoin('fan_product_sku AS size', 'fan_product_stock_management.product_sku_size_id', '=', 'size.sku_id')
            ->where('fan_product_stock_management.product_count', '>', '0')
            ->where('fan_product.product_brand_id', $brandid)
            ->select('fan_product.*',
                'color.sku_type AS color_sku',
                'color.sku_type_id AS color_id',
                'size.sku_type AS size_sku',
                'size.sku_type_id AS size_id',
                'fan_product_stock_management.product_price_sale',
                'master_brand.brand_name');
        if ($categorylevel == 1) {
            $arrCategories = Categorys::getSubCategoryIDs($category_id);
            $sql = $sql->whereIn('product_category_id', $arrCategories);
        } else if ($categorylevel == 2) {
            $arrCategories = Categorys::getSubCategoryIDs($category_id);
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

    public static function get_product_filter($categorylevel, $category_id, $size, $color, $rangemin, $rangemax)
    {
        $sql = DB::table('fan_product')
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
            $arrCategories = Categorys::getSubCategoryIDs($category_id);
            $sql = $sql->whereIn('product_category_id', $arrCategories);
        } else if ($categorylevel == 2) {
            $arrCategories = Categorys::getSubCategoryIDs($category_id);
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


    public static function get_product_detail($id)
    {
        return DB::table('fan_product')->where('product_id', $id)
            ->leftJoin('master_brand', 'fan_product.product_brand_id', '=', 'master_brand.brand_id')
            ->leftJoin('master_color', 'fan_product.product_color', '=', 'master_color.color_id')
            ->get();
    }

    public static function insert_master_image($entry)
    {
        $check_insert = DB::table('fan_product_master_image')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function get_master_images($product_id)
    {
        return DB::table('fan_product_master_image')->where('product_id', $product_id)
            ->orderBy('master_image_id', 'ASC')
            ->get();
    }

    public static function get_product_colors($product_id)
    {
        return DB::table('fan_product_sku')->where('product_id', $product_id)
            ->where('sku_type', '1')
            ->get();
    }

    public static function get_product_sizes($product_id)
    {
        return DB::table('fan_product_sku')->where('product_id', $product_id)
            ->where('sku_type', '2')
            ->get();
    }

    public static function insert_image($entry)
    {
        $check_insert = DB::table('fan_product_image')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function get_image($product, $color_id)
    {
        return DB::table('fan_product_image')->where('fan_product_image.product_id', $product)
            ->where('fan_product_image.color_id', $color_id)
            ->leftJoin('master_color', 'master_color.color_id', 'fan_product_image.color_id')
            ->orderBy('fan_product_image.image_id', 'ASC')
            ->get()->first();
    }

    public static function get_images($product_id)
    {
        return DB::table('fan_product_image')->where('product_id', $product_id)->get();
    }

    public static function set_image_path($product_image_id, $image_path)
    {
        return DB::table('fan_product_image')
            ->where('image_id', $product_image_id)
            ->update(['image_name' => $image_path]);
    }

    public static function get_product_stock_full_info($product_id)
    {
        $query = "SELECT stock_table.product_stock_id, stock_table.product_id, stock_table.product_count, stock_table.product_price_sale, stock_table.product_price_ref, stock_table.product_price_law
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

    public static function get_product_stock_info($product_id)
    {
        return DB::table('fan_product_stock_management')->where('product_id', $product_id)->get();
        return $stocks;
    }

    public static function set_stock_info($product_stock_id, $product_count, $product_count_endless, $product_price_sale, $product_price_ref, $product_price_law)
    {
        return DB::table('fan_product_stock_management')
            ->where('product_stock_id', $product_stock_id)
            ->update(['product_count' => $product_count,
                'product_count_endless' => $product_count_endless,
                'product_price_sale' => $product_price_sale,
                'product_price_ref' => $product_price_ref,
                'product_price_law' => $product_price_law]);
    }

    public static function get_product_size_id($id)
    {
        $product_size_id = DB::table('fan_product_sku')->where('product_id', $id)
            ->where('sku_type', 2)
            ->get()->first()->sku_type_id;
        return $product_size_id;
    }

    public static function get_cart_image($product_id, $color)
    {
        // $first = DB::table('fan_product_image')->where('product_id', $product_id)->get()->first();
        $img = DB::table('fan_product_image')
            ->where('product_id', $product_id)
            ->where('color_id', $color)
            ->get()->first();
        return $img;
    }

    // public static function get_cash_on_delivery_products($merchant_id) {
    //     $query = "SELECT customer_buy_history.id AS buy_history_id, customer_buy_history.history_amount AS product_amount
    //                 , customer_buy_history.history_price AS product_price, customer_buy_history.history_date AS request_date
    //                 , master_color.color_name, master_size.size_name, fan_product.product_name, fan_product.product_code
    //                 , customer_address.address_name, customers.customer_name_first, customers.customer_name_second, customers.customer_email
    //                 , customers.customer_phone, customers.customer_postalcode, customers.customer_gender, customers.customer_birthday
    //                 FROM (SELECT * FROM customer_buy_history WHERE history_status = '2' AND history_merchantid = '$merchant_id') AS customer_buy_history
    //                  LEFT JOIN fan_product_sku AS sku_color ON sku_color.sku_id = customer_buy_history.history_skucolorid
    //                  LEFT JOIN master_color ON master_color.color_id = sku_color.sku_type_id
    //                  LEFT JOIN fan_product_sku AS sku_size ON sku_size.sku_id = customer_buy_history.history_skusizeid
    //                  LEFT JOIN master_size ON master_size.size_id = sku_size.sku_type_id
    //                  LEFT JOIN fan_product ON fan_product.product_id = customer_buy_history.history_productid
    //                  LEFT JOIN customer_address ON customer_address.id = customer_buy_history.history_address
    //                  LEFT JOIN customers ON customers.customer_id = customer_buy_history.history_customerid";
    //         $stocks = DB::select($query);
    //         return $stocks; 
    // }
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

        $history_id = DB::table('receipts')->where('id', $id)->leftJoin('receipt_detail', 'receipt_detail.receipt_id', 'receipts.id')->get()->first()->history_id;
        DB::table('customer_buy_history')->where('id', $history_id)->update(['history_status' => $status]);
        return DB::table('receipts')
            ->where('id', $id)
            ->update(['status' => $status]);
    }

    public static function get_products_search($merchant_id, $product_status, $free_word, $min_price, $max_price, $duration_setting, $duration_range)
    {
        $query = "SELECT receipts.id AS receipt_id, receipt_product.product_id AS product_id
            , master_color.color_name, master_size.size_name, receipt_product.product_name, receipt_product.product_code
            , receipts.date_juchu as date_juchu, receipts.date_pay as date_pay, receipts.date_delivery as date_delivery
            , receipt_detail.product_amt as product_amount, receipt_detail.tax_flag as tax_flag
            , receipt_detail.tax_rate as tax_rate, receipt_stock.product_price_sale as product_price
            , receipt_address.address_name, receipt_customer.customer_name_first, receipt_customer.customer_name_second, receipt_customer.customer_email
            , receipt_customer.customer_phone, receipt_customer.customer_postalcode, receipt_customer.customer_gender, receipt_customer.customer_birthday
             FROM (SELECT * FROM receipts WHERE status = '$product_status' AND merchant_id = '$merchant_id'";
        if ($duration_setting != "0") {
            $duration_range_array = explode(" - ", $duration_range);

            if ($product_status == "2") {
                $query .= " AND date_juchu >= '$duration_range_array[0]'";
                $query .= " AND date_juchu <= '$duration_range_array[1]'";
            } else if ($product_status == "3") {
                $query .= " AND date_delivery >= '$duration_range_array[0]'";
                $query .= " AND date_delivery <= '$duration_range_array[1]'";
            } else if ($product_status == "4") {
                $query .= " AND date_pay >= '$duration_range_array[0]'";
                $query .= " AND date_pay <= '$duration_range_array[1]'";
            }
        }

        $query .= ") AS receipts
             INNER JOIN receipt_detail ON receipt_detail.receipt_id = receipts.id
             INNER JOIN receipt_product ON receipt_product.id = receipt_detail.product_data
             INNER JOIN ";
        if ($min_price == "" && $max_price == "") {
            $query .= " receipt_stock";
        } else {
            $query .= " (SELECT * FROM receipt_stock WHERE product_merchant_id = '$merchant_id'";
            if ($min_price != "") {
                $query .= " AND product_price_sale >= '$min_price'";
            }

            if ($max_price != "") {
                $query .= " AND product_price_sale <= '$max_price'";
            }
            $query .= ") AS receipt_stock";
        }

        $query .= " ON receipt_stock.id = receipt_detail.stock_data
                     LEFT JOIN fan_product_sku AS sku_color ON sku_color.sku_id = receipt_stock.product_sku_color_id
                     LEFT JOIN master_color ON master_color.color_id = sku_color.sku_type_id
                     LEFT JOIN fan_product_sku AS sku_size ON sku_size.sku_id = receipt_stock.product_sku_size_id
                     LEFT JOIN master_size ON master_size.size_id = sku_size.sku_type_id
                     LEFT JOIN receipt_shipping ON receipt_shipping.id = receipts.shipping_data
                     LEFT JOIN receipt_card ON receipt_card.id = receipts.credit_data
                     INNER JOIN receipt_address ON receipt_address.id = receipts.address_data
                     INNER JOIN receipt_customer ON receipt_customer.id = receipts.profile_data
                     WHERE receipt_shipping.merchant_id = '$merchant_id'";
        if ($free_word != "") {
            $query .= " AND (receipt_customer.customer_name_first like '%" . $free_word . "%' OR receipt_customer.customer_name_second like '%" . $free_word . "%'
                     OR receipt_customer.customer_email like '%" . $free_word . "%' OR receipt_customer.customer_phone like '%" . $free_word . "%'
                     OR receipt_address.address_name like '%" . $free_word . "%')";
        }

        $stocks = DB::select($query);
        return $stocks;
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

    public static function update_product_count($merchant_id, $product_id, $product_color, $product_size, $product_count)
    {
        $query = "UPDATE fan_product_stock_management
                INNER JOIN (SELECT sku_id AS color_sku_id FROM fan_product_sku 
                    INNER JOIN (SELECT color_id FROM master_color WHERE color_name = '$product_color') AS master_color
                        ON master_color.color_id = fan_product_sku.sku_type_id                        
                    WHERE product_id = '$product_id' AND sku_type = '1' AND sku_type_id = color_id) AS fan_product_sku_color
                    ON fan_product_stock_management.product_sku_color_id = fan_product_sku_color.color_sku_id
                LEFT JOIN (SELECT sku_id AS size_sku_id FROM fan_product_sku 
                    INNER JOIN (SELECT size_id FROM master_size WHERE size_name = '$product_size') AS master_size
                        ON master_size.size_id = fan_product_sku.sku_type_id                        
                    WHERE product_id = '$product_id' AND sku_type = '1' AND sku_type_id = size_id) AS fan_product_sku_size
                    ON fan_product_stock_management.product_sku_size_id = fan_product_sku_size.size_sku_id
                SET product_count = '$product_count'";

        $stocks = DB::statement($query);
        return $stocks;
    }
}