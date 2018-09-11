<?php
namespace App\Services;

use App\Models\Cart;

class CartService
{
    public static function addCart($param){
        $previousRec = Cart::where('cart_customerid', $param['customer'])
            ->where('cart_productid', $param['product'])
            ->where('cart_skucolorid', $param['color'])
            ->where('cart_skusizeid', $param['size'])->get();

        if(count($previousRec) > 0){
            $id = $previousRec->first()->cart_id;
            $cardItem = Cart::find($id);
        } else {
            $cardItem = new Cart();
        }

        $cardItem->cart_customerid = $param['customer'];
        $cardItem->cart_productid = $param['product'];
        $cardItem->cart_skucolorid = $param['color'];
        $cardItem->cart_skusizeid = $param['size'];
        $cardItem->cart_amount = $param['count'];
        $cardItem->save();
    }
}