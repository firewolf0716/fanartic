<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Brands;
use App\Models\History;

class HistoryController extends Controller
{
    const IMG_PATH = './images/history/';

    public function add() {
        $brands = Brands::get();
        return view('admin.history.add')->with('brands', $brands);
    }

    public function addpost() {
        $brand_id = Input::get('brand_id');
        $upload_img = Input::file('figure');

        $figure = 'history_'.$brand_id.'_'.uniqid().'.'.strtolower($upload_img->getClientOriginalExtension());
        $uploadSuccess = $upload_img->move(self::IMG_PATH, $figure);
        if (!$uploadSuccess) return FALSE;

        $history = new History();
        $history->b_id = $brand_id;
        $history->year = Input::get('year');
        $history->figure = $figure;
        $history->head = Input::get('head');        
        $history->description = Input::get('description');
        $history->save();
        
        return Redirect::to('admin/history/list');
    }

    public function list() {
        $brands = Brands::get();
        $histories = History::get();
        foreach ($histories as $history) {
            foreach ($brands as $brand) {
                if ($brand->brand_id == $history->b_id) {
                    $history['b_name'] = $brand->brand_name_en;
                }
            }
        }  
        return view('admin.history.list')->with('histories', $histories);
    }

    public function edit($id) {
        $history = History::find((int)$id);
        $brands = Brands::get();
        return view('admin.history.edit')->with('history', $history)
                                    ->with('brands', $brands);
    }

    public function editpost() {
        $brand_id = Input::get('brand_id');
        $upload_img = Input::file('figure');

        $id = Input::get('id');

        $history = History::find($id);
        $history->b_id = $brand_id;
        $history->year = Input::get('year');
        if ($upload_img) {
            $imgPath = "./images/history/" . $history->figure;
            if ($history->figure && file_exists($imgPath)) {
                unlink($imgPath);   
            }

            $figure = 'history_'.$brand_id.'_'.uniqid().'.'.strtolower($upload_img->getClientOriginalExtension());
            $uploadSuccess = $upload_img->move(self::IMG_PATH, $figure);
            if (!$uploadSuccess) return FALSE;
            $history->figure = $figure;
        }
        $history->head = Input::get('head');        
        $history->description = Input::get('description');
        $history->save();

        return Redirect::to('admin/history/list');
    }

    public function delete($id) {
        $history = History::find($id);
        $imgPath = "./images/history/" . $history->figure;
        if ($history->figure && file_exists($imgPath)) {
            unlink($imgPath);   
        }
        History::find($id)->delete();
        return Redirect::to('admin/history/list');
    }
}
