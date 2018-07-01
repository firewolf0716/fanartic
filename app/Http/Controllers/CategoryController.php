<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Malls;
use App\Categorys;
use App\Sizes;
use App\MallCategorys;

class CategoryController extends Controller
{
    //
    public function add(){
        $malls = Malls::get_malls();
        $sizecategorys = Sizes::get_sizecategorys();
        return view('admin.category.add')->with('malls', $malls)
                                         ->with('sizecategorys', $sizecategorys);
    }

    public function addpost(){
        $entry =  array(
            'top_category_id' => Input::get('top_category'),
            'main_category_id' => Input::get('main_category'),
            'category_size_id' => Input::get('select_sizecategory'),
            'category_gender' => Input::get('optionGender'),
            'category_name' => Input::get('category_name'),
            'category_name_en' => Input::get('category_name_en'),
            'category_create' => Input::get('create_date'),
            'category_update' => Input::get('update_date')
        );
 
        $id = Categorys::insert_category($entry);

        if(Input::has('category_mall')){
            $malls = Input::get('category_mall');
            foreach($malls as $mall){
                $mentry = array(
                    'mall_id' => $mall,
                    'category_id' => $id
                );
                MallCategorys::insert_match($mentry);
            }
        }
        return Redirect::to('admin/category/list');
    }

    public function getTopCategorys() {
        $topCategorys = Categorys::getTopCategorys();
        return $topCategorys;
    }

    public function getMainCategorys($topCategoryId) {
        $mainCategorys = Categorys::getMainCategorys($topCategoryId);
        return $mainCategorys;
    }

    public function getSubCategorys($topCategoryId, $mainCategoryId) {
        $mainCategorys = Categorys::getSubCategorys($topCategoryId, $mainCategoryId);
        return $mainCategorys;
    }


    public function list(){
        $categorys = Categorys::get_categorys(0);
        return view('admin.category.list')->with('categorys', $categorys);
    }

    public function edit($id){
        $search = Categorys::get_categorys($id);
        $malls = Malls::get_malls();
        $sizecategorys = Sizes::get_sizecategorys();
        $linkedMalls = MallCategorys::get_malls($id);

      
        if(isset($search)){
            $category = $search[0];
            return view('admin.category.edit')->with('category', $category)
                                            ->with('malls', $malls)
                                            ->with('linkedMalls', $linkedMalls)
                                            ->with('sizecategorys', $sizecategorys);
        } else {
            return Redirect::to('admin/category/list');
        }
    }
    public function delete($id) {
        Categorys::remove($id);
        MallCategorys::remove_malls($id);
        return Redirect::to('admin/category/list');
    }

    public function editpost(){
        $entry =  array(
            'top_category_id' => Input::get('top_category'),
            'main_category_id' => Input::get('main_category'),
            'category_size_id' => Input::get('select_sizecategory'),
            'category_gender' => Input::get('optionGender'),
            'category_name' => Input::get('category_name'),
            'category_name_en' => Input::get('category_name_en'),
            'category_create' => Input::get('create_date'),
            'category_update' => Input::get('update_date')
        );
        $id = Input::get('category_id');
        Categorys::edit_category($entry, $id);
        MallCategorys::remove_malls($id);
        if(Input::has('category_mall')){
            $malls = Input::get('category_mall');
            foreach($malls as $mall){
                $mentry = array(
                    'mall_id' => $mall,
                    'category_id' => $id
                );
                MallCategorys::insert_match($mentry);
            }
        }

        return Redirect::to('admin/category/list');
    }
}
