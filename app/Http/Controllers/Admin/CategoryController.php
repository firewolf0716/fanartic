<?php

namespace App\Http\Controllers\Admin;

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

        $topcategory = Categorys::get_category($topid);
        $sizecategorys = Sizes::get_sizecategorys();

        return view('admin.category.add')->with('toptitle', 'メインカテゴリを追加')
                                        ->with('title', 'メインカテゴリを追加 ('.$topcategory->category_name.')')
                                        ->with('categorylevel', 2)
                                        ->with('topcategoryid', $topid)
                                        ->with('maincategoryid', 0)
                                        ->with('sizecategorys', $sizecategorys);
    }

    public function add($topid, $mainid) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $topcategory = Categorys::get_category($topid);
        $maincategory = Categorys::get_category($mainid);

        return view('admin.category.add')->with('toptitle', 'サブカテゴリを追加')
                                        ->with('title', 'サブカテゴリを追加 ('.$topcategory->category_name.' > '.$maincategory->category_name.')')
                                        ->with('categorylevel', 3)
                                        ->with('topcategoryid', $topid)
                                        ->with('maincategoryid', $mainid);
    }

    public function addpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $topcategoryid = Input::get('topcategoryid');
        $maincategoryid = Input::get('maincategoryid');
        $categorylevel = Input::get('categorylevel');
        $parentid = 0;
        if ($categorylevel == 1) {
            $parentid = 0;
        } else if ($categorylevel == 2) {
            $parentid = $topcategoryid;
        } else {
            $parentid = $maincategoryid;
        }
        $entry =  array(
            'category_parent_id' => $parentid,
            'category_size_id' => Input::get('select_sizecategory'),
            'category_name' => Input::get('category_name'),
            'category_name_en' => Input::get('category_name_en'),
            'created_at' => Input::get('create_date'),
            'updated_at' => Input::get('update_date')
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

        $categorys = Categorys::getTopCategorys();
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

        $categorys = Categorys::getMainCategorys($topid);
        $topcategory = Categorys::get_category($topid);
        return view('admin.category.list')->with('categorys', $categorys)
                                        ->with('categorylevel', 2)
                                        ->with('topcategoryid', $topid)
                                        ->with('maincategoryid', 0)
                                        ->with('toptitle', '主なカテゴリ一覧')
                                        ->with('title', '主なカテゴリ一覧 ('.$topcategory->category_name.')');
    }

    public function list($topid, $mainid) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $categorys = Categorys::getSubCategorys($mainid);
        $topcategory = Categorys::get_category($topid);
        $maincategory = Categorys::get_category($mainid);
        return view('admin.category.list')->with('categorys', $categorys)
                                        ->with('categorylevel', 3)
                                        ->with('topcategoryid', $topid)
                                        ->with('maincategoryid', $mainid)
                                        ->with('toptitle', 'サブカテゴリ一覧')
                                        ->with('title', 'サブカテゴリ一覧 ('.$topcategory->category_name.' > '.$maincategory->category_name.')');
    }

    public function getTopCategorys() {
        $topCategorys = Categorys::getTopCategorys();
        return $topCategorys;
    }

    public function getMainCategorys($topCategoryId) {
        $mainCategorys = Categorys::getMainCategorys($topCategoryId);
        return $mainCategorys;
    }
    
    public function getSubCategorys($mainCategoryId) {
        $mainCategorys = Categorys::getSubCategorys($mainCategoryId);
        return $mainCategorys;
    }

    public function edittop($topid) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $category = Categorys::get_category($topid);
      
        if(isset($category)){
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

        $category = Categorys::get_category($mainid);
        $malls = Malls::get_malls();
        $sizecategorys = Sizes::get_sizecategorys();
        $linkedMalls = MallCategorys::get_malls($mainid);
        $topCategorys = $this->getTopCategorys();
        $topcategory = Categorys::get_category($topid);

        if(isset($category)){
            return view('admin.category.edit')->with('category', $category)
                                            ->with('toptitle', 'メインカテゴリを編集')
                                            ->with('title', 'メインカテゴリを編集 ('.$topcategory->category_name.')')
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

        $category = Categorys::get_category($id);
        $malls = Malls::get_malls();
        
        $linkedMalls = MallCategorys::get_malls($id);
        $topCategorys = $this->getTopCategorys();
        $topcategory = Categorys::get_category($topid);
        $maincategory = Categorys::get_category($mainid);

        if(isset($category)){
            return view('admin.category.edit')->with('category', $category)
                                            ->with('toptitle', 'サブカテゴリ編集')
                                            ->with('title', 'サブカテゴリ編集 ( '.$topcategory->category_name.' > '.$maincategory->category_name.' )')
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

        $category = Categorys::get_category($id);
        if ($category == null) {
            return Redirect::to('admin/category/list');
        }

        $parent_category_id = $category->category_parent_id;
        $parent_parent_category_id = 0;

        if ($parent_category_id == "" || $parent_category_id == 0 || $parent_category_id == NULL) {
            $parent_category_id = 0;
        } else {
            $parent_category = Categorys::get_category($parent_category_id);
            $parent_parent_category_id = $parent_category->category_parent_id;

            if ($parent_parent_category_id == "" || $parent_parent_category_id == 0 || $parent_parent_category_id == NULL) {
                $parent_parent_category_id = 0;
            }
        }

        if ($parent_category_id == 0) {
            $subCategorys = Categorys::getMainCategorys($id);
            foreach ($subCategorys as $subCategory) {
                Categorys::remove($subCategory->category_id);
                MallCategorys::remove_malls($subCategory->category_id);
            }

            Categorys::remove($id);
            MallCategorys::remove_malls($id);
        } else {
            Categorys::remove($id);
            MallCategorys::remove_malls($id);
        }

        if ($parent_category_id == 0) {
            return Redirect::to('admin/category/list');
        } else if ($parent_parent_category_id == 0) {
            return Redirect::to('admin/category/list/'.$parent_category_id);
        } else {
            return Redirect::to('admin/category/list/'.$parent_parent_category_id.'/'.$parent_category_id);
        }
    }

    public function editpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }
                
        $topcategoryid = Input::get('topcategoryid');
        $maincategoryid = Input::get('maincategoryid');
        $categorylevel = Input::get('categorylevel');
        $parentid = 0;
        if ($categorylevel == 1) {
            $parentid = 0;
        } else if ($categorylevel == 2) {
            $parentid = $topcategoryid;
        } else {
            $parentid = $maincategoryid;
        }
        $entry =  array(
            'category_parent_id' => $parentid,
            'category_size_id' => Input::get('select_sizecategory'),
            'category_name' => Input::get('category_name'),
            'category_name_en' => Input::get('category_name_en'),
            'created_at' => Input::get('create_date'),
            'updated_at' => Input::get('update_date')
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

    public function getSizeCategory($maincategoryid) {
        $maincategory = Categorys::get_category($maincategoryid);
 
        if ($maincategory == null || $maincategory == '') {
            return '';
        }

        $maincategorysize = $maincategory->category_size_id;
        return $maincategorysize;
    }
}
