<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Categorys;
use App\Sizes;
use App\Colors;
use App\Products;

class CustomerController extends Controller
{
    //
    public function index(){
        
    }

    public function product_list($topid = null, $mainid = null, $categoryid = null){
        $topcategorys = Categorys::getTopCategorys();
        $topcategory = null;
        if($topid == null){
            $topcategory = $topcategorys[0];
        }
        else {
            $topcategory = Categorys::get_categoryinfo($topid)->first();
        }
        $maincategorys = Categorys::getMainCategorys($topcategory->category_id);
        $subcategorys = array();
        foreach($maincategorys as $maincategory){
            $result = Categorys::getSubCategorys($topcategory->category_id, $maincategory->category_id);
            $subcategorys[$maincategory->category_id] = $result;
        }
        $colors = Colors::get_colors();
        $sizes = null;
        if($categoryid != null){
            $category = Categorys::get_categoryinfo($categoryid)->first();
            $sizecategory_id = $category->category_size_id;
            $sizes = Sizes::get_sizebycategory($sizecategory_id);
        }
        $mcategory = null;
        if($mainid != null){
            $mcategory = Categorys::get_categoryinfo($mainid)->first();
        }
        $scategory = null;
        if($categoryid != null){
            $scategory = Categorys::get_categoryinfo($categoryid)->first();
        }

        $products = null;
        $filtercategory = $topcategory->category_id;
        $categorylevel = 1;
        if($mcategory != null){
            $filtercategory = $mcategory->category_id;
            $categorylevel = 2;
        }
        if($scategory != null){
            $filtercategory = $scategory->category_id;
            $categorylevel = 3;
        }
        $filtersize = null; $filtercolor = null; $rangemin = null; $rangemax = null;
        if(isset($_GET['sizeid'])){ $filtersize = $_GET['sizeid']; }
        if(isset($_GET['colorid'])){ $filtercolor = $_GET['colorid']; }
        if(isset($_GET['rangemin'])){ $rangemin = $_GET['rangemin']; }
        if(isset($_GET['rangemax'])){ $rangemax = $_GET['rangemax']; }
        $products = Products::get_product_filter($categorylevel ,$filtercategory, $filtersize, $filtercolor, $rangemin, $rangemax);

        $mencategories = Categorys::getMainCategorys($topcategorys[0]->category_id);
        $womencategories = Categorys::getMainCategorys($topcategorys[1]->category_id);

        return view('customer.products.product_list')->with('topcategory', $topcategory)
            ->with('maincategorys', $maincategorys)
            ->with('mcategory', $mcategory)
            ->with('scategory', $scategory)
            ->with('subcategorys', $subcategorys)
            ->with('sizes', $sizes)
            ->with('colors', $colors)
            ->with('products', $products)
            ->with('mencategories', $mencategories)
            ->with('womencategories', $womencategories);
    }

    public function product_list_post(){
        $url = 'customer/product/list/' . Input::get('tcategory_id');
        if(Input::has('mcategory_id')){
            $url .= '/'. Input::get('mcategory_id');
        }
        if(Input::has('scategory_id')){
            $url .= '/'. Input::get('scategory_id');
        }
        $url .= '?sizeid='. Input::get('size_id');
        $url .= '&colorid='. Input::get('color_id');
        $url .= '&rangemin='. Input::get('rangemin');
        $url .= '&rangemax='. Input::get('rangemax');
        Log::debug(Input::all());
        return Redirect::to($url);
    }

    public function product_detail($productid){
        $topcategorys = Categorys::getTopCategorys();
        $mencategories = Categorys::getMainCategorys($topcategorys[0]->category_id);
        $womencategories = Categorys::getMainCategorys($topcategorys[1]->category_id);

        $product = Products::get_product_detail($productid)->first();
        $tcategory = Categorys::get_categoryinfo($product->product_top_category_id)->first();
        $mcategory = Categorys::get_categoryinfo($product->product_main_category_id)->first();
        $scategory = Categorys::get_categoryinfo($product->product_category_id)->first();
        return view('customer.products.product_detail')->with('product', $product)
            ->with('tcategory', $tcategory)
            ->with('mcategory', $mcategory)
            ->with('scategory', $scategory)
            ->with('mencategories', $mencategories)
            ->with('womencategories', $womencategories);
    }

    public function signup(){
        return view('customer.user.signup');
    }

    public function user(){
        if (Session::has('customerid')) {
            return Redirect::to('customer/profile');
        } else {
            
        }
    }
}
