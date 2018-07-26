<?php

namespace App\Http\Controllers;

use Session;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Categorys;
use App\Sizes;
use App\Colors;
use App\Products;
use App\Customers;
use App\Brands;
use App\ProductSKU;
use App\ProductStock;
use App\Cart;
use App\Malls;
use App\MallBrands;
use App\States;

class CustomerController extends Controller
{
    //
    public function index(){
        $malls = Malls::get_malls();
        return $this->layout_init(view('customer.top'), 1)
                ->with('malls', $malls);
    }

    public function mall($mallname){
        $mall = Malls::get_mall_byname($mallname);
        // dd($mallname);
        if($mallname == 'admin'){
            return Redirect::to('admin/login');
        } else if($mallname == 'merchant'){
            return Redirect::to('merchant/signin');
        } else if($mallname == 'designer'){
            // return Redirect::to('brands');
            // return redirect()->action('CustomerController@brands');
            return $this->brands();
        }
        else {
            // return Redirect::to($mallname.'/good/list/1');
            return $this->mall_product_list($mallname);
        }
    }

    public function brands(){
        $brands = Brands::get_brands();
        return $this->layout_init(view('customer.brand'), 1)
                ->with('brands', $brands);
    }

    public function brand($brandid){
        return $this->product_list_brand($brandid);
        // return Redirect::to('designer/'.$brandid.'/good/list/1');
    }

    public function layout_init($view, $gender){
        $topcategorys = Categorys::getTopCategorys();
        $mencategories = Categorys::getMainCategorys($topcategorys[0]->category_id);
        $womencategories = Categorys::getMainCategorys($topcategorys[1]->category_id);
        $maincategorys = Categorys::getMainCategorys($topcategorys[0]->category_id);
        $tcategory = $topcategorys[0];
        if($gender == 2){
            $tcategory = $topcategorys[1];
            $maincategorys = Categorys::getMainCategorys($topcategorys[1]->category_id);
        }

        $brands = Brands::get_brands();

        $customerid = null;
        $recent = null;
        $images = null;
        if (Session::has('customerid')) {
            $customerid = Session::get('customerid');
            $recent = Customers::get_recent($customerid);
            $images = array();
            foreach($recent as $product){
                $imagerec = Products::get_master_images($product->product_id);
                // dd($imagerec);
                $images[$product->product_id] = $imagerec;
            }

        }
        return $view->with('mencategories', $mencategories)
                ->with('womencategories', $womencategories)
                ->with('brands', $brands)
                ->with('tcategory', $tcategory)
                ->with('maincategorys', $maincategorys)
                ->with('customerid', $customerid)
                ->with('recent', $recent)
                ->with('recentimages', $images);
    }

    public function set_recent($view){
        $recent = null;
        $images = null;
        if (Session::has('customerid')) {
            $customerid = Session::get('customerid');
            $recent = Customers::get_recent($customerid);
            $images = array();
            foreach($recent as $product){
                $imagerec = Products::get_master_images($product->product_id);
                // dd($imagerec);
                $images[$product->product_id] = $imagerec;
            }
        }
        return $view->with('recent', $recent)
                    ->with('recentimages', $images);
    }

