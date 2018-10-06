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
        $malls = Malls::get();
        return view('admin.genre.add')->with('malls', $malls);
    }

    public function addpost() {
        $genre = new Genres();
        $genre->mall_id = Input::get('select_mall');
        $genre->genre_name = Input::get('genre_name');
        $genre->genre_name_en = Input::get('genre_name_en');
        $genre->genre_status = Input::get('optionValid');
        $genre->save();
        return Redirect::to('admin/genre/list');
    }

    public function list() {
        $genres = Genres::get();
        return view('admin.genre.list')->with('genres', $genres);
    }

    public function edit($id) {
        $malls = Malls::get();
        $genre = Genres::find($id);
        return view('admin.genre.edit')->with('genre', $genre)->with('malls', $malls);
    }

    public function editpost() {
        $id = Input::get('genre_id');
        /** @var Genres $genre */
        $genre = Genres::find($id);
        $genre->mall_id = Input::get('select_mall');
        $genre->genre_name = Input::get('genre_name');
        $genre->genre_name_en = Input::get('genre_name_en');
        $genre->genre_status = Input::get('optionValid');
        $genre->save();
        return Redirect::to('admin/genre/list');
    }

    public function delete($id) {
        Genres::find($id)->delete();
        return Redirect::to('admin/genre/list');
    }
}
