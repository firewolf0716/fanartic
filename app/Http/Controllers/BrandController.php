<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Malls;
use App\Brands;
use App\Genres;
use App\MallBrands;

class BrandController extends Controller
{
    //
    public function add(){
        $malls = Malls::get_malls();
        $genres = Genres::get_genres();
        return view('admin.brand.add')->with('malls', $malls)->with('genres', $genres);
    }
    public function addpost(){
        $entry =  array(
            'brand_genre' => Input::get('select_genre'),
            'brand_name' => Input::get('brand_name'),
            'brand_name_en' => Input::get('brand_name_en'),
            'brand_design' => Input::get('select_design'),
            'brand_status' => Input::get('optionStatus'),
            'brand_create' => Input::get('create_date'),
            'brand_update' => Input::get('update_date')
        );
        $id = Brands::insert_brand($entry);
        if(Input::has('brand_mall')){
            $malls = Input::get('brand_mall');
            foreach($malls as $mall){
                $mentry = array(
                    'mall_id' => $mall,
                    'brand_id' => $id
                );
                MallBrands::insert_match($mentry);
            }
        }
        return Redirect::to('admin/brand/list');
    }
    public function list(){
        $brands = Brands::get_brands();
        return view('admin.brand.list')->with('brands', $brands);
    }
    public function edit($id){
        $search = Brands::get_brand($id);
        $malls = Malls::get_malls();
        $genres = Genres::get_genres();
        if(isset($search)){
            $brand = $search[0];
            $selmalls = MallBrands::get_malls($brand->brand_id);
            return view('admin.brand.edit')->with('brand', $brand)->with('malls', $malls)->with('genres', $genres)->with('selmalls', $selmalls);
        } else{
            return Redirect::to('admin/brand/list');
        }
    }
    public function editpost(){
        $entry =  array(
            'brand_genre' => Input::get('select_genre'),
            'brand_name' => Input::get('brand_name'),
            'brand_name_en' => Input::get('brand_name_en'),
            'brand_design' => Input::get('select_design'),
            'brand_status' => Input::get('optionStatus'),
            'brand_create' => Input::get('create_date'),
            'brand_update' => Input::get('update_date')
        );
        $id = Input::get('brand_id');
        Brands::edit_brand($entry, $id);
        MallBrands::remove_malls($id);
        if(Input::has('brand_mall')){
            $malls = Input::get('brand_mall');
            foreach($malls as $mall){
                $mentry = array(
                    'mall_id' => $mall,
                    'brand_id' => $id
                );
                MallBrands::insert_match($mentry);
            }
        }
        return Redirect::to('admin/brand/list');
    }
}
