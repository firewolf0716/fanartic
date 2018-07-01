<?php

namespace App;

use DB;
use Illuminate\Database\Eloquent\Model;

class MallCategorys extends Model
{
    //
    public static function insert_match($entry){
        $check_insert = DB::table('mall_category_match')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }
    public static function get_categorys($mall){
        return DB::table('mall_category_match')->where('mall_id', $mall)->get();
    }
    public static function get_malls($category){
        return DB::table('mall_category_match')->where('category_id', $category)->get();
    }
    public static function remove_categorys($mall){
        return DB::table('mall_category_match')->where('mall_id', $mall)->delete();
    }
    public static function remove_malls($category){
        return DB::table('mall_category_match')->where('category_id', $category)->delete();
    }
}
