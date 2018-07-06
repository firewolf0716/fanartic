<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Colors;

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

        $entry =  array(
            'color_name' => Input::get('color_name'),
            'color_name_en' => Input::get('color_name_en'),
            'color_value' => Input::get('color_value'),
            'color_create' => Input::get('create_date'),
            'color_update' => Input::get('update_date')
        );
        Colors::insert_color($entry);
        return Redirect::to('admin/color/list');
    }

    public function list() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $colors = Colors::get_colors();
        return view('admin.color.list')->with('colors', $colors);
    }

    public function edit($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $search = Colors::get_color($id);
        if(isset($search)){
            $color = $search[0];
            return view('admin.color.edit')->with('color', $color);
        } else{
            return Redirect::to('admin/color/list');
        }
    }
    
    public function editpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $entry =  array(
            'color_name' => Input::get('color_name'),
            'color_name_en' => Input::get('color_name_en'),
            'color_value' => Input::get('color_value'),
            'color_create' => Input::get('create_date'),
            'color_update' => Input::get('update_date')
        );
        $id = Input::get('color_id');
        Colors::edit_color($entry, $id);
        return Redirect::to('admin/color/list');
    }
}
