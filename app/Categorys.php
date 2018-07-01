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

    public static function get_categorys($id) {
        $query = "SELECT master_category.category_id, master_category.top_category_id, master_category.main_category_id
        , master_category.category_gender, master_category.category_name, master_category.category_name_en, master_category.category_size_id
        , master_category.category_create, master_category.category_update, master_sizecategory.sizecategory_name
        , top_category_table.category_name AS top_category_name, top_category_table.category_name_en AS top_category_name_en
        , main_category_table.category_name AS main_category_name, main_category_table.category_name AS main_category_name FROM";
        if ($id != 0) {
            $query .= "(SELECT * FROM master_category WHERE category_id = '$id') AS";
        }
        $query .= " master_category LEFT JOIN master_sizecategory ON master_sizecategory.sizecategory_id = master_category.category_size_id
         LEFT JOIN master_category AS top_category_table ON master_category.top_category_id = top_category_table.category_id
         LEFT JOIN master_category AS main_category_table ON master_category.main_category_id = main_category_table.category_id
         ORDER BY master_category.top_category_id, master_category.main_category_id, master_category.category_id";
        $categorys = DB::select($query);
        return $categorys;
    }

    public static function get_categoryinfo($id) {
        return DB::table('master_category')->where('category_id', $id)->get();
    }

    public static function get_categorys_for_mall($mall_id) {
        $query = "SELECT master_category.category_id, master_category.category_name, master_category.category_name_en
        , top_category_table.category_name AS top_category_name, top_category_table.category_name_en AS top_category_name_en
        , main_category_table.category_name AS main_category_name, main_category_table.category_name AS main_category_name FROM 
         (SELECT * FROM master_category
         WHERE master_category.category_id IN (SELECT category_id FROM mall_category_match WHERE mall_id = '$mall_id')) AS master_category
         LEFT JOIN master_category AS top_category_table ON master_category.top_category_id = top_category_table.category_id
         LEFT JOIN master_category AS main_category_table ON master_category.main_category_id = main_category_table.category_id
         ORDER BY master_category.top_category_id, master_category.main_category_id, master_category.category_id";
        $categorys = DB::select($query);
        return $categorys;
    }

    public static function edit_category($entry, $id) {
        return DB::table('master_category')->where('category_id', '=', $id)->update($entry);
    }

    public static function getTopCategorys() {
        return DB::table('master_category')->orderBy('category_id', 'ASC')
                                ->where(function($q) {
                                    $q->where('top_category_id', '')
                                    ->orWhere('top_category_id', '0')
                                    ->orWhere('top_category_id', null);
                                })
                                ->get();
    }
    public static function getMainCategorys($topcategoryid) {
        return DB::table('master_category')->orderBy('top_category_id', 'ASC')
                                ->where('top_category_id', $topcategoryid)
                                ->where(function($q) {
                                    $q->where('main_category_id', '')
                                    ->orWhere('main_category_id', '0')
                                    ->orWhere('main_category_id', null);
                                })
                                ->get();         
    }
    public static function getSubCategorys($topcategoryid, $maincategoryid) {
        return DB::table('master_category')->orderBy('top_category_id', 'ASC')
        ->where('top_category_id', $topcategoryid)
        ->where('main_category_id', $maincategoryid)
        ->get();
    }
    public static function remove($id) {
        DB::table('master_category')->where('category_id', $id)->delete();
        DB::table('master_category')->where('top_category_id', $id)->delete();
        DB::table('master_category')->where('main_category_id', $id)->delete();
        return;
    }
}
