<?php

namespace App\Models;

use DB;

use Illuminate\Database\Eloquent\Model;

class Brands extends AppModel
{
    protected $guarded = array('brand_id');
    protected $table = 'master_brand';
    protected $primaryKey = 'brand_id';

    public static function get_brand_id($brand_name) {
        return DB::table('master_brand')->where('brand_name', $brand_name)->get()->first()->brand_id;
    }

    public static function get_brand_byname($brand_name){
        return DB::table('master_brand')->where('brand_name_en', $brand_name)->get()->first();
    }
}
