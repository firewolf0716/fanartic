<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Malls;
use App\Models\Categorys;
use App\Models\Sizes;
use App\Models\SizeCategory;
use App\Models\MallCategorys;
use App\Services\CategoryService;
use App\Services\MatchService;

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

    public function addmain($topId) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $topCategory = Categorys::find($topId);
        $sizeCategorys = SizeCategory::get();

        return view('admin.category.add')->with('toptitle', 'メインカテゴリを追加')
                                        ->with('title', 'メインカテゴリを追加 (' . $topCategory->category_name . ')')
                                        ->with('categorylevel', 2)
                                        ->with('topcategoryid', $topId)
                                        ->with('maincategoryid', 0)
                                        ->with('sizecategorys', $sizeCategorys);
    }

    public function add($topid, $mainid) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $topcategory = Categorys::find($topid);
        $maincategory = Categorys::find($mainid);

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

        $categoryId = Input::get('topcategoryid');
        $mainCategoryId = Input::get('maincategoryid');
        $categoryLevel = Input::get('categorylevel');

        if ($categoryLevel == 1) {
            $parentId = 0;
        } else if ($categoryLevel == 2) {
            $parentId = $categoryId;
        } else {
            $parentId = $mainCategoryId;
        }

        $category = new Categorys();
        $category->category_parent_id = $parentId;
        $category->category_size_id = Input::get('select_sizecategory');
        $category->category_name = Input::get('category_name');
        $category->category_name_en = Input::get('category_name_en');
        $category->save();

        if ($categoryId == 0) {
            return Redirect::to('admin/category/list');
        } else if ($mainCategoryId == 0) {
            return Redirect::to('admin/category/add/' . $categoryId);
        } else {
            return Redirect::to('admin/category/add/' . $categoryId . '/' . $mainCategoryId);
        }
    }

    public function listtop() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $categorys = CategoryService::getTopCategorys();
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

        $categorys = CategoryService::getMainCategorys($topid);
        $topcategory = Categorys::find($topid);
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

        $categorys = CategoryService::getSubCategorys($mainid);
        $topcategory = Categorys::find($topid);
        $maincategory = Categorys::find($mainid);
        return view('admin.category.list')->with('categorys', $categorys)
                                        ->with('categorylevel', 3)
                                        ->with('topcategoryid', $topid)
                                        ->with('maincategoryid', $mainid)
                                        ->with('toptitle', 'サブカテゴリ一覧')
                                        ->with('title', 'サブカテゴリ一覧 ('.$topcategory->category_name.' > '.$maincategory->category_name.')');
    }

    public function getTopCategorys() {
        $topCategorys = CategoryService::getTopCategorys();
        return $topCategorys;
    }

    public function getMainCategorys($topCategoryId) {
        $mainCategorys = CategoryService::getMainCategorys($topCategoryId);
        return $mainCategorys;
    }
    
    public function getSubCategorys($mainCategoryId) {
        $mainCategorys = CategoryService::getSubCategorys($mainCategoryId);
        return $mainCategorys;
    }

    public function edittop($topid) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $category = Categorys::find($topid);
      
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

        $category = Categorys::find($mainid);
        $malls = Malls::get();
        $sizeCategorys = Sizes::get();
        $linkedMalls = MatchService::get_malls_bycategory($mainid);
        $topCategorys = $this->getTopCategorys();
        $topCategory = Categorys::find($topid);

        if(isset($category)){
            return view('admin.category.edit')->with('category', $category)
                                            ->with('toptitle', 'メインカテゴリを編集')
                                            ->with('title', 'メインカテゴリを編集 (' . $topCategory->category_name . ')')
                                            ->with('categorylevel', 2)
                                            ->with('topcategoryid', $topid)
                                            ->with('maincategoryid', 0)
                                            ->with('malls', $malls)
                                            ->with('linkedMalls', $linkedMalls)
                                            ->with('sizecategorys', $sizeCategorys)
                                            ->with('topCategorys', $topCategorys);
        } else {
            return Redirect::to('admin/category/list');
        }
    }

    public function edit($topid, $mainid, $id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $category = Categorys::find($id);
        $malls = Malls::get();
        
        $linkedMalls = MallCategorys::get_malls($id);
        $topCategorys = $this->getTopCategorys();
        $topcategory = Categorys::find($topid);
        $maincategory = Categorys::find($mainid);

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

        $category = Categorys::find($id);
        if ($category == null) {
            return Redirect::to('admin/category/list');
        }

        $parent_category_id = $category->category_parent_id;
        $parent_parent_category_id = 0;

        if ($parent_category_id == "" || $parent_category_id == 0 || $parent_category_id == NULL) {
            $parent_category_id = 0;
        } else {
            $parent_category = Categorys::find($parent_category_id);
            $parent_parent_category_id = $parent_category->category_parent_id;

            if ($parent_parent_category_id == "" || $parent_parent_category_id == 0 || $parent_parent_category_id == NULL) {
                $parent_parent_category_id = 0;
            }
        }

        if ($parent_category_id == 0) {
            $subCategorys = CategoryService::getMainCategorys($id);
            foreach ($subCategorys as $subCategory) {
                Categorys::find($subCategory->category_id)->delete();
                MatchService::remove_malls($subCategory->category_id);
            }

            Categorys::find($id)->delete();
            MatchService::remove_malls_bycategory($id);
        } else {
            Categorys::find($id)->delete();
            MatchService::remove_malls_bycategory($id);
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

        $id = Input::get('category_id');
        $category = Categorys::find($id);
        $category->category_parent_id = $parentid;
        $category->category_size_id = Input::get('select_sizecategory');
        $category->category_name = Input::get('category_name');
        $category->category_name_en = Input::get('category_name_en');
        $category->save();

        if ($topcategoryid == 0) {
            return Redirect::to('admin/category/list');
        } else if ($maincategoryid == 0) {
            return Redirect::to('admin/category/list/'.$topcategoryid);
        } else {
            return Redirect::to('admin/category/list/'.$topcategoryid.'/'.$maincategoryid);
        }
    }

    public function getSizeCategory($maincategoryid) {
        $maincategory = Categorys::find($maincategoryid);
 
        if ($maincategory == null || $maincategory == '') {
            return '';
        }

        $maincategorysize = $maincategory->category_size_id;
        return $maincategorysize;
    }
}
