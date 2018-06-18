<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Malls;
use App\Brands;



class BrandController extends Controller
{
    //
    public function add(){
        $malls = Malls::get_malls();
        return view('admin.brand.add')->with('malls', $malls);
    }
    public function addpost(){
        $entry =  array(
            'brand_moll' => Input::get('select_mall'),
            'brand_name' => Input::get('brand_name'),
            'brand_name_en' => Input::get('brand_name_en'),
            'brand_design' => Input::get('select_design'),
            'brand_status' => Input::get('optionStatus'),
            'brand_create' => Input::get('create_date'),
            'brand_update' => Input::get('update_date')
        );
        Brands::insert_brand($entry);
        return Redirect::to('admin/brand/list');
    }
    public function list(){
        $brands = Brands::get_brands();
        return view('admin.brand.list')->with('brands', $brands);
    }
    public function edit($id){
        $search = Brands::get_brand($id);
        $malls = Malls::get_malls();
        if(isset($search)){
            $brand = $search[0];
            return view('admin.brand.edit')->with('brand', $brand)->with('malls', $malls);
        } else{
            return Redirect::to('admin/brand/list');
        }
    }
    public function editpost(){
        $entry =  array(
            'brand_moll' => Input::get('select_mall'),
            'brand_name' => Input::get('brand_name'),
            'brand_name_en' => Input::get('brand_name_en'),
            'brand_design' => Input::get('select_design'),
            'brand_status' => Input::get('optionStatus'),
            'brand_create' => Input::get('create_date'),
            'brand_update' => Input::get('update_date')
        );
        $id = Input::get('brand_id');
        Brands::edit_brand($entry, $id);
        return Redirect::to('admin/brand/list');
    }
}
