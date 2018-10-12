<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Brands;
use App\Models\News;

class NewsController extends Controller
{
    const IMG_PATH = './images/news/';

    public function add() {
        $brands = Brands::get();
        return view('admin.news.add')->with('brands', $brands);
    }

    public function addpost() {
        $brand_id = Input::get('brand_id');
        $upload_img = Input::file('figure');

        $figure = 'news_'.$brand_id.'_'.uniqid().'.'.strtolower($upload_img->getClientOriginalExtension());
        $uploadSuccess = $upload_img->move(self::IMG_PATH, $figure);
        if (!$uploadSuccess) return FALSE;

        $news = new News();
        $news->b_id = $brand_id;
        $news->date = Input::get('date');
        $news->figure = $figure;       
        $news->news = Input::get('news');
        $news->save();
        
        return Redirect::to('admin/news/list');
    }

    public function list() {
        $brands = Brands::get();
        $newses = News::get();
        foreach ($newses as $news) {
            foreach ($brands as $brand) {
                if ($brand->brand_id == $news->b_id) {
                    $news['b_name'] = $brand->brand_name_en;
                }
            }
        }  
        return view('admin.news.list')->with('newses', $newses);
    }

    public function edit($id) {
        $news = News::find((int)$id);
        $brands = Brands::get();
        return view('admin.news.edit')->with('news', $news)
                                    ->with('brands', $brands);
    }

    public function editpost() {
        $brand_id = Input::get('brand_id');
        $upload_img = Input::file('figure');

        $id = Input::get('id');

        $news = News::find($id);
        $news->b_id = $brand_id;
        if ($upload_img) {
            $imgPath = "./images/news/" . $news->figure;
            if ($news->figure && file_exists($imgPath)) {
                unlink($imgPath);   
            }

            $figure = 'news_'.$brand_id.'_'.uniqid().'.'.strtolower($upload_img->getClientOriginalExtension());
            $uploadSuccess = $upload_img->move(self::IMG_PATH, $figure);
            if (!$uploadSuccess) return FALSE;
            $news->figure = $figure;
        }
        $news->date = Input::get('date');        
        $news->news = Input::get('news');
        $news->save();

        return Redirect::to('admin/news/list');
    }

    public function delete($id) {
        $news = News::find($id);
        $imgPath = "./images/news/" . $news->figure;
        if ($news->figure && file_exists($imgPath)) {
            unlink($imgPath);   
        }
        News::find($id)->delete();
        return Redirect::to('admin/news/list');
    }
}
