<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Malls;
use App\Models\Brands;
use App\Models\Genres;
use App\Models\MallBrands;
use App\Services\MatchService;

class BrandController extends Controller
{
    public function add() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $malls = Malls::get();
        $genres = Genres::get();
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

        $brand = new Brands();
        $brand->brand_name = Input::get('brand_name');
        $brand->brand_name_en = Input::get('brand_name_en');
        $brand->brand_design = Input::get('brand_design');
        $brand->brand_status = Input::get('brand_status');
        $brand->brand_image = Input::get('brand_image');
        $brand->brand_description = Input::get('brand_description');
        $brand->save();
        
        return Redirect::to('admin/brand/list');
    }

    public function list() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $brands = Brands::get();
        return view('admin.brand.list')->with('brands', $brands);
    }

    public function edit($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $malls = Malls::get();
        $genres = Genres::get();
        $brand = Brands::find($id);
        $selmalls = MatchService::get_malls($brand->brand_id);
        return view('admin.brand.edit')->with('brand', $brand)->with('malls', $malls)->with('genres', $genres)->with('selmalls', $selmalls);
    }

    public function delete($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $brand = Brands::find($id);
        $imgPath = "./images/brands/".$brand->brand_image;
        if (file_exists($imgPath)) {
            unlink($imgPath);
        }
        Brands::find($id)->delete();
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
        
        $id = Input::get('brand_id');
        $brand = Brands::find($id);
        $brand->brand_name = Input::get('brand_name');
        $brand->brand_name_en = Input::get('brand_name_en');
        $brand->brand_design = Input::get('brand_design');
        $brand->brand_status = Input::get('brand_status');
        $brand->brand_image = Input::get('brand_image');
        $brand->brand_description = Input::get('brand_description');
        $brand->save();
        
        return Redirect::to('admin/brand/list');
    }
}
