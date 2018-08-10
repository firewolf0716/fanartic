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
    public function add() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $malls = Malls::get_malls();
        $genres = Genres::get_genres();
        return view('admin.brand.add')->with('malls', $malls)->with('genres', $genres);
    }

    public function addpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $brand_image_file = Input::file('brand_image');
        if ($brand_image_file == null || $brand_image_file == "") {
            return Redirect::to('admin/brand/list');
        }

        $filename_new = "brand_" . time() . "." . strtolower($brand_image_file->getClientOriginalExtension());
        $newdestinationPath = './images/brands/';
        $uploadSuccess_new = Input::file('brand_image')->move($newdestinationPath, $filename_new);

        $entry =  array (
            'brand_name' => Input::get('brand_name'),
            'brand_name_en' => Input::get('brand_name_en'),
            'brand_design' => Input::get('select_design'),
            'brand_status' => Input::get('optionStatus'),
            'created_at' => Input::get('create_date'),
            'updated_at' => Input::get('update_date'),
            'brand_image' => $filename_new,
            'brand_description' => Input::get('brand_description')
        );
        $id = Brands::insert_brand($entry);
        
        // if(Input::has('brand_mall')){
        //     $malls = Input::get('brand_mall');
        //     foreach($malls as $mall){
        //         $mentry = array(
        //             'mall_id' => $mall,
        //             'brand_id' => $id
        //         );
        //         MallBrands::insert_match($mentry);
        //     }
        // }
        return Redirect::to('admin/brand/list');
    }

    public function list() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $brands = Brands::get_brands();
        return view('admin.brand.list')->with('brands', $brands);
    }

    public function edit($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

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

    public function delete($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $search = Brands::get_brand($id);
        if(isset($search)){
            $brand = $search[0];
            $imgPath = "./images/brands/".$brand->brand_image;
            if (file_exists($imgPath)) {
                unlink($imgPath);
            }
        }

        Brands::remove($id);
        MallBrands::remove_malls($id);
        return Redirect::to('admin/brand/list');
    }

    public function editpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $brand_image_file = Input::file('brand_image_file');
        if ($brand_image_file == null || $brand_image_file == "") {
            
        } else {
            $filename = Input::get('brand_image');
            $newdestinationPath = './images/brands/';
            $uploadSuccess_new = $brand_image_file->move($newdestinationPath, $filename);
        }
        
        $entry =  array(
            'brand_name' => Input::get('brand_name'),
            'brand_name_en' => Input::get('brand_name_en'),
            'brand_design' => Input::get('select_design'),
            'brand_status' => Input::get('optionStatus'),
            'created_at' => Input::get('create_date'),
            'updated_at' => Input::get('update_date'),
            'brand_description' => Input::get('brand_description')
        );
        $id = Input::get('brand_id');
        Brands::edit_brand($entry, $id);

        // MallBrands::remove_malls($id);
        // if(Input::has('brand_mall')){
        //     $malls = Input::get('brand_mall');
        //     foreach($malls as $mall){
        //         $mentry = array(
        //             'mall_id' => $mall,
        //             'brand_id' => $id
        //         );
        //         MallBrands::insert_match($mentry);
        //     }
        // }
        return Redirect::to('admin/brand/list');
    }
}