    public function mall_product_list($mallname, $topid = null, $mainid = null, $categoryid = null){
        $mall = Malls::get_mall_byname($mallname);
        $topcategorys = Categorys::getTopCategorys();
        $topcategory = null;
        if($topid == null){
            $topcategory = $topcategorys[0];
        }
        else {
            if($topid == "men"){ $topcategory = Categorys::get_category(1);}
            else if($topid == "women"){$topcategory = Categorys::get_category(2);}
        }
        $maincategorys = Categorys::getMainCategorys_mall($mall->mall_id, $topcategory->category_id);
        $subcategorys = array();
        foreach($maincategorys as $maincategory){
            $result = Categorys::getSubCategorys_mall_frommain($mall->mall_id, $maincategory->category_id);
            $subcategorys[$maincategory->category_id] = $result;
        }
        $colors = Colors::get_colors();
        $sizes = null;
        $mcategory = null;
        if($mainid != null){
            $mcategory = Categorys::get_category_byname($topcategory->category_id, str_replace('-', '/', $mainid));
            $sizecategory_id = $mcategory->category_size_id;
            $sizes = Sizes::get_sizes_with_category($sizecategory_id);
        }
        $scategory = null;
        if($categoryid != null){
            $scategory = Categorys::get_category_byname($mcategory->category_id, str_replace('-', '/', $categoryid));
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
        if(isset($_GET['sizeid']) && $_GET['sizeid'] != ''){ $filtersize = $_GET['sizeid']; }
        if(isset($_GET['colorid']) && $_GET['colorid'] != ''){ $filtercolor = $_GET['colorid']; }
        if(isset($_GET['rangemin']) && $_GET['rangemin'] != ''){ $rangemin = $_GET['rangemin']; }
        if(isset($_GET['rangemax']) && $_GET['rangemax'] != ''){ $rangemax = $_GET['rangemax']; }
        $products = Products::get_product_filter_mall($mall->mall_id, $categorylevel ,$filtercategory, $filtersize, $filtercolor, $rangemin, $rangemax);

        $prices = array(); $images = array();
        foreach($products as $product){
            $price = ProductStock::get_price_range($product->product_id);
            $prices[$product->product_id] = $price;

            $imagerec = Products::get_master_images($product->product_id);
            // dd($imagerec);
            $images[$product->product_id] = $imagerec;
        }

        $mencategories = Categorys::getMainCategorys_mall($mall->mall_id, $topcategorys[0]->category_id);
        $womencategories = Categorys::getMainCategorys_mall($mall->mall_id, $topcategorys[1]->category_id);

        $brands = MallBrands::get_brands($mall->mall_id);

        $customerid = null;
        if (Session::has('customerid')) {
            $customerid = Session::get('customerid');
        }

        $view = view('customer.products.product_list')->with('tcategory', $topcategory)
            ->with('maincategorys', $maincategorys)
            ->with('mcategory', $mcategory)
            ->with('scategory', $scategory)
            ->with('subcategorys', $subcategorys)
            ->with('sizes', $sizes)
            ->with('colors', $colors)
            ->with('products', $products)
            ->with('mencategories', $mencategories)
            ->with('womencategories', $womencategories)
            ->with('brands', $brands)
            ->with('prices', $prices)
            ->with('images', $images)
            ->with('mallname', $mallname)
            ->with('customerid', $customerid);
        return $this->set_recent($view);
    }

    public function product_list($topid = null, $mainid = null, $categoryid = null){
        $topcategorys = Categorys::getTopCategorys();
        $topcategory = null;
        if($topid == null){
            $topcategory = $topcategorys[0];
        }
        else {
            $topcategory = Categorys::get_category($topid);
        }
        $maincategorys = Categorys::getMainCategorys($topcategory->category_id);
        $subcategorys = array();
        foreach($maincategorys as $maincategory){
            $result = Categorys::getSubCategorys($maincategory->category_id);
            $subcategorys[$maincategory->category_id] = $result;
        }
        $colors = Colors::get_colors();
        $sizes = null;
        if($mainid != null){
            $category = Categorys::get_category($mainid);
            $sizecategory_id = $category->category_size_id;
            $sizes = Sizes::get_sizes_with_category($sizecategory_id);
        }
        $mcategory = null;
        if($mainid != null){
            $mcategory = Categorys::get_category($mainid);
        }
        $scategory = null;
        if($categoryid != null){
            $scategory = Categorys::get_category($categoryid);
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
        if(isset($_GET['sizeid']) && $_GET['sizeid'] != ''){ $filtersize = $_GET['sizeid']; }
        if(isset($_GET['colorid']) && $_GET['colorid'] != ''){ $filtercolor = $_GET['colorid']; }
        if(isset($_GET['rangemin']) && $_GET['rangemin'] != ''){ $rangemin = $_GET['rangemin']; }
        if(isset($_GET['rangemax']) && $_GET['rangemax'] != ''){ $rangemax = $_GET['rangemax']; }
        $products = Products::get_product_filter($categorylevel ,$filtercategory, $filtersize, $filtercolor, $rangemin, $rangemax);

        $prices = array(); $images = array();
        foreach($products as $product){
            $price = ProductStock::get_price_range($product->product_id);
            $prices[$product->product_id] = $price;

            $imagerec = Products::get_master_images($product->product_id);
            // dd($imagerec);
            $images[$product->product_id] = $imagerec;
        }

        $mencategories = Categorys::getMainCategorys($topcategorys[0]->category_id);
        $womencategories = Categorys::getMainCategorys($topcategorys[1]->category_id);

        $brands = Brands::get_brands();

        $customerid = null;
        if (Session::has('customerid')) {
            $customerid = Session::get('customerid');
        }

        $view = view('customer.products.product_list')->with('tcategory', $topcategory)
            ->with('maincategorys', $maincategorys)
            ->with('mcategory', $mcategory)
            ->with('scategory', $scategory)
            ->with('subcategorys', $subcategorys)
            ->with('sizes', $sizes)
            ->with('colors', $colors)
            ->with('products', $products)
            ->with('mencategories', $mencategories)
            ->with('womencategories', $womencategories)
            ->with('brands', $brands)
            ->with('prices', $prices)
            ->with('images', $images)
            ->with('customerid', $customerid);
        return $this->set_recent($view);
    }

    public function product_list_brand($brandid ,$topid = null, $mainid = null, $categoryid = null){
        $brand = Brands::get_brand_byname($brandid);
        $topcategorys = Categorys::getTopCategorys();
        $topcategory = null;
        if($topid == null){
            $topcategory = $topcategorys[0];
        }
        else {
            if($topid == "men"){ $topcategory = Categorys::get_category(1);}
            else if($topid == "women"){$topcategory = Categorys::get_category(2);}
            // else if($topid == "goods"){
            //     return $this->product_detail($mainid);
            // }
        }
        $maincategorys = Categorys::getMainCategorys($topcategory->category_id);
        $subcategorys = array();
        foreach($maincategorys as $maincategory){
            $result = Categorys::getSubCategorys($maincategory->category_id);
            $subcategorys[$maincategory->category_id] = $result;
        }
        $colors = Colors::get_colors();
        $sizes = null;
        $mcategory = null;
        if($mainid != null){
            $mcategory = Categorys::get_category_byname($topcategory->category_id, str_replace('-', '/', $mainid));
            $sizecategory_id = $mcategory->category_size_id;
            $sizes = Sizes::get_sizes_with_category($sizecategory_id);
        }
        
        $scategory = null;
        if($categoryid != null){
            $scategory = Categorys::get_category_byname($mcategory->category_id, str_replace('-', '/', $categoryid));
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
        if(isset($_GET['sizeid']) && $_GET['sizeid'] != ''){ $filtersize = $_GET['sizeid']; }
        if(isset($_GET['colorid']) && $_GET['colorid'] != ''){ $filtercolor = $_GET['colorid']; }
        if(isset($_GET['rangemin']) && $_GET['rangemin'] != ''){ $rangemin = $_GET['rangemin']; }
        if(isset($_GET['rangemax']) && $_GET['rangemax'] != ''){ $rangemax = $_GET['rangemax']; }
        $products = Products::get_product_filter_brand($brand->brand_id, $categorylevel ,$filtercategory, $filtersize, $filtercolor, $rangemin, $rangemax);

        $prices = array(); $images = array();
        foreach($products as $product){
            $price = ProductStock::get_price_range($product->product_id);
            $prices[$product->product_id] = $price;

            $imagerec = Products::get_master_images($product->product_id);
            // dd($imagerec);
            $images[$product->product_id] = $imagerec;
        }

        $mencategories = Categorys::getMainCategorys($topcategorys[0]->category_id);
        $womencategories = Categorys::getMainCategorys($topcategorys[1]->category_id);

        $brands = Brands::get_brands();

        $customerid = null;
        if (Session::has('customerid')) {
            $customerid = Session::get('customerid');
        }

        $view = view('customer.products.product_list')->with('tcategory', $topcategory)
            ->with('maincategorys', $maincategorys)
            ->with('mcategory', $mcategory)
            ->with('scategory', $scategory)
            ->with('subcategorys', $subcategorys)
            ->with('sizes', $sizes)
            ->with('colors', $colors)
            ->with('products', $products)
            ->with('mencategories', $mencategories)
            ->with('womencategories', $womencategories)
            ->with('brands', $brands)
            ->with('prices', $prices)
            ->with('images', $images)
            ->with('brandid', $brandid)
            ->with('customerid', $customerid);
        return $this->set_recent($view);
    }

    public function product_list_post(){
        $url = Input::get('cururl');
        if(Input::has('mcategory_id')){
            $url .= '/'. Input::get('mcategory_id');
        }
        if(Input::has('scategory_id')){
            $url .= '/'. Input::get('scategory_id');
        }
        $url .= '?filter=true';
        $size_id = Input::get('size_id');
        $color_id = Input::get('color_id');
        $rangemin = Input::get('range_min');
        $rangemax = Input::get('range_max');
        if(isset($size_id))
            $url .= '&sizeid='. $size_id;
        if(isset($color_id))
            $url .= '&colorid='. $color_id;
        if(isset($rangemin))
            $url .= '&rangemin='. $rangemin;
        if(isset($rangemax))
            $url .= '&rangemax='. $rangemax;
        return Redirect::to($url);
    }

    public function product_detail($brandname, $productid){
        $brand = Brands::get_brand_byname($brandname);
        $product = Products::get_product_detail($productid)->first();
        $tcategoryid = Categorys::getTopCategoryID($product->product_category_id);

        $mcategoryid = Categorys::getMainCategoryID($product->product_category_id);
        $mcategory = Categorys::get_category($mcategoryid);

        $scategory = Categorys::get_category($product->product_category_id);

        $colors = Colors::get_colors();
        $sizes = Sizes::get_sizes_with_category($mcategoryid);

        $skucolor = ProductSKU::get_for_product($productid, 1);
        $skusize = ProductSKU::get_for_product($productid, 2);

        // dd($skucolor);

        $skuinfo = array();

        foreach($skucolor as $skucolor_id){
            $info = array();
            foreach($skusize as $skusize_id){
                $skuvalue = ProductStock::get_for_product($productid, $skucolor_id->sku_id, $skusize_id->sku_id)->first()->product_count_1;
                $skuprice = ProductStock::get_for_product($productid, $skucolor_id->sku_id, $skusize_id->sku_id)->first()->product_price_sale;
                $info[$skusize_id->sku_id]['count'] = $skuvalue;
                $info[$skusize_id->sku_id]['price'] = $skuprice;
            }
            $skuinfo[$skucolor_id->sku_id] = $info;
        }

        // dd($skuinfo);

        $price = ProductStock::get_price_range($product->product_id);
        // dd(Categorys::getSubCategoryIDs(5));
        $imagerec = Products::get_master_images($product->product_id);

        $skuimages = array();
        foreach($imagerec as $image){
            $each = array();
            foreach($skucolor as $skucolor_id){
                $each[$skucolor_id->sku_id] = Products::get_image($skucolor_id->sku_type_id, $image->master_image_id);
            }
            $skuimages[$image->master_image_id] = $each;
        }
        
        if (Session::has('customerid')) {
            $customerid = Session::get('customerid');
            Customers::add_recent($customerid, $productid);
        }

        return $this->layout_init(view('customer.products.product_detail'), $tcategoryid)
            ->with('product', $product)
            ->with('mcategory', $mcategory)
            ->with('scategory', $scategory)
            ->with('skuinfo', $skuinfo)
            ->with('skucolor', $skucolor)
            ->with('skusize', $skusize)
            ->with('price', $price)
            ->with('imagerec', $imagerec)
            ->with('skuimages', $skuimages)
            ->with('brand', $brand);
    }

    public function signup(){
        $topcategorys = Categorys::getTopCategorys();
        $mencategories = Categorys::getMainCategorys($topcategorys[0]->category_id);
        $womencategories = Categorys::getMainCategorys($topcategorys[1]->category_id);
        $brands = Brands::get_brands();
        $tcategory = $topcategorys[0];
        $maincategorys = Categorys::getMainCategorys($topcategorys[0]->category_id);
        
        return view('customer.user.signup')
            ->with('mencategories', $mencategories)
            ->with('womencategories', $womencategories)
            ->with('brands', $brands)
            ->with('maincategorys', $maincategorys)
            ->with('tcategory', $tcategory);
    }

    public function user(){
        if (Session::has('customerid')) {
            return Redirect::to('user/profile');
        } else {
            return Redirect::to('user/signin');
        }
    }

    public function signin(){
        if(isset($_GET['redirect'])){
            return view('customer.user.login')->with('redirect', $_GET['redirect']);
        }
        return view('customer.user.login')->with('redirect', '/');
    }

    public function signout(){
        Session::forget('site');
        Session::forget('customerid');
        Session::forget('customermail');
        return Redirect::to(url(''));
    }

    public function signuppost(){
        Log::debug(Input::all());
        $entry = array(
            'customer_name_first' => Input::get('name'),
            'customer_email' => Input::get('email'),
            'customer_password' => Input::get('password')
        );


        Customers::insert_customer($entry);

        return Redirect::to('/');
    }

    public function signinpost(){
        $username = Input::get('username');
        $password = Input::get('password');
        $redirect = Input::get('redirect');

        $logincheck = Customers::check_login($username, $password);
        if($logincheck == 1){
            if(isset($redirect)){
                return Redirect::to($redirect);
            }
            return Redirect::to('/');
        } else {
            $status = Customers::customer_status($username, $password);
            return Redirect::to('user/signin?status='.$status);
        }
    }

    public function profile(){
        $customerid = Session::get('customerid');
        $customer = Customers::get_customer($customerid)->first();
        $birth = $customer->customer_birthday;
        $births = array('', '', '');
        if($birth != '' || isset($birth)){
            $births = explode('/', $birth);
        }
        
        $phone = $customer->customer_phone;
        $tel = array('', '', '');
        if($phone != '' || isset($phone)){
            $tel = explode('-', $phone);
        }
        $view = view('customer.user.profile');

        return $this->layout_init($view, 1)->with('customer', $customer)
            ->with('birth', $births)
            ->with('phone', $tel);
    }

    public function profilepost(){
        $customerid = Session::get('customerid');
        $customer = Customers::get_customer($customerid)->first();
        $entry = array(
            'customer_name_first' => Input::get('first_name'),
            'customer_name_second' => Input::get('second_name'),
            'customer_name_kana_first' => Input::get('first_name_kana'),
            'customer_name_kana_second' => Input::get('second_name_kana'),
            'customer_gender' => Input::get('sex'),
            'customer_birthday' => Input::get('birthday_year').'/'.Input::get('birthday_month').'/'.Input::get('birthday_day'),
            'customer_postalcode' => Input::get('zipcode'),
            'customer_province' => Input::get('province'),
            'customer_county' => Input::get('county'),
            'customer_address_jp' => Input::get('address'),
            'customer_phone' => Input::get('tel1').'-'.Input::get('tel2').'-'.Input::get('tel3'),
            'customer_email' => Input::get('email'),
            'customer_status' => $customer->customer_status
        );
        $password = Input::get('password');
        if(isset($password)){
            $entry['customer_password'] = $password;
        }
        // dd($entry);
        Customers::edit_customer($entry, $customerid);
        return Redirect::to('user/profile');
    }

    public function favourite(){
        if(!Session::has('customerid')){
            $redirect = $_GET['redirect'];
            return Redirect::to($redirect);
        }
        $customerid = Session::get('customerid');
        $favs = Customers::get_favs($customerid);

        $images = array(); $colorname = array(); $sizename = array();
        foreach($favs as $fav){
            $sku_color = ProductSku::get_sku($fav->product_sku_color_id)->first();
            $colorname[$fav->id] = Colors::get_color($sku_color->sku_type_id);

            $sku_size = ProductSku::get_sku($fav->product_sku_size_id)->first();
            $sizename[$fav->id] = Sizes::get_size($sku_color->sku_type_id);

            $image = Products::get_cart_image($fav->fav_pro_id, $colorname[$fav->id]->color_id)->image_name;
            $images[$fav->id] = $image;
        }

        return $this->layout_init(view('customer.user.favourite'), 1)
            ->with('favs', $favs)
            ->with('images', $images)
            ->with('colorname', $colorname)
            ->with('sizename', $sizename);
    }

    public function addFavourite(){
        $productid = Input::get('product');
        $colorid = Input::get('color');
        $sizeid = Input::get('size');
        $brand = Input::get('brand');
        $amt = Input::get('count');

        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');
        $entry = array(
            'customer_id' => $customerid,
            'fav_brand_id' => $brand,
            'fav_pro_id' => $productid,
            'fav_sku_color' => $colorid,
            'fav_sku_size' => $sizeid,
            'fav_amt' => $amt,
        );
        Customers::add_favourite($entry);
        return "Product added to your favourite";
    }

    public function favitem_action(){
        $customerid = Session::get('customerid');
        if(!isset($customerid)){
            return 'Please log in first';
        }
        $id = Input::get('action_id');
        $type = Input::get('action_type');
        if($type == 'cart'){
            $fav = Customers::get_fav($id);

            $prodid = $fav->fav_pro_id;
            $color = $fav->fav_sku_color;
            $size = $fav->fav_sku_size;
            $count = $fav->fav_amt;
            Cart::addCart($customerid, $prodid, $color, $size, $count);
        } else if($type == 'remove'){
            Customers::remove_fav($id);
        }
        return Redirect::to('user/favourite');
    }

    public function cart(){
        if(!Session::has('customerid')){
            $redirect = $_GET['redirect'];
            return Redirect::to($redirect);
        }
        $customerid = Session::get('customerid');
        $topcategorys = Categorys::getTopCategorys();
        $mencategories = Categorys::getMainCategorys($topcategorys[0]->category_id);
        $womencategories = Categorys::getMainCategorys($topcategorys[1]->category_id);
        $brands = Brands::get_brands();
        $tcategory = $topcategorys[0];
        $maincategorys = Categorys::getMainCategorys($topcategorys[0]->category_id);

        $cartitems = Cart::getItems($customerid);
        
        $images = array(); $colorname = array(); $sizename = array();
        foreach($cartitems as $item){
            $sku_color = ProductSku::get_sku($item->product_sku_color_id)->first();
            $colorname[$item->cart_id] = Colors::get_color($sku_color->sku_type_id);

            $sku_size = ProductSku::get_sku($item->product_sku_size_id)->first();
            $sizename[$item->cart_id] = Sizes::get_size($sku_color->sku_type_id);

            $image = Products::get_cart_image($item->cart_productid, $colorname[$item->cart_id]->color_id)->image_name;
            $images[$item->cart_id] = $image;
        }

        $total = Cart::getSum($customerid);
        $sum = $total['sum'];
        $count = $total['count'];

        return $this->layout_init(view('customer.user.cart'), 1)
            ->with('cartitems', $cartitems)
            ->with('sum', $sum)
            ->with('count', $count)
            ->with('images', $images)
            ->with('colorname', $colorname)
            ->with('sizename', $sizename);
    }

    public function addtocart(){
        $customerid = Session::get('customerid');
        if(!isset($customerid)){
            return 'Login';
        }
        $prodid = Input::get('product');
        $color = Input::get('color');
        $size = Input::get('size');
        $count = Input::get('count');
        // $price = Input::get('price');
        try{
            Cart::addCart($customerid, $prodid, $color, $size, $count);
            return 'Successed';
        }catch(\Exception $ex){
            return 'Failed';
        }
    }

    public function cart_remove_item(){
        $id = Input::get('remove_id');
        Cart::removeitem($id);
        return Redirect::to('user/cart');
    }

    public function address(){
        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');
        $addresses = Customers::get_addresses($customerid);
        return $this->layout_init(view('customer.user.address'), 1)
                ->with('addresses', $addresses);
    }

    public function addressadd(){
        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        $states = States::get_states();
        $customerid = Session::get('customerid');
        return $this->layout_init(view('customer.user.address_add'), 1)
            ->with('states', $states);
    }

    public function address_add_post(){
        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        // dd(Input::all());
        $customerid = Session::get('customerid');
        $state = Input::get('state');
        $entry = array(
            'customer_id' => $customerid,
            'address_name' => Input::get('name'),
            'address_phone' => Input::get('tel1').'-'.Input::get('tel2').'-'.Input::get('tel3'),
            'address_postalcode' => Input::get('zipcode'),
            'address_state' => Input::get('state'),
            'address_city' => Input::get('city'),
            'address_address_ex' => Input::get('address_ex'),
            'address_province' => Input::get('province'),
            'address_county' => Input::get('county'),
            'address_address_jp' => Input::get('address_jp')
        );
        $id = Customers::add_address($entry);
        return Redirect::to('user/address');
    }

    public function address_flag($id){
        if(!Session::has('customerid')){
            return;
        }
        $customerid = Session::get('customerid');
        Customers::unset_address_flag($customerid);

        $entry = array(
            'address_default' => 1
        );
        Customers::edit_address($entry, $id);
        return Redirect::to('user/address');
    }

    public function address_edit($id){
        $address = Customers::get_address($id)->first();
        $states = States::get_states();
        $customerid = Session::get('customerid');
        $phone = $address->address_phone;
        $tel = array('', '', '');
        if($phone != '' || isset($phone)){
            $tel = explode('-', $phone);
        }
        return $this->layout_init(view('customer.user.address_edit'), 1)
            ->with('states', $states)
            ->with('address', $address)
            ->with('phone', $tel)
            ->with('customerid', $customerid);
    }

    public function address_edit_post(){
        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');
        $state = Input::get('state');
        $entry = array(
            'id' => Input::get('address_id'),
            'customer_id' => $customerid,
            'address_name' => Input::get('name'),
            'address_phone' => Input::get('tel1').'-'.Input::get('tel2').'-'.Input::get('tel3'),
            'address_postalcode' => Input::get('zipcode'),
            'address_state' => Input::get('state'),
            'address_city' => Input::get('city'),
            'address_address_ex' => Input::get('address_ex'),
            'address_province' => Input::get('province'),
            'address_county' => Input::get('county'),
            'address_address_jp' => Input::get('address_jp')
        );
        $id =  Input::get('address_id');
        $res = Customers::edit_address($entry, $id);
        return Redirect::to('user/address');
    }

    public function address_delete($id){
        Customers::delete_address($id);
        return Redirect::to('user/address');
    }

    public function credit(){
        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');
        $cards = Customers::get_cards($customerid);
        
        return $this->layout_init(view('customer.user.credit'), 1)
                ->with('cards', $cards);
    }

    public function credit_add(){
        return $this->layout_init(view('customer.user.credit_add'), 1);
    }

    public function credit_add_post(){
        // dd(Input::all());
        if(!Session::has('customerid')){
            return;
        }
        $customerid = Session::get('customerid');
        $entry = array(
            'customer_id' => $customerid,
            'card_no' => Input::get('name'),
            'card_token' => Input::get('token'),
            'card_owner' => Input::get('owner'),
            'card_validdate' => Input::get('year').'/'.Input::get('month')
        );
        $id = Customers::add_card($entry);
        return Redirect::to('user/credit');
    }

    public function credit_edit($id){
        $card = Customers::get_card($id)->first();
        return $this->layout_init(view('customer.user.credit_edit'), 1)
            ->with('card', $card);
    }

    public function credit_edit_post(){
        if(!Session::has('customerid')){
            return;
        }
        $customerid = Session::get('customerid');
        $cardid = Input::get('card_id');
        $entry = array(
            'customer_id' => $customerid,
            'card_no' => Input::get('name'),
            'card_token' => Input::get('token'),
            'card_owner' => Input::get('owner'),
            'card_validdate' => Input::get('year').'/'.Input::get('month')
        );
        $id = Customers::edit_card($entry, $cardid);
        return Redirect::to('user/credit');
    }

    public function credit_delete($id){
        Customers::delete_card($id);
        return Redirect::to('user/credit');
    }

    public function checkflowinfo(){
        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');

        $cartCt = Cart::getCartItemCt($customerid);
        if($cartCt == 0){
            return Redirect::to('user/cart');
        }

        $addresses = Customers::get_addresses($customerid);

        $cards = Customers::get_cards($customerid);

        $total = Cart::getSum($customerid);

        return $this->layout_init(view('customer.checkflow.address_credit'), 1)
                ->with('addresses', $addresses)
                ->with('cards', $cards)
                ->with('total', $total);
    }

    public function flow_post_ac(){
        $customerid = Session::get('customerid');
        $address = Input::get('address');
        if($address == 'addressNew'){
            $entry = array(
                'customer_id' => $customerid,
                'address_name' => Input::get('address_name'),
                'address_phone' => Input::get('tel1').'-'.Input::get('tel2').'-'.Input::get('tel3'),
                'address_postalcode' => Input::get('zipcode'),
                'address_state' => 1,
                'address_province' => Input::get('province'),
                'address_county' => Input::get('county'),
                'address_address_jp' => Input::get('address_ex')
            );
            $id = Customers::add_address($entry);
            Session::put('calc_address', $id);
        } else {
            Session::put('calc_address', $address);
        }
        $credit = Input::get('paymentCredit');
        if($credit == 'creditnew'){
            $entry = array(
                'customer_id' => $customerid,
                'card_no' => Input::get('card_no'),
                'card_token' => Input::get('card_token'),
                'card_owner' => Input::get('card_name'),
                'card_validdate' => Input::get('card_year').'/'.Input::get('card_month')
            );
            $id = Customers::add_card($entry);
            Session::put('calc_credit', $id);
        } else {
            Session::put('calc_credit', $credit);
        }
        return Redirect::to('user/checkflowconfirm');
    }

    public function checkflowconfirm(){
        $customerid = Session::get('customerid');

        $cartitems = Cart::getItems($customerid);
        
        $images = array(); $colorname = array(); $sizename = array();
        foreach($cartitems as $item){
            $sku_color = ProductSku::get_sku($item->product_sku_color_id)->first();
            $colorname[$item->cart_id] = Colors::get_color($sku_color->sku_type_id);

            $sku_size = ProductSku::get_sku($item->product_sku_size_id)->first();
            $sizename[$item->cart_id] = Sizes::get_size($sku_color->sku_type_id);

            $image = Products::get_cart_image($item->cart_productid, $colorname[$item->cart_id]->color_id)->image_name;
            $images[$item->cart_id] = $image;
        }

        $address = Session::get('calc_address');
        $credit = Session::get('calc_credit');
        $addrobj = Customers::get_address($address)->first();
        $creditobj = Customers::get_card($credit)->first();

        $total = Cart::getSum($customerid);
        return $this->layout_init(view('customer.checkflow.confirm'), 1)
                ->with('cartitems', $cartitems)
                ->with('addrobj', $addrobj)
                ->with('creditobj', $creditobj)
                ->with('total', $total)
                ->with('images', $images)
                ->with('colorname', $colorname)
                ->with('sizename', $sizename);
    }

    public function confirm_order(){
        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');
        //add to history
        $maxgroup = Customers::max_history_group() + 1;
        $cartitems = Cart::getItems($customerid);
        $address = Session::get('calc_address');
        $credit = Session::get('calc_credit');
        date_default_timezone_set('Asia/Tokyo');
        foreach($cartitems as $item){
            $entry = array(
                'history_customerid' => $item->cart_customerid,
                'history_productid' => $item->cart_productid,
                'history_merchantid' => $item->product_merchant_id,
                'history_skucolorid' => $item->cart_skucolorid,
                'history_skusizeid' => $item->cart_skusizeid,
                'history_amount' => $item->cart_amount,
                'history_price' => $item->product_price_sale,
                'history_address' => $address,
                'history_card' => $credit,
                'history_status' => 2,
                'history_group' => $maxgroup,
                'history_date' => date('Y/m/d H:i:s')
            );
            Customers::add_history($entry);
        }
        //remove from cart
        Cart::clear_cart($customerid);
        //remove from stock
        foreach($cartitems as $item){
            $remain = $item->product_count_1 - $item->cart_amount;
            $remain2 = $item->product_count_2 + $item->cart_amount;
            $entry = array(
                'product_count_1' => $remain,
                'product_count_2' => $remain2,
            );
            Customers::update_remain($item->product_id, $item->product_sku_color_id, $item->product_sku_size_id, $entry);
        }
        return $this->layout_init(view('customer.checkflow.final'), 1);
    }

    public function history(){
        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');

        $groups = Customers::get_history_groups($customerid);
        $subitems = array(); $total = array();
        $images = array(); $colorname = array(); $sizename = array();
        foreach($groups as $group){
            $items = Customers::get_items_bygroup($group->history_group);
            // dd($items);
            $subitems[$group->history_group] = $items;
            foreach($items as $item){
                $sku_color = ProductSku::get_sku($item->product_sku_color_id)->first();
                $colorname[$item->id] = Colors::get_color($sku_color->sku_type_id);
    
                $sku_size = ProductSku::get_sku($item->product_sku_size_id)->first();
                $sizename[$item->id] = Sizes::get_size($sku_color->sku_type_id);
    
                $image = Products::get_cart_image($item->history_productid, $colorname[$item->id]->color_id)->image_name;
                $images[$item->id] = $image;
            }
            $total[$group->history_group] = Customers::get_sum_bygroup($group->history_group);
        }

        return $this->layout_init(view('customer.user.history_list'), 1)
                ->with('groups', $groups)
                ->with('subitems', $subitems)
                ->with('total', $total)
                ->with('images', $images)
                ->with('colorname', $colorname)
                ->with('sizename', $sizename);
    }

    public function historydetail($group){
        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');
        $group = Customers::get_history_group($customerid, $group);
        // dd($group);

        $images = array(); $colorname = array(); $sizename = array();
        $items = Customers::get_items_bygroup($group->history_group);
        foreach($items as $item){
            $sku_color = ProductSku::get_sku($item->product_sku_color_id)->first();
            $colorname[$item->id] = Colors::get_color($sku_color->sku_type_id);

            $sku_size = ProductSku::get_sku($item->product_sku_size_id)->first();
            $sizename[$item->id] = Sizes::get_size($sku_color->sku_type_id);

            $image = Products::get_cart_image($item->history_productid, $colorname[$item->id]->color_id)->image_name;
            $images[$item->id] = $image;
        }
        $total['sum'] = Customers::get_sum_bygroup($group->history_group);

        return $this->layout_init(view('customer.user.history_detail'), 1)
            ->with('group', $group)
            ->with('items', $items)
            ->with('total', $total)
            ->with('colorname', $colorname)
            ->with('sizename', $sizename)
            ->with('images', $images);
    }
}
