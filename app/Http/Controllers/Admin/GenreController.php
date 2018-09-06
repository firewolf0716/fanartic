<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Malls;
use App\Models\Genres;

class GenreController extends Controller
{
    public function add() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $malls = Malls::get();
        return view('admin.genre.add')->with('malls', $malls);
    }

    public function addpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $genre = new Genres();
        $genre->mall_id = Input::get('select_mall');
        $genre->genre_name = Input::get('genre_name');
        $genre->genre_name_en = Input::get('genre_name_en');
        $genre->optionValid = Input::get('optionValid');
        $genre->save();
        return Redirect::to('admin/genre/list');
    }

    public function list() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $genres = Genres::get();
        return view('admin.genre.list')->with('genres', $genres);
    }

    public function edit($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $malls = Malls::get();
        $genre = Genres::find($id);
        return view('admin.genre.edit')->with('genre', $genre)->with('malls', $malls);
    }

    public function editpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $id = Input::get('genre_id');
        $genre = Genres::find($id);
        $genre->mall_id = Input::get('select_mall');
        $genre->genre_name = Input::get('genre_name');
        $genre->genre_name_en = Input::get('genre_name_en');
        $genre->optionValid = Input::get('optionValid');
        $genre->save();
        return Redirect::to('admin/genre/list');
    }

    public function delete($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        Genres::find($id)->delete();
        return Redirect::to('admin/genre/list');
    }
}
