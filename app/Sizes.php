<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Sizes extends Model
{
    //
    public static function insert_size($entry){
        $check_insert = DB::table('master_size')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }
    public static function get_sizes() {
        return DB::table('master_size')->orderBy('master_size.size_id', 'ASC')
                                       ->leftJoin('master_sizecategory', 'master_size.size_category_id', '=', 'master_sizecategory.sizecategory_id')
                                       ->get();
    }

    public static function get_size($id) {
        return DB::table('master_size')->where('master_size.size_id', $id)
                                       ->leftJoin('master_sizecategory', 'master_size.size_category_id', '=', 'master_sizecategory.sizecategory_id')
                                       ->get();
    }

    public static function edit_size($entry,$id)
    {
        return DB::table('master_size')->where('size_id', '=', $id)->update($entry);
    }

    public static function insert_sizecategory($entry){
        $check_insert = DB::table('master_sizecategory')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }
    public static function get_sizecategorys(){
        return DB::table('master_sizecategory')->orderBy('sizecategory_id', 'ASC')->get();
    }

    public static function get_sizecategory($id){
        return DB::table('master_sizecategory')->where('sizecategory_id', $id)->get();
    }

    public static function edit_sizecategory($entry, $id)
    {
        return DB::table('master_sizecategory')->where('sizecategory_id', '=', $id)->update($entry);
    }

    public static function get_sizebycategory($id) {
        return DB::table('master_size')->where('size_category_id', $id)->get();
    }
}
