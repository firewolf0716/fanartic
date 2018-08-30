<?php

namespace App;

use DB;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;
use Illuminate\Support\Facades\Log;

class MerchantShipping extends AppModel
{

    public static function updateMerchantShipping($entry, $shipping_id)
    {
        if ($shipping_id == 0) {
            $check_insert = DB::table('merchant_shipping')->insert($entry);
            if ($check_insert) {
                return DB::getPdo()->lastInsertId();
            } else {
                return 0;
            }
        } else {
            DB::table('merchant_shipping')->where('shipping_id', $shipping_id)->update($entry);
            return $shipping_id;
        }
    }

    public static function updateMerchantShippingPrice($entry, $shipping_price_id)
    {
        if ($shipping_price_id == 0) {
            $check_insert = DB::table('merchant_shipping_price')->insert($entry);
            if ($check_insert) {
                return DB::getPdo()->lastInsertId();
            } else {
                return 0;
            }
        } else {
            DB::table('merchant_shipping_price')->where('shipping_price_id', $shipping_price_id)->update($entry);
            return $shipping_price_id;
        }
    }

    public static function get_merchant_shippings($merchant_id)
    {
        return DB::table('merchant_shipping')->where('merchant_id', $merchant_id)->get();
    }

    public static function get_merchant_shipping($merchant_id, $shipping_id)
    {
        return DB::table('merchant_shipping')->where('merchant_id', $merchant_id)
            ->where('shipping_id', $shipping_id)->get()->first();
    }

    public static function get_merchant_shipping_prices($merchant_id, $shipping_id)
    {
        return DB::table('merchant_shipping_price')->where('merchant_id', $merchant_id)
            ->where('shipping_id', $shipping_id)->get();
    }

    public static function remove_merchant_shippings($merchant_id, $shipping_id)
    {
        DB::table('merchant_shipping')->where('merchant_id', $merchant_id)
            ->where('shipping_id', $shipping_id)->delete();
        return DB::table('merchant_shipping_price')->where('merchant_id', $merchant_id)
            ->where('shipping_id', $shipping_id)->delete();

    }

    public static function remove_merchant_shipping_price($merchant_id, $shipping_price_id)
    {
        return DB::table('merchant_shipping_price')->where('merchant_id', $merchant_id)
            ->where('shipping_price_id', $shipping_price_id)->delete();
    }
}