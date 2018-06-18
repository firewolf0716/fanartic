<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Malls;

class MallController extends Controller
{
    //
    public function add(){
        return view('admin.mall.add');
    }
    public function addpost(){
        $entry =  array(
            'mall_name' => Input::get('mall_name'),
            'mall_name_en' => Input::get('mall_name_en'),
            'mall_status' => Input::get('optionValid'),
            'mall_create' => Input::get('create_date'),
            'mall_update' => Input::get('update_date')
        );
        Malls::insert_mall($entry);
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
            return view('admin.mall.edit')->with('mall', $mall);
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
        return Redirect::to('admin/mall/list');
    }
}
