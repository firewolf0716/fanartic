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

class CustomerController extends Controller
{
    //
    public function index(){
        
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
        if (Session::has('customerid')) {
            $customerid = Session::get('customerid');
        }
        return $view->with('mencategories', $mencategories)
                ->with('womencategories', $womencategories)
                ->with('brands', $brands)
                ->with('tcategory', $tcategory)
                ->with('maincategorys', $maincategorys)
                ->with('customerid', $customerid);
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
            $sizes = Sizes::get_sizebycategory($sizecategory_id);
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

        $prices = array();
        foreach($products as $product){
            $price = ProductStock::get_price_range($product->product_id);
            $prices[$product->product_id] = $price;
        }

        $mencategories = Categorys::getMainCategorys($topcategorys[0]->category_id);
        $womencategories = Categorys::getMainCategorys($topcategorys[1]->category_id);

        $brands = Brands::get_brands();

        return view('customer.products.product_list')->with('tcategory', $topcategory)
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
            ->with('prices', $prices);
    }

    public function product_list_post(){
        $url = 'customer/product/list/' . Input::get('tcategory_id');
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
        Log::debug(Input::all());
        return Redirect::to($url);
    }



    public function product_detail($productid){
        $product = Products::get_product_detail($productid)->first();
        $tcategoryid = Categorys::getTopCategoryID($product->product_category_id);

        $mcategoryid = Categorys::getMainCategoryID($product->product_category_id);
        $mcategory = Categorys::get_category($mcategoryid);

        $scategory = Categorys::get_category($product->product_category_id);

        $colors = Colors::get_colors();
        $sizes = Sizes::get_sizebycategory($mcategoryid);

        $skucolor = ProductSKU::get_for_product($productid, 1);
        $skusize = ProductSKU::get_for_product($productid, 2);

        // dd($productid);

        $skuinfo = array();

        foreach($skucolor as $skucolor_id){
            $info = array();
            foreach($skusize as $skusize_id){
                $skuvalue = ProductStock::get_for_product($productid, $skucolor_id->sku_id, $skusize_id->sku_id)->first()->product_count_1;
                $skuprice = ProductStock::get_for_product($productid, $skucolor_id->sku_id, $skusize_id->sku_id)->first()->product_price_sale;
                $info[$skusize_id->sku_type_id]['count'] = $skuvalue;
                $info[$skusize_id->sku_type_id]['price'] = $skuprice;
            }
            $skuinfo[$skucolor_id->sku_type_id] = $info;
        }
        $price = ProductStock::get_price_range($product->product_id);
        // dd(Categorys::getSubCategoryIDs(5));

        return $this->layout_init(view('customer.products.product_detail'), $tcategoryid)
            ->with('product', $product)
            ->with('mcategory', $mcategory)
            ->with('scategory', $scategory)
            ->with('skuinfo', $skuinfo)
            ->with('skucolor', $skucolor)
            ->with('skusize', $skusize)
            ->with('price', $price);
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
            return Redirect::to('customer/user/profile');
        } else {
            return Redirect::to('customer/user/signin');
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
            'customer_password' => Input::get('password'),
            'customer_status' => '0'
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
            return Redirect::to('customer/user/signin?status='.$status);
        }
    }

    public function profile(){
        $customerid = Session::get('customerid');
        $customer = Customers::get_customer($customerid)->first();
        $birth = $customer->customer_birthday;
        $births = explode('/', $birth);

        $phone = $customer->customer_phone;
        $tel = explode('-', $phone);

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
            'customer_password' => Input::get('password'),
            'customer_status' => $customer->customer_status
        );
        Customers::edit_customer($entry, $customerid);
        return Redirect::to('customer/user/profile');
    }

    public function favourite(){

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
        $sum = Cart::getSum($customerid);
        $count = Cart::getCount($customerid);

        return $this->layout_init(view('customer.user.cart'), 1)
            ->with('cartitems', $cartitems)
            ->with('sum', $sum)
            ->with('count', $count);
    }

    public function addtocart(){
        $customerid = Session::get('customerid');
        if(!isset($customerid)){
            return 'Please log in first';
        }
        $prodid = Input::get('product');
        $color = Input::get('color');
        $size = Input::get('size');
        $count = Input::get('count');
        $price = Input::get('price');
        try{
            Cart::addCart($customerid, $prodid, $color, $size, $count, $price);
            return 'Add product to Cart Successed';
        }catch(\Exception $ex){
            return 'Add product to Cart Failed';
        }
    }

    public function cart_remove_item(){
        $id = Input::get('remove_id');
        Cart::removeitem($id);
        return Redirect::to('customer/user/cart');
    }
}
