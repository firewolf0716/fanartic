<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Sizes;

class SizeController extends Controller
{
    //
    public function addcategory(){
        return view('admin.size.addcategory');
    }
    public function addcategorypost(){
        $entry =  array(
            'sizecategory_name' => Input::get('sizecategory_name'),
            'sizecategory_create' => Input::get('create_date'),
            'sizecategory_update' => Input::get('update_date')
        );
        Sizes::insert_sizecategory($entry);
        return Redirect::to('admin/size/listcategory');   
    }

    public function listcategory(){
        $sizecategorys = Sizes::get_sizecategorys();
        return view('admin.size.listcategory')->with('sizecategorys', $sizecategorys);
    }

    public function editcategory($id){
        $search = Sizes::get_sizecategory($id);
        if(isset($search)){
            $sizecategory = $search[0];
            return view('admin.size.editcategory')->with('sizecategory', $sizecategory);
        } else{
            return Redirect::to('admin/size/listcategory');
        }
    }
    public function editcategorypost(){
        $entry =  array(
            'sizecategory_name' => Input::get('sizecategory_name'),
            'sizecategory_create' => Input::get('create_date'),
            'sizecategory_update' => Input::get('update_date')
        );
        $id = Input::get('sizecategory_id');
        Sizes::edit_sizecategory($entry, $id);
        return Redirect::to('admin/size/listcategory');
    }

    public function add(){
        $categorys = Sizes::get_sizecategorys();
        return view('admin.size.add')->with('categorys', $categorys);
    }

    public function addpost(){
        $entry =  array(
            'size_category' => Input::get('select_category'),
            'size_name' => Input::get('size_name'),
            'size_name_en' => Input::get('size_name_en'),
            'size_create' => Input::get('create_date'),
            'size_update' => Input::get('update_date')
        );
        Sizes::insert_size($entry);
        return Redirect::to('admin/size/list'); 
    }

    public function list(){
        $sizes = Sizes::get_sizes();
        return view('admin.size.list')->with('sizes', $sizes);
    }

    public function edit($id){
        $search = Sizes::get_size($id);
        $categorys = Sizes::get_sizecategorys();
        if(isset($search)){
            $size = $search[0];
            return view('admin.size.edit')->with('size', $size)->with('categorys', $categorys);
        } else{
            return Redirect::to('admin/size/list');
        }
    }

    public function editpost(){
        $entry =  array(
            'size_category' => Input::get('select_category'),
            'size_name' => Input::get('size_name'),
            'size_name_en' => Input::get('size_name_en'),
            'size_create' => Input::get('create_date'),
            'size_update' => Input::get('update_date')
        );
        $id = Input::get('size_id');
        Sizes::edit_size($entry, $id);
        return Redirect::to('admin/size/list');
    }
}
