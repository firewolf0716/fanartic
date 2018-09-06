<?php

namespace App\Models;

use DB;

use Illuminate\Database\Eloquent\Model;

class MerchantBrands extends AppModel
{
    //
    public static function insert_match($entry){
        $check_insert = DB::table('merchant_brand_match')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }
    public static function get_brands($merchant){
        return DB::table('merchant_brand_match')->where('merchant_id', $merchant)
            ->leftJoin('master_brand', 'merchant_brand_match.brand_id', '=', 'master_brand.brand_id')
            ->get();
    }
    public static function get_malls($brand){
        return DB::table('merchant_brand_match')->where('brand_id', $brand)->get();
    }
    public static function remove_brands($merchant){
        return DB::table('merchant_brand_match')->where('merchant_id', $merchant)->delete();
    }
    public static function remove_malls($brand){
        return DB::table('merchant_brand_match')->where('brand_id', $brand)->delete();
    }
}
