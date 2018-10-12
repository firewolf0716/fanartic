<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Brands;
use App\Models\Designer;

class DesignerController extends Controller
{
    const IMG_PATH = './images/designer/';

    public function add() {
        $brands = Brands::get();
        return view('admin.designer.add')->with('brands', $brands);
    }

    public function addpost() {
        $brand_id = Input::get('brand_id');
        $upload_img = Input::file('figure');

        $figure = 'designer_'.uniqid().strtolower($upload_img->getClientOriginalExtension());
        $uploadSuccess = $upload_img->move(self::IMG_PATH, $figure);
        if (!$uploadSuccess) return FALSE;

        $designer = new Designer();
        $designer->designer = Input::get('designer');
        $designer->period = Input::get('period');        
        $designer->birthplace = Input::get('birthplace');
        $designer->figure = $figure;
        $designer->save();
        
        return Redirect::to('admin/designer/list');
    }

    public function list() {
        $brands = Brands::get();
        $designers = Designer::get();
        foreach ($designers as $designer) {
            foreach ($brands as $brand) {
                if ($brand->brand_id == $designer->brand_id) {
                    $designer['b_name'] = $brand->brand_name_en;
                }
            }
        }  
        return view('admin.designer.list')->with('designers', $designers);
    }

    public function edit($id) {
        $designer = Designer::find((int)$id);
        $brands = Brands::get();
        return view('admin.designer.edit')->with('designer', $designer)
                                    ->with('brands', $brands);
    }

    public function editpost() {
        $brand_id = Input::get('brand_id');
        $upload_img = Input::file('figure');

        $id = Input::get('id');

        $designer = Designer::find($id);
        $designer->designer = Input::get('designer');
        $designer->designer = Input::get('period');
        $designer->designer = Input::get('birthplace');
        if ($upload_img) {
            $figure = 'designer_'.uniqid().strtolower($upload_img->getClientOriginalExtension());
            $uploadSuccess = $upload_img->move(self::IMG_PATH, $figure);
            if (!$uploadSuccess) return FALSE;
            $designer->figure = $figure;
        }     
        $designer->save();

        return Redirect::to('admin/designer/list');
    }

    public function delete($id) {
        Designer::find($id)->delete();
        return Redirect::to('admin/designer/list');
    }
}
