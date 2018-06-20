<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Malls;
use App\Brands;
use App\MallBrands;

class MallController extends Controller
{
    //
    public function add(){
        $brands = Brands::get_brands();
        return view('admin.mall.add')->with('brands', $brands);
    }
    public function addpost(){
        $entry =  array(
            'mall_name' => Input::get('mall_name'),
            'mall_name_en' => Input::get('mall_name_en'),
            'mall_status' => Input::get('optionValid'),
            'mall_create' => Input::get('create_date'),
            'mall_update' => Input::get('update_date')
        );
        $mallid = Malls::insert_mall($entry);
        if(Input::has('mall_brands')){
            $brands = Input::get('mall_brands');
            foreach($brands as $brand){
                $mentry = array(
                    'mall_id' => $mallid,
                    'brand_id' => $brand
                );
                MallBrands::insert_match($mentry);
            }
        }
        return Redirect::to('admin/mall/list');
    }

    public function list(){
        $malls = Malls::get_malls();
        return view('admin.mall.list')->with('malls', $malls);
    }

    public function edit($id){
        $search = Malls::get_mall($id);
        if(isset($search)){
            $mall = $search[0];
            $brands = Brands::get_brands();
            $selbrands = MallBrands::get_brands($mall->mall_id);
            return view('admin.mall.edit')->with('mall', $mall)->with('brands', $brands)->with('selbrands', $selbrands);
        } else{
            return Redirect::to('admin/mall/list');
        }
    }
    public function editpost(){
        $entry =  array(
            'mall_name' => Input::get('mall_name'),
            'mall_name_en' => Input::get('mall_name_en'),
            'mall_status' => Input::get('optionValid'),
            'mall_create' => Input::get('create_date'),
            'mall_update' => Input::get('update_date')
        );
        $id = Input::get('mall_id');
        Malls::edit_mall($entry, $id);

        MallBrands::remove_brands($id);
        if(Input::has('mall_brands')){
            $brands = Input::get('mall_brands');
            foreach($brands as $brand){
                $mentry = array(
                    'mall_id' => $id,
                    'brand_id' => $brand
                );
                MallBrands::insert_match($mentry);
            }
        }
        return Redirect::to('admin/mall/list');
    }
}
