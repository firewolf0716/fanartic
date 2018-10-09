<?php

namespace App\Services;

use App\Models\Categorys;
use DB;

class CategoryService
{
    public function getTopCagetory($topid){
        $topcategorys = CategoryService::getTopCategorys();
        $topcategory = null;
        if ($topid == null) {
            $topcategory = $topcategorys[0];
        } else {
            if ($topid == "men") {
                $topcategory = Categorys::find(1);
            } else if ($topid == "women") {
                $topcategory = Categorys::find(2);
            }
        }
    }
    
    public static function getByName($name)
    {
        return Categorys::where('category_name_en', $name)->first();
    }

    public static function getTopCategorys()
    {
        return Categorys::orderBy('category_id', 'ASC')
            ->where(function ($q) {
                $q->where('category_parent_id', '')
                    ->orWhere('category_parent_id', '0')
                    ->orWhere('category_parent_id', null);
            })
            ->get();
    }

    public static function getMainCategorys($topcategoryid)
    {
        return Categorys::where('category_parent_id', $topcategoryid)
            ->orderBy('category_id', 'ASC')
            ->get();
    }

    public static function getSubCategorys($maincategoryid)
    {
        return Categorys::where('category_parent_id', $maincategoryid)
            ->orderBy('category_id', 'ASC')
            ->get();
    }

    public static function getParentCategory($id)
    {
        $parent_id = Categorys::where('category_id', $id)->get()->first()->category_parent_id;
        return Categorys::where('category_id', $parent_id)->get()->first();
    }

    public static function getMainCategoryID($id)
    {
        return CategoryService::getParentCategory($id)->category_id;
    }

    public static function getTopCategoryID($id)
    {
        $mainCategoryId = CategoryService::getMainCategoryID($id);
        return CategoryService::getParentCategory($mainCategoryId)->category_id;
    }

    public static function getSubCategoryIDs($id)
    {
        $result = Array();
        $subCategorys = CategoryService::getSubCategorys($id);
        foreach ($subCategorys as $subCategory) {
            $subSubCategorys = CategoryService::getSubCategorys($subCategory->category_id);
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

    public static function get_categorys_for_mall($mall_id)
    {
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

    public static function getMainCategorys_mall($mallid, $topid)
    {
        $result = array();
        $subcategorys = CategoryService::get_categorys_for_mall($mallid);
        foreach ($subcategorys as $cat) {
            $main = CategoryService::getParentCategory($cat->category_id);
            $top = CategoryService::getParentCategory($main->category_id);
            if ($top->category_id == $topid)
                $result[$main->category_id] = $main;
        }
        return $result;
    }

    public static function getSubCategorys_mall_frommain($mallid, $id)
    {
        $result = array();
        $subcategorys = CategoryService::get_categorys_for_mall($mallid);
        foreach ($subcategorys as $cat) {
            $main = CategoryService::getParentCategory($cat->category_id);
            if ($main->category_id == $id)
                $result[$cat->category_id] = $cat;
        }
        return $result;
    }

    public static function getSubCategorys_mall_fromtop($mallid, $id)
    {
        $result = array();
        $subcategorys = CategoryService::get_categorys_for_mall($mallid);
        foreach ($subcategorys as $cat) {
            $main = CategoryService::getParentCategory($cat->category_id);
            $top = CategoryService::getParentCategory($main->category_id);
            if ($top->category_id == $id)
                $result[$cat->category_id] = $cat;
        }
        return $result;
    }

    public static function get_category_id($top_name, $main_name, $sub_name)
    {
        $top_id = Categorys::where('category_name', $top_name)
            ->where(function ($q) {
                $q->where('category_parent_id', '')
                    ->orWhere('category_parent_id', '0')
                    ->orWhere('category_parent_id', null);
            })
            ->get()->first()->category_id;

        $main_id = Categorys::where('category_name', $main_name)
            ->where('category_parent_id', $top_id)
            ->get()->first()->category_id;

        $sub_id = Categorys::where('category_name', $sub_name)
            ->where('category_parent_id', $main_id)
            ->get()->first()->category_id;

        return $sub_id;
    }

    public static function get_category_byname($parentid, $childname)
    {
        return DB::table('master_category')
                ->where('category_parent_id', $parentid)
                ->where('category_name_en', $childname)
                ->first();
    }
}