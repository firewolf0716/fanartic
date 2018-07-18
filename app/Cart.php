<?php

namespace App;

use DB;

use Illuminate\Database\Eloquent\Model;


class Cart extends Model
{
    //
    public static function addCart($customer, $proid, $color, $size, $count){
        $entry = array(
            'cart_customerid' => $customer,
            'cart_productid' => $proid,
            'cart_skucolorid' => $color,
            'cart_skusizeid' => $size,
            'cart_amount' => $count
        );
        $previousRec = DB::table('customer_cart')->where('cart_customerid', $customer)
            ->where('cart_productid', $proid)
            ->where('cart_skucolorid', $color)
            ->where('cart_skusizeid', $size)
            ->get();
        if(count($previousRec) > 0){
            $id = $previousRec->first()->cart_id;
            return DB::table('customer_cart')->where('cart_id', $id)->update($entry);
        } else {
            DB::table('customer_cart')->insert($entry);
        }
    }

    public static function getItems($customer){
        return DB::table('customer_cart')
            ->where('cart_customerid', $customer)
            ->leftJoin('fan_product', 'fan_product.product_id', 'customer_cart.cart_productid')
            ->leftJoin('master_brand', 'fan_product.product_brand_id', 'master_brand.brand_id')
            ->leftJoin('fan_product_stock_management', function($join){
                $join->on('customer_cart.cart_productid', '=', 'fan_product_stock_management.product_id');
                $join->on('customer_cart.cart_skucolorid', '=', 'fan_product_stock_management.product_sku_color_id');
                $join->on('customer_cart.cart_skusizeid', '=', 'fan_product_stock_management.product_sku_size_id');
            })
            ->get();
    }

    public static function getCartItemCt($customer){
        return DB::table('customer_cart')
            ->where('cart_customerid', $customer)
            ->count();
    }

    public static function getSum($customer){
        $items = Cart::getItems($customer);
        $sum = 0; $count = 0;
        foreach($items as $item){
            $sum += $item->cart_amount * $item->product_price_sale;
            $count += $item->cart_amount;
        }
        $res['sum'] = $sum;
        $res['count'] = $count;
        return $res;
    }

    public static function getCount($customer){
        return DB::table('customer_cart')
            ->where('cart_customerid', $customer)
            ->select(DB::raw('sum(customer_cart.cart_amount) AS total_sales'))
            ->first()->total_sales;
    }

    public static function removeitem($id){
        DB::table('customer_cart')->where('cart_id', $id)->delete();
    }

    public static function clear_cart($customerid){
        DB::table('customer_cart')->where('cart_customerid', $customerid)->delete();
    }
}
