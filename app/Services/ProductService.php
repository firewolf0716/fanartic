<?php

namespace App\Services;

use App\Models\Products;
use App\Models\Brands;
use App\Services\CategoryService;

class ProductService
{
    public static function getByCode($code) {
        $product = Products::where('product_code', $code);
        if(empty($product->id)) return false;
        return $product;
    }

    public static function get_product_filter_mall($mallid, $brandid, $categorylevel, $category_id, $size, $color, $rangemin, $rangemax)
    {
        if (is_null($brandid)) 
            $filtered_products = Products::get();
        else     
            $filtered_products = Brands::find($brandid)->products;

        if ($categorylevel == 1 || $categorylevel == 2) {
            $categories = CategoryService::getSubCategorys_mall_fromtop($mallid, $category_id);
            $arrCategories = array();
            foreach ($categories as $category) {
                array_push($arrCategories, $category->category_id);
            }
            $filtered_products = $filtered_products->whereIn('product_category_id', $arrCategories);
        } else if ($categorylevel == 3)
            $filtered_products = $filtered_products->where('product_category_id', $category_id);

        if (isset($color) && !empty($color)) {
            $colors = explode(',', $color);
            unset($colors[sizeof($colors) - 1]);
            $filtered_products = $filtered_products
                            ->whereIn('stocks.skucolor.sku_type_id', $colors);
        }
        if (isset($size) && !empty($size)) {
            $sizes = explode(',', $size);
            unset($sizes[sizeof($sizes) - 1]);
            $filtered_products = $filtered_products
                            ->whereIn('stocks.skusize.sku_type_id', $colors);
        }

        if (isset($rangemin) && !empty($rangemin)) 
            $filtered_products = $filtered_products
                            ->where('stocks.product_price_sale', '>=', $rangemin);
           
        if (isset($rangemax) && !empty($rangemax) && $rangemax != '500000') 
            $filtered_products = $filtered_products
                            ->where('stocks.product_price_sale', '<=', $rangemax);

        return $filtered_products;
    }
}
