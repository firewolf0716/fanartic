<?php

namespace App;

use DB;

use Illuminate\Database\Eloquent\Model;

class Brands extends Model
{
    protected $guarded = array('id');
    protected $table = 'master_brand';

    public static function insert_brand($entry){
        $check_insert = DB::table('master_brand')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }
    public static function get_brands(){
        return DB::table('master_brand')->orderBy('brand_id', 'ASC')->get();
    }

    public static function get_brand($id){
        return DB::table('master_brand')->where('brand_id', $id)->get();
    }

    public static function edit_brand($entry,$id)
    {
        return DB::table('master_brand')->where('brand_id', '=', $id)->update($entry);
    }
}
