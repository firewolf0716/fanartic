<?php

namespace App\Services;

use App\Models\Products;

class ProductService
{
    public static function getByCode($code) {
        $product = Products::where('product_code', $code);
        if(empty($product->id)) {
            return false;
        }
        return $product;
    }

    public static function getProducts() {

    }

    /**
     * @param $mall_id
     */
    public static function getNew($mall_id)
    {

    }

    public static function get_product_filter_mall($mallid, $brandid, $categorylevel, $category_id, $size, $color, $rangemin, $rangemax)
    {
        $sql = Products::leftJoin('master_brand', 'master_brand.brand_id', '=', 'fan_product.product_brand_id')
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
            $categories = CategoryService::getSubCategorys_mall_fromtop($mallid, $category_id);
            $arrCategories = array();
            foreach ($categories as $category) {
                array_push($arrCategories, $category->category_id);
            }
            $sql = $sql->whereIn('product_category_id', $arrCategories);
        } else if ($categorylevel == 2) {
            $categories = CategoryService::getSubCategorys_mall_frommain($mallid, $category_id);
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
}
