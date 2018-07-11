<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Malls;
use App\Categorys;
use App\Sizes;
use App\MallCategorys;

class CategoryController extends Controller
{
    public function addtop() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        return view('admin.category.add')->with('toptitle', 'トップカテゴリを追加')
                                        ->with('title', 'トップカテゴリを追加')
                                        ->with('categorylevel', 1)
                                        ->with('topcategoryid', 0)
                                        ->with('maincategoryid', 0);
    }

    public function addmain($topid) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $malls = Malls::get_malls();
        $topcategory = Categorys::get_categorys(0, 0, $topid);
        $linkedMalls = MallCategorys::get_malls($topid);
        $sizecategorys = Sizes::get_sizecategorys();

        return view('admin.category.add')->with('toptitle', 'メインカテゴリを追加')
                                        ->with('title', 'メインカテゴリを追加 ('.$topcategory[0]->category_name.')')
                                        ->with('categorylevel', 2)
                                        ->with('topcategoryid', $topid)
                                        ->with('maincategoryid', 0)
                                        ->with('linkedMalls', $linkedMalls)
                                        ->with('malls', $malls)
                                        ->with('sizecategorys', $sizecategorys);
    }

    public function add($topid, $mainid) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $malls = Malls::get_malls();
        $topcategory = Categorys::get_categorys(0, 0, $topid);
        $maincategory = Categorys::get_categorys(0, 0, $mainid);
        $linkedMalls = MallCategorys::get_malls($mainid);

        return view('admin.category.add')->with('toptitle', 'サブカテゴリを追加')
                                        ->with('title', 'サブカテゴリを追加 ('.$topcategory[0]->category_name.' > '.$maincategory[0]->category_name.')')
                                        ->with('categorylevel', 3)
                                        ->with('topcategoryid', $topid)
                                        ->with('maincategoryid', $mainid)
                                        ->with('malls', $malls)
                                        ->with('linkedMalls', $linkedMalls);
    }

    public function addpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $topcategoryid = Input::get('topcategoryid');
        $maincategoryid = Input::get('maincategoryid');
        $entry =  array(
            'top_category_id' => $topcategoryid,
            'main_category_id' => $maincategoryid,
            'category_size_id' => Input::get('select_sizecategory'),
            'category_name' => Input::get('category_name'),
            'category_name_en' => Input::get('category_name_en'),
            'category_create' => Input::get('create_date'),
            'category_update' => Input::get('update_date')
        );
 
        $id = Categorys::insert_category($entry);

        // if(Input::has('category_mall')){
        //     $malls = Input::get('category_mall');
        //     foreach($malls as $mall){
        //         $mentry = array(
        //             'mall_id' => $mall,
        //             'category_id' => $id
        //         );
        //         MallCategorys::insert_match($mentry);
        //     }
        // }
        if ($topcategoryid == 0) {
            return Redirect::to('admin/category/add');
        } else if ($maincategoryid == 0) {
            return Redirect::to('admin/category/add/'.$topcategoryid);
        } else {
            return Redirect::to('admin/category/add/'.$topcategoryid.'/'.$maincategoryid);
        }
    }

    public function listtop() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $categorys = Categorys::get_categorys(0, 0, 0);
        return view('admin.category.list')->with('categorys', $categorys)
                                        ->with('categorylevel', 1)
                                        ->with('topcategoryid', 0)
                                        ->with('maincategoryid', 0)
                                        ->with('toptitle', 'トップカテゴリ一覧')
                                        ->with('title', 'トップカテゴリ一覧');
    }
    
    public function listmain($topid) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $categorys = Categorys::get_categorys($topid, 0, 0);
        $topcategory = Categorys::get_categorys(0, 0, $topid);
        return view('admin.category.list')->with('categorys', $categorys)
                                        ->with('categorylevel', 2)
                                        ->with('topcategoryid', $topid)
                                        ->with('maincategoryid', 0)
                                        ->with('toptitle', '主なカテゴリ一覧')
                                        ->with('title', '主なカテゴリ一覧 ('.$topcategory[0]->category_name.')');
    }

    public function list($topid, $mainid) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $categorys = Categorys::get_categorys($topid, $mainid, 0);
        $topcategory = Categorys::get_categorys(0, 0, $topid);
        $maincategory = Categorys::get_categorys(0, 0, $mainid);
        return view('admin.category.list')->with('categorys', $categorys)
                                        ->with('categorylevel', 3)
                                        ->with('topcategoryid', $topid)
                                        ->with('maincategoryid', $mainid)
                                        ->with('toptitle', 'サブカテゴリ一覧')
                                        ->with('title', 'サブカテゴリ一覧 ('.$topcategory[0]->category_name.' > '.$maincategory[0]->category_name.')');
    }

    public function getTopCategorys() {
        $topCategorys = Categorys::getTopCategorys();
        return $topCategorys;
    }

    public function getMainCategorys($topCategoryId) {
        $mainCategorys = Categorys::getMainCategorys($topCategoryId);
        return $mainCategorys;
    }
    
    public function getSubCategorys($topCategoryId, $mainCategoryId) {
        $mainCategorys = Categorys::getSubCategorys($topCategoryId, $mainCategoryId);
        return $mainCategorys;
    }

    public function edittop($topid) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $search = Categorys::get_categorys(0, 0, $topid);
        $topCategorys = $this->getTopCategorys();
      
        if(isset($search)){
            $category = $search[0];
            return view('admin.category.edit')->with('category', $category)
                                            ->with('toptitle', 'トップカテゴリを編集')
                                            ->with('title', 'トップカテゴリを編集')
                                            ->with('categorylevel', 1)
                                            ->with('topcategoryid', 0)
                                            ->with('maincategoryid', 0);
        } else {
            return Redirect::to('admin/category/list');
        }
    }

    public function editmain($topid, $mainid) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $search = Categorys::get_categorys(0, 0, $mainid);
        $malls = Malls::get_malls();
        $sizecategorys = Sizes::get_sizecategorys();
        $linkedMalls = MallCategorys::get_malls($mainid);
        $topCategorys = $this->getTopCategorys();
        $topcategory = Categorys::get_categorys(0, 0, $topid);

        if(isset($search)){
            $category = $search[0];
            return view('admin.category.edit')->with('category', $category)
                                            ->with('toptitle', 'メインカテゴリを編集')
                                            ->with('title', 'メインカテゴリを編集 ('.$topcategory[0]->category_name.')')
                                            ->with('categorylevel', 2)
                                            ->with('topcategoryid', $topid)
                                            ->with('maincategoryid', 0)
                                            ->with('malls', $malls)
                                            ->with('linkedMalls', $linkedMalls)
                                            ->with('sizecategorys', $sizecategorys)
                                            ->with('topCategorys', $topCategorys);
        } else {
            return Redirect::to('admin/category/list');
        }
    }

    public function edit($topid, $mainid, $id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $search = Categorys::get_categorys(0, 0, $id);
        $malls = Malls::get_malls();
        
        $linkedMalls = MallCategorys::get_malls($id);
        $topCategorys = $this->getTopCategorys();
        $topcategory = Categorys::get_categorys(0, 0, $topid);
        $maincategory = Categorys::get_categorys(0, 0, $mainid);

        if(isset($search)){
            $category = $search[0];
            return view('admin.category.edit')->with('category', $category)
                                            ->with('toptitle', 'サブカテゴリ編集')
                                            ->with('title', 'サブカテゴリ編集 ( '.$topcategory[0]->category_name.' > '.$maincategory[0]->category_name.' )')
                                            ->with('categorylevel', 3)
                                            ->with('topcategoryid', $topid)
                                            ->with('maincategoryid', $mainid)
                                            ->with('malls', $malls)
                                            ->with('linkedMalls', $linkedMalls)
                                            ->with('topCategorys', $topCategorys);
        } else {
            return Redirect::to('admin/category/list');
        }
    }

    public function delete($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $category = Categorys::get_categorys(0, 0, $id)[0];
        Categorys::remove($id);
        MallCategorys::remove_malls($id);

        if ($category->top_category_id == 0) {
            return Redirect::to('admin/category/list');
        } else if ($category->main_category_id == 0) {
            return Redirect::to('admin/category/list/'.$category->top_category_id);
        } else {
            return Redirect::to('admin/category/list/'.$category->top_category_id.'/'.$category->main_category_id);
        }
    }

    public function editpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }
                
        $topcategoryid = Input::get('topcategoryid');
        $maincategoryid = Input::get('maincategoryid');

        $entry =  array(
            'main_category_id' => $maincategoryid,
            'category_size_id' => Input::get('select_sizecategory'),
            'top_category_id' => $topcategoryid,
            'category_name' => Input::get('category_name'),
            'category_name_en' => Input::get('category_name_en'),
            'category_create' => Input::get('create_date'),
            'category_update' => Input::get('update_date')
        );
        $id = Input::get('category_id');
        Categorys::edit_category($entry, $id);

        // MallCategorys::remove_malls($id);
        // if(Input::has('category_mall')){
        //     $malls = Input::get('category_mall');
        //     foreach($malls as $mall){
        //         $mentry = array(
        //             'mall_id' => $mall,
        //             'category_id' => $id
        //         );
        //         MallCategorys::insert_match($mentry);
        //     }
        // }

        if ($topcategoryid == 0) {
            return Redirect::to('admin/category/list');
        } else if ($maincategoryid == 0) {
            return Redirect::to('admin/category/list/'.$topcategoryid);
        } else {
            return Redirect::to('admin/category/list/'.$topcategoryid.'/'.$maincategoryid);
        }
    }
}
