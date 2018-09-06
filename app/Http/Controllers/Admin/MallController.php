<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Malls;
use App\Models\Brands;
use App\Models\MallBrands;
use App\Models\MallCategorys;
use App\Models\Categorys;

class MallController extends Controller
{
    public function add() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $brands = Brands::get();
        return view('admin.mall.add')->with('brands', $brands);
    }
    public function addpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $entry =  array(
            'mall_name' => Input::get('mall_name'),
            'mall_name_en' => Input::get('mall_name_en'),
            'mall_status' => Input::get('optionValid'),
            'created_at' => Input::get('create_date'),
            'updated_at' => Input::get('update_date')
        );
        $mall = new Malls();
        $mall->mall_name = Input::get('mall_name');
        $mall->mall_name_en = Input::get('mall_name_en');
        $mall->mall_status = Input::get('mall_status');
        $mall->save();
        $mallid = $mall->mall_id;

        if(Input::has('mall_brands')){
            $brandString = Input::get('mall_brands');
            $brands = explode(',', $brandString);
            foreach($brands as $brand) {
                if ($brand != '') {
                    $mentry = array(
                        'mall_id' => $mallid,
                        'brand_id' => $brand
                    );
                    MallBrands::insert_match($mentry);
                }
            }
        }

        $mallCategoryInfo = Input::get('mall_category');
        $categorys = explode(",", $mallCategoryInfo);
        if ($mallCategoryInfo[0] != "") {
            foreach($categorys as $category){
                $mentry = array(
                    'mall_id' => $mallid,
                    'category_id' => $category
                );
                MallCategorys::insert_match($mentry);
            }
    
        }
        
        return Redirect::to('admin/mall/list');
    }

    public function list() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $malls = Malls::get();
        return view('admin.mall.list')->with('malls', $malls);
    }

    public function edit($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        
        $mall = Malls::find($id);
        $brands = Brands::get();
        $selBrands = MallBrands::get_brands($mall->mall_id);
        $selBrandsString = '';
        for ($i = 0; $i < count($selBrands); $i++) {
            if ($i != 0) {
                $selBrandsString .= ",";
            }
            $selBrandsString .= $selBrands[$i]->brand_id;
        }

        $mall_brands = explode(',', $selBrandsString);
        
        $selcategorys = Categorys::get_categorys_for_mall($mall->mall_id);
        return view('admin.mall.edit')->with('mall', $mall)
                                    ->with('brands', $brands)
                                    ->with('selBrands', $selBrandsString)
                                    ->with('mall_brands', $mall_brands)
                                    ->with('selcategorys', $selcategorys);
    }

    public function editpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $mallid = Input::get('id');
        $mall = Malls::find($mallid);
        $mall->mall_name = Input::get('mall_name');
        $mall->mall_name_en = Input::get('mall_name_en');
        $mall->mall_status = Input::get('mall_status');
        $mall->save();

        MallBrands::remove_brands($mallid);
        if(Input::has('mall_brands')){
            $brandString = Input::get('mall_brands');
            $brands = explode(',', $brandString);
            foreach($brands as $brand) {
                if ($brand != '') {
                    $mentry = array(
                        'mall_id' => $mallid,
                        'brand_id' => $brand
                    );
                    MallBrands::insert_match($mentry);
                }
            }
        }

        $mallCategoryInfo = Input::get('mall_category');
        $categorys = explode(",", $mallCategoryInfo);
        MallCategorys::remove_categorys($mallid);
        if ($mallCategoryInfo[0] != "") {
            foreach($categorys as $category){
                $mentry = array(
                    'mall_id' => $mallid,
                    'category_id' => $category
                );
                MallCategorys::insert_match($mentry);
            }
        }

        return Redirect::to('admin/mall/list');
    }

    public function delete($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }
        
        Malls::find($id)->delete();
        MallBrands::remove_brands($id);
        MallCategorys::remove_categorys($id);
        return Redirect::to('admin/mall/list');
    }
}
