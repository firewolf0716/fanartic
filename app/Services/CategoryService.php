<?php

namespace App\Services;

use App\Models\Categorys;
use App\Models\MallCategorys;
use App\Models\Malls;
use DB;

class CategoryService
{
    public function getTopCagetory($topid){
        $topcategorys = CategoryService::getTopCategorys();
        $topcategory = null;
        if ($topid == null) $topcategory = $topcategorys[0];
        else {
            if ($topid == "men") $topcategory = Categorys::find(1);
            else if ($topid == "women") $topcategory = Categorys::find(2);
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
            })->get();
    }

    public static function getChildCategorys($parent_id)
    {
        return Categorys::find($parent_id)->subs;
    }

    public static function getParentCategory($id)
    {
        return Categorys::find($id)->parent;
    }

    public static function getSubCategoryIDs($id)
    {
        $result = Array();
        $subCategorys = CategoryService::getChildCategorys($id);
        foreach ($subCategorys as $subCategory) {
            $subSubCategorys = CategoryService::getChildCategorys($subCategory->category_id);
            if (count($subSubCategorys) == 0) 
                array_push($result, $subCategory->category_id);
            else {
                foreach ($subSubCategorys as $subSubCategory) {
                    array_push($result, $subSubCategory->category_id);
                }
            }
        }
        return $result;
    }

    public static function get_categorys_for_mall($mall_id)
    {
        $mall = Malls::find($mall_id);
        $output = array();
        $categorys = $mall->categorys;

        foreach ($categorys as $category) {

            $category_id = $category->category_id;
            $sub_category = Categorys::find($category_id);
            $main_category = $sub_category->parent;
            $top_category = $main_category->parent;

            $tmp_obj = new \stdClass();
            $tmp_obj->category_id = $category->category_id;
            $tmp_obj->category_name = $sub_category->category_name;
            $tmp_obj->category_name_en = $sub_category->category_name_en;
            $tmp_obj->main_category_name = $main_category->category_name;
            $tmp_obj->main_category_name_en = $main_category->category_name_en;
            $tmp_obj->top_category_name = $top_category->category_name;
            $tmp_obj->top_category_name_en = $top_category->category_name_en;

            $output[] = $tmp_obj;
        }

        return $output;
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
        $top = Categorys::where('category_name', $top_name)
            ->where(function ($q) {
                $q->where('category_parent_id', '')
                    ->orWhere('category_parent_id', '0')
                    ->orWhere('category_parent_id', null);
            })->first();
        $main = $top->subs->where('category_name', $main_name)->first();
        $sub_id = $main->subs->where('category_name', $sub_name)->first()->category_id;
        return $sub_id;
    }

    public static function get_category_byname($parentid, $childname)
    {
        return Categorys::where('category_parent_id', $parentid)
                ->where('category_name_en', $childname)->first();
    }
}