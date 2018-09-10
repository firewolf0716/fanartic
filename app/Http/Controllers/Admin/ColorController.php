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
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        return view('admin.color.add');
    }

    public function addpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        // $entry =  array(
        //     'color_name' => Input::get('color_name'),
        //     'color_name_en' => Input::get('color_name_en'),
        //     'color_value' => Input::get('color_value'),
        //     'created_at' => Input::get('create_date'),
        //     'updated_at' => Input::get('update_date')
        // );
        $color = new Colors();
        $color->color_name = Input::get('color_name');
        $color->color_name_en = Input::get('color_name_en');
        $color->color_value = Input::get('color_value');
        $color->save();
        return Redirect::to('admin/color/list');
    }

    public function list() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $colors = Colors::get();
        return view('admin.color.list')->with('colors', $colors);
    }

    public function edit($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }
        $color = Colors::find($id);
        return view('admin.color.edit')->with('color', $color);
    }
    
    public function editpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        // $entry =  array(
        //     'color_name' => Input::get('color_name'),
        //     'color_name_en' => Input::get('color_name_en'),
        //     'color_value' => Input::get('color_value'),
        //     'created_at' => Input::get('create_date'),
        //     'updated_at' => Input::get('update_date')
        // );
        $id = Input::get('color_id');
        $color = Colors::find($id);
        $color->color_name = Input::get('color_name');
        $color->color_name_en = Input::get('color_name_en');
        $color->color_value = Input::get('color_value');
        $color->save();
        return Redirect::to('admin/color/list');
    }
}
