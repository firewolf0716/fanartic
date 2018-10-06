<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Colors;

class ColorController extends Controller
{
    public function add() {
        return view('admin.color.add');
    }

    public function addpost() {
        $color = new Colors();
        $color->color_name = Input::get('color_name');
        $color->color_name_en = Input::get('color_name_en');
        $color->color_value = Input::get('color_value');
        $color->save();
        return Redirect::to('admin/color/list');
    }

    public function list() {
        $colors = Colors::get();
        return view('admin.color.list')->with('colors', $colors);
    }

    public function edit($id) {
        $color = Colors::find($id);
        return view('admin.color.edit')->with('color', $color);
    }
    
    public function editpost() {
        $id = Input::get('color_id');
        $color = Colors::find($id);
        $color->color_name = Input::get('color_name');
        $color->color_name_en = Input::get('color_name_en');
        $color->color_value = Input::get('color_value');
        $color->save();
        return Redirect::to('admin/color/list');
    }
}
