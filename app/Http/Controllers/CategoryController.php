<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Malls;
use App\Categorys;
use App\Sizes;

class CategoryController extends Controller
{
    //
    public function add(){
        $malls = Malls::get_malls();
        $categorys = Categorys::get_categorys();
        $sizecategorys = Sizes::get_sizecategorys();
        return view('admin.category.add')->with('malls', $malls)
                                         ->with('categorys', $categorys)
                                         ->with('sizecategorys', $sizecategorys);
    }

    public function addpost(){
        $parent = Input::get('select_parent');
        if($parent != ''){
            $parent_category = Categorys::get_category($parent)->first();
            $category_branch = $parent_category->category_branch.','.$parent;
            $entry =  array(
                'category_parent' => Input::get('select_parent'),
                'category_mall' => Input::get('select_mall'),
                'category_size' => Input::get('select_sizecategory'),
                'category_gender' => Input::get('optionGender'),
                'category_name' => Input::get('category_name'),
                'category_name_en' => Input::get('category_name_en'),
                'category_create' => Input::get('create_date'),
                'category_update' => Input::get('update_date'),
                'category_branch' => $category_branch
            );
        } else {
            $entry =  array(
                'category_parent' => Input::get('select_parent'),
                'category_mall' => Input::get('select_mall'),
                'category_size' => Input::get('select_sizecategory'),
                'category_gender' => Input::get('optionGender'),
                'category_name' => Input::get('category_name'),
                'category_name_en' => Input::get('category_name_en'),
                'category_create' => Input::get('create_date'),
                'category_update' => Input::get('update_date')
            );
        }
        Categorys::insert_category($entry);
        return Redirect::to('admin/category/list');
    }

    public function list(){
        $categorys = Categorys::get_categorys();
        return view('admin.category.list')->with('categorys', $categorys);
    }

    public function edit($id){
        $search = Categorys::get_category($id);
        $malls = Malls::get_malls();
        $categorys = Categorys::get_parentcategorys($id);
        $sizecategorys = Sizes::get_sizecategorys();
        if(isset($search)){
            $category = $search[0];
            return view('admin.category.edit')->with('category', $category)
                                            ->with('malls', $malls)
                                            ->with('categorys', $categorys)
                                            ->with('sizecategorys', $sizecategorys);
        } else{
            return Redirect::to('admin/category/list');
        }
    }

    public function editpost(){
        $parent = Input::get('select_parent');
        if($parent != ''){
            $parent_category = Categorys::get_category($parent)->first();
            $category_branch = $parent_category->category_branch.','.$parent;
            $entry =  array(
                'category_parent' => Input::get('select_parent'),
                'category_mall' => Input::get('select_mall'),
                'category_size' => Input::get('select_sizecategory'),
                'category_gender' => Input::get('optionGender'),
                'category_name' => Input::get('category_name'),
                'category_name_en' => Input::get('category_name_en'),
                'category_create' => Input::get('create_date'),
                'category_update' => Input::get('update_date'),
                'category_branch' => $category_branch
            );
        } else {
            $entry =  array(
                'category_parent' => Input::get('select_parent'),
                'category_mall' => Input::get('select_mall'),
                'category_size' => Input::get('select_sizecategory'),
                'category_gender' => Input::get('optionGender'),
                'category_name' => Input::get('category_name'),
                'category_name_en' => Input::get('category_name_en'),
                'category_create' => Input::get('create_date'),
                'category_update' => Input::get('update_date')
            );
        }
        $id = Input::get('category_id');
        Categorys::edit_category($entry, $id);
        return Redirect::to('admin/category/list');
    }
}
