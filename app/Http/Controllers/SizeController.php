<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Sizes;

class SizeController extends Controller
{
    public function addcategory() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        return view('admin.size.addcategory');
    }

    public function addcategorypost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $entry =  array(
            'sizecategory_name_en' => Input::get('sizecategory_name_en'),
            'sizecategory_name' => Input::get('sizecategory_name'),
            'created_at' => Input::get('create_date'),
            'updated_at' => Input::get('update_date')
        );
        Sizes::insert_sizecategory($entry);
        return Redirect::to('admin/size/listcategory');   
    }

    public function listcategory() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $sizecategorys = Sizes::get_sizecategorys();
        return view('admin.size.listcategory')->with('sizecategorys', $sizecategorys);
    }

    public function editcategory($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $search = Sizes::get_sizecategory($id);
        if(isset($search)){
            $sizecategory = $search[0];
            return view('admin.size.editcategory')->with('sizecategory', $sizecategory);
        } else{
            return Redirect::to('admin/size/listcategory');
        }
    }
    public function editcategorypost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $entry =  array(
            'sizecategory_name_en' => Input::get('sizecategory_name_en'),
            'sizecategory_name' => Input::get('sizecategory_name'),
            'created_at' => Input::get('create_date'),
            'updated_at' => Input::get('update_date')
        );
        $id = Input::get('sizecategory_id');
        Sizes::edit_sizecategory($entry, $id);
        return Redirect::to('admin/size/listcategory');
    }

    public function add() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $categorys = Sizes::get_sizecategorys();
        return view('admin.size.add')->with('categorys', $categorys);
    }

    public function addpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $entry =  array(
            'size_category_id' => Input::get('select_category'),
            'size_name' => Input::get('size_name'),
            'size_name_en' => Input::get('size_name_en'),
            'created_at' => Input::get('create_date'),
            'updated_at' => Input::get('update_date')
        );
        Sizes::insert_size($entry);
        return Redirect::to('admin/size/list'); 
    }

    public function list() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $sizes = Sizes::get_sizes();
        return view('admin.size.list')->with('sizes', $sizes);
    }

    public function edit($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $search = Sizes::get_size($id);
        $categorys = Sizes::get_sizecategorys();
        if(isset($search)){
            $size = $search;
            return view('admin.size.edit')->with('size', $size)->with('categorys', $categorys);
        } else {
            return Redirect::to('admin/size/list');
        }
    }

    public function editpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $entry =  array(
            'size_category_id' => Input::get('select_category'),
            'size_name' => Input::get('size_name'),
            'size_name_en' => Input::get('size_name_en'),
            'created_at' => Input::get('create_date'),
            'updated_at' => Input::get('update_date')
        );
        $id = Input::get('size_id');
        Sizes::edit_size($entry, $id);
        return Redirect::to('admin/size/list');
    }
}
