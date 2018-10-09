<?php

namespace App\Services;

use App\Models\Colors;
use App\Models\Sizes;
use App\Models\Products;
use App\Models\ProductSKU;
use App\Models\Brands;
use App\Services\StockService;

class CartService
{
    public static function addCart($cartEntry)
    {
        $carts = session('cart');
        if($carts == null || $carts == ''){
            $carts = array();  
        }
        foreach($carts as $i => $cart){
            if($cart['product'] == $cartEntry['product']){
                unset($carts[$i]);
            }
        }
        array_push($carts, $cartEntry);
        session(['cart' => $carts]);
        return "Success";
    }

    public static function removeCart($key){
        $carts = session('cart');
        if(isset($carts[$key])){
            unset($carts[$key]);
        }
        session(['cart' => $carts]);
    }

    public static function cartParams(){
        $cartitems = session('cart');
        
        // $cartitems = Cart::getItems(Auth::id());
        $images = array();
        $colorname = array();
        $sizename = array();
        $stocks = array();
        $cartbrands = array();
        $products = array();
        $sum = 0; $count = 0;
        // dd($cartitems);
        foreach ($cartitems as $i => $item) {
            $products[$i] = Products::find($item['product']);
            $cartbrands[$i] = Brands::find($products[$i]->product_brand_id)->brand_name;
            $sku_color = ProductSKU::find($item['color']);
            $color_obj = Colors::find($sku_color->sku_type_id);
            $colorname[$i] = $color_obj->color_name;

            $sku_size = ProductSKU::find($item['size']);
            $size_obj = Sizes::find($sku_color->sku_type_id);
            $sizename[$i] = $size_obj->size_name;

            $image = Products::get_cart_image($item['product'], $color_obj->color_id)->image_name;
            $images[$i] = $image;

            $stocks[$i] = StockService::get_for_product($item['product'], $item['color'], $item['size']);

            $sum += $stocks[$i]->product_price_sale * $item['count'];
            $count += $item['count'];
        }
        return compact('cartitems', 'sum', 'count', 'images', 'colorname', 'sizename', 'cartbrands', 'products', 'stocks');
    }
}