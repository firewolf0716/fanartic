<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Sizes;
use App\Models\SizeCategory;

class SizeController extends Controller
{
    public function addcategory() {
        return view('admin.size.addcategory');
    }

    public function addcategorypost() {
        $sizecategory = new SizeCategory();
        $sizecategory->sizecategory_name = Input::get('sizecategory_name');
        $sizecategory->sizecategory_name_en = Input::get('sizecategory_name_en');
        $sizecategory->save();

        return Redirect::to('admin/size/listcategory');   
    }

    public function listcategory() {
        $sizecategorys = SizeCategory::get();
        return view('admin.size.listcategory')->with('sizecategorys', $sizecategorys);
    }

    public function editcategory($id) {
        $sizecategory = SizeCategory::find($id);
        return view('admin.size.editcategory')->with('sizecategory', $sizecategory);
    }
    public function editcategorypost() {
        $id = Input::get('sizecategory_id');
        /** @var SizeCategory $sizecategory */
        $sizeCategory = SizeCategory::find($id);
        $sizeCategory->sizecategory_name = Input::get('sizecategory_name');
        $sizeCategory->sizecategory_name_en = Input::get('sizecategory_name_en');
        $sizeCategory->save();
        return Redirect::to('admin/size/listcategory');
    }

    public function add() {
        $categorys = SizeCategory::all();
        return view('admin.size.add')->with('categorys', $categorys);
    }

    public function addpost() {
        $size = new Sizes();
        $size->size_category_id = Input::get('select_category');
        $size->size_name = Input::get('size_name');
        $size->size_name_en = Input::get('size_name_en');
        $size->save();

        return Redirect::to('admin/size/list'); 
    }

    public function list() {
        $sizes = Sizes::get();
        return view('admin.size.list')->with('sizes', $sizes);
    }

    public function edit($id) {
        $categorys = Sizes::get();
        $size = Sizes::find($id);
        return view('admin.size.edit')
            ->with('size', $size)
            ->with('categorys', $categorys);
    }

    public function editpost() {
        $id = Input::get('size_id');
        /** @var Sizes $size */
        $size = Sizes::find($id);
        $size->size_category_id = Input::get('select_category');
        $size->size_name = Input::get('size_name');
        $size->size_name_en = Input::get('size_name_en');
        $size->save();
        return Redirect::to('admin/size/list');
    }
}
