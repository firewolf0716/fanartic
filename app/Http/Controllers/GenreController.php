<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Malls;
use App\Genres;

class GenreController extends Controller
{
    public function add() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $malls = Malls::get_malls();
        return view('admin.genre.add')->with('malls', $malls);
    }

    public function addpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $entry =  array(
            'mall_id' => Input::get('select_mall'),
            'genre_name' => Input::get('genre_name'),
            'genre_name_en' => Input::get('genre_name_en'),
            'genre_status' => Input::get('optionValid'),
            'genre_create' => Input::get('create_date'),
            'genre_update' => Input::get('update_date')
        );
        Genres::insert_genre($entry);
        return Redirect::to('admin/genre/list');
    }

    public function list() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $genres = Genres::get_genres();
        return view('admin.genre.list')->with('genres', $genres);
    }

    public function edit($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $search = Genres::get_genre($id);
        $malls = Malls::get_malls();
        if(isset($search)){
            $genre = $search[0];
            return view('admin.genre.edit')->with('genre', $genre)->with('malls', $malls);
        } else{
            return Redirect::to('admin/genre/list');
        }
    }

    public function editpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $entry =  array(
            'mall_id' => Input::get('select_mall'),
            'genre_name' => Input::get('genre_name'),
            'genre_name_en' => Input::get('genre_name_en'),
            'genre_status' => Input::get('optionValid'),
            'genre_create' => Input::get('create_date'),
            'genre_update' => Input::get('update_date')
        );
        $id = Input::get('genre_id');
        Genres::edit_genre($entry, $id);
        return Redirect::to('admin/genre/list');
    }

    public function delete($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        Genres::remove($id);
        return Redirect::to('admin/genre/list');
    }
}
