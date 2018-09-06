<?php

namespace App\Models;

use DB;

use Illuminate\Database\Eloquent\Model;

class Brands extends AppModel
{
    protected $guarded = array('id');
    protected $table = 'master_brand';

    public static function get_brands(){
        return DB::table('master_brand')
                                    ->orderBy('tempostar_sort_by', 'DESC')
                                    ->orderBy('brand_id', 'ASC')->get();
    }

    public static function get_brand($id){
        return DB::table('master_brand')->where('brand_id', $id)->get();
    }

    public static function edit_brand($entry,$id)
    {
        return DB::table('master_brand')->where('brand_id', $id)->update($entry);
    }

    public static function remove($id){
        return DB::table('master_brand')->where('brand_id', $id)->delete();
    }

    public static function removeAll() {
        $query = "TRUNCATE TABLE master_brand";
        $categorys = DB::select($query);
        return $categorys;
    }
}
