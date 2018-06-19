<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use DB;


class Categorys extends Model
{
    //
    protected $guarded = array('category_id');
    protected $table = 'master_category';

    public static function insert_category($entry){
        $check_insert = DB::table('master_category')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }
    public static function get_categorys(){
        return DB::table('master_category')->orderBy('master_category.category_id', 'ASC')
                                           ->leftJoin('master_mall', 'master_category.category_mall', '=', 'master_mall.mall_id')
                                           ->leftJoin('master_sizecategory', 'master_category.category_size', '=', 'master_sizecategory.sizecategory_id')
                                           ->get();
    }
    public static function get_parentcategorys($id){
        return DB::table('master_category')->orderBy('master_category.category_id', 'ASC')->where('category_id', '!=', $id)
                                ->leftJoin('master_mall', 'master_category.category_mall', '=', 'master_mall.mall_id')
                                ->leftJoin('master_sizecategory', 'master_category.category_size', '=', 'master_sizecategory.sizecategory_id')
                                ->get();
    }

    public static function get_category($id){
        return DB::table('master_category')->where('category_id', $id)->get();
    }

    public static function edit_category($entry,$id)
    {
        return DB::table('master_category')->where('category_id', '=', $id)->update($entry);
    }

    public static function get_topcategorys(){
        return DB::table('master_category')->where('category_parent', '=', null)->get();
    }

    public static function get_subcategorys($parent){
        return DB::table('master_category')->where('category_parent', '=', $parent)->get();
    }
}
