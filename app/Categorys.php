<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use DB;


class Categorys extends Model
{
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

    public static function edit_category($entry, $id) {
        return DB::table('master_category')->where('category_id', $id)->update($entry);
    }

    public static function getTopCategorys() {
        return DB::table('master_category')->orderBy('category_id', 'ASC')
                                ->where(function($q) {
                                    $q->where('category_parent_id', '')
                                    ->orWhere('category_parent_id', '0')
                                    ->orWhere('category_parent_id', null);
                                })
                                ->get();
    }

    public static function get_category($id) {
        return DB::table('master_category')->where('category_id', $id)->get()->first();
    }

    public static function getMainCategorys($topcategoryid) {
        return DB::table('master_category')->orderBy('category_id', 'ASC')
                                ->where('category_parent_id', $topcategoryid)
                                ->get();         
    }

    public static function getSubCategorys($maincategoryid) {
        return DB::table('master_category')->orderBy('category_id', 'ASC')
                                ->where('category_parent_id', $maincategoryid)
                                ->get();         
    }

    public static function getParentCategory($id) {
        $parent_id = DB::table('master_category')->where('category_id', $id)->get()->first()->category_parent_id;
        return DB::table('master_category')->where('category_id', $parent_id)->get()->first();     
    }

    public static function remove($id) {
        DB::table('master_category')->where('category_id', $id)->delete();
        DB::table('master_category')->where('category_parent_id', $id)->delete();
        return;
    }

    public static function getMainCategoryID($id) {
        return Categorys::getParentCategory($id)->category_id;
    }
    public static function getTopCategoryID($id) {
        $mainCategoryId = Categorys::getMainCategoryID($id);
        return Categorys::getParentCategory($mainCategoryId)->category_id;
    }
    public static function getSubCategoryIDs($id) {
        $result = Array();
        $subCategorys = Categorys::getSubCategorys($id);
        foreach ($subCategorys as $subCategory) {
            $subSubCategorys = Categorys::getSubCategorys($subCategory->category_id);
            if (count($subSubCategorys) == 0) {
                array_push($result, $subCategory->category_id);
            } else {
                foreach ($subSubCategorys as $subSubCategory) {
                    array_push($result, $subSubCategory->category_id);
                }
            }
        }
        return $result;
    }

    public static function get_categorys_for_mall($mall_id) {
        $query = "SELECT master_category.category_id, master_category.category_name, master_category.category_name_en
        , top_category_table.category_name AS top_category_name, top_category_table.category_name_en AS top_category_name_en
        , main_category_table.category_name AS main_category_name, main_category_table.category_name AS main_category_name FROM 
         (SELECT * FROM master_category
         WHERE master_category.category_id IN (SELECT category_id FROM mall_category_match WHERE mall_id = '$mall_id')) AS master_category
         LEFT JOIN master_category AS main_category_table ON master_category.category_parent_id = main_category_table.category_id
         LEFT JOIN master_category AS top_category_table ON main_category_table.category_parent_id = top_category_table.category_id
         ORDER BY master_category.category_id, master_category.category_id, master_category.category_id";
        $categorys = DB::select($query);
        return $categorys;
    }    
}
