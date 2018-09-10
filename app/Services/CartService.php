<?php
namespace App\Services;

use App\Models\Cart;

class CartService
{
    public static function addCart($param){
        $previousRec = Cart::where('cart_customerid', $customer)->where('cart_productid', $proid)->where('cart_skucolorid', $color)
            ->where('cart_skusizeid', $size)->get();
        if(count($previousRec) > 0){
            $id = $previousRec->first()->cart_id;
            $cartitem = Cart::find($id);
        } else {
            $cartitem = new Cart();            
        }
        $cartitem->cart_customerid = $param['customer'];
        $cartitem->cart_customerid = $param['product'];
        $cartitem->cart_customerid = $param['color'];
        $cartitem->cart_customerid = $param['size'];
        $cartitem->cart_customerid = $param['count'];
        $cartitem->save();
    }
}