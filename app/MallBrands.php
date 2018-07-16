<?php

namespace App;

use DB;
use Illuminate\Database\Eloquent\Model;

class MallBrands extends Model
{
    //
    public static function insert_match($entry){
        $check_insert = DB::table('mall_brand_match')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }
    public static function get_brands($mall){
        return DB::table('mall_brand_match')->where('mall_id', $mall)
            ->leftJoin('master_brand', 'mall_brand_match.brand_id', '=', 'master_brand.brand_id')
            ->get();
    }
    public static function get_malls($brand){
        return DB::table('mall_brand_match')->where('brand_id', $brand)->get();
    }
    public static function remove_brands($mall){
        return DB::table('mall_brand_match')->where('mall_id', $mall)->delete();
    }
    public static function remove_malls($brand){
        return DB::table('mall_brand_match')->where('brand_id', $brand)->delete();
    }
}
