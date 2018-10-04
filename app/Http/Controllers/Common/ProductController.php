<?php

namespace App\Http\Controllers\Common;

use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Auth;
use Session;
use Hash;
use Mail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use Stripe\Stripe;
use Stripe\Customer;
use Stripe\Charge;
use Stripe\Account;
use Stripe\Token;
use Stripe\Error\Card;

use App\Models\Categorys;
use App\Models\Sizes;
use App\Models\SizeCategory;
use App\Models\Colors;
use App\Models\Products;
use App\Models\Customers;
use App\Models\Brands;
use App\Models\ProductSKU;
use App\Models\ProductStock;
use App\Models\Cart;
use App\Models\Malls;
use App\Models\MallBrands;
use App\Models\States;
use App\Models\CustomerUser;
use App\Models\CustomerAddress;
use App\Services\BrandService;
use App\Services\CategoryService;
use App\Services\MatchService;
use App\Services\MallService;
use App\Services\StockService;
use App\Services\ProductService;
use App\Services\SkuService;

class ProductController extends Controller
{
    //
    public function index()
    {
        $malls = Malls::get();
        return $this->layout_init(view('customer.top'), 1)
            ->with('malls', $malls)
            ->with('listtype', "malls");
    }

    public function mall($mallname)
    {
        $mall = MallService::get_mall_byname($mallname);
        if ($mallname == 'admin') {
            return Redirect::to('admin/login');
        } else if ($mallname == 'merchant') {
            return Redirect::to('merchant/login');
        } else if ($mallname == 'brands') {
            return $this->brands();
        } else {
            if ($mall != null) {
                $brands = MatchService::get_brands($mall->mall_id);
                return $this->layout_init(view('customer.mall_brand'), 1)->with('brands', $brands)
                    ->with('mallname', $mallname)
                    ->with('listtype', "mall_brands");
            } else
                return Redirect::to('');
        }
    }

    public function brands()
    {
        $brands = Brands::get();
        return $this->layout_init(view('customer.brand'), 1)->with('brands', $brands)->with('listtype', "malls");
    }

    public function brand($brandid)
    {
        $brand = BrandService::get_brand_byname($brandid);
        if (Auth::check()) {
            date_default_timezone_set('Asia/Tokyo');
            $entry = array(
                'customer_id' => Auth::id(),
                'brand_id' => $brand->brand_id,
                'score_value' => 100,
                'score_action' => 0,
                'score_status' => 1,
                'score_type' => 1,
                'created_at' => date('Y/m/d H:i:s'),
                'updated_at' => date('Y/m/d H:i:s')
            );
            Customers::record_score($entry);
        }
        return $this->product_list_brand($brandid);
    }

    public function set_recent($view)
    {
        $recent = null;
        $images = null;
        if (Auth::check()) {
            $recent = Customers::get_recent(Auth::id());
            $images = array();
            foreach ($recent as $product) {
                $imagerec = Products::get_master_images($product->product_id);
                // dd($imagerec);
                $images[$product->product_id] = $imagerec;
            }
        }
        return $view->with('recent', $recent)->with('recentimages', $images);
    }

    public function mall_product_list($mallname, $brandname, $topid = null, $mainid = null, $categoryid = null)
    {
        // dd($mall);
        $mall = MallService::get_mall_byname($mallname);
        $brand = BrandService::get_brand_byname($brandname);
        $topcategorys = CategoryService::getTopCategorys();
        $topcategory = null;
        if ($topid == null) {
            $topcategory = $topcategorys[0];
        } else {
            if ($topid == "men") {
                $topcategory = Categorys::find(1);
            } else if ($topid == "women") {
                $topcategory = Categorys::find(2);
            }
        }
        $maincategorys = CategoryService::getMainCategorys_mall($mall->mall_id, $topcategory->category_id);
        $subcategorys = array();
        foreach ($maincategorys as $maincategory) {
            $result = CategoryService::getSubCategorys_mall_frommain($mall->mall_id, $maincategory->category_id);
            $subcategorys[$maincategory->category_id] = $result;
        }
        $colors = Colors::get();
        $sizes = null;
        $mcategory = null;
        if ($mainid != null) {
            $mcategory = CategoryService::get_category_byname($topcategory->category_id, str_replace('-', '/', $mainid));
            $sizecategory_id = $mcategory->category_size_id;
            $sizes = SizeCategory::find($sizecategory_id)->sizes;
        }
        $scategory = null;
        if ($categoryid != null) {
            $scategory = CategoryService::get_category_byname($mcategory->category_id, str_replace('-', '/', $categoryid));
        }

        $products = null;
        $filtercategory = $topcategory->category_id;
        $categorylevel = 1;
        if ($mcategory != null) {
            $filtercategory = $mcategory->category_id;
            $categorylevel = 2;
        }
        if ($scategory != null) {
            $filtercategory = $scategory->category_id;
            $categorylevel = 3;
        }
        $filtersize = null;
        $filtercolor = null;
        $rangemin = null;
        $rangemax = null;
        if (isset($_GET['sizeid']) && $_GET['sizeid'] != '') {
            $filtersize = $_GET['sizeid'];
        }
        if (isset($_GET['colorid']) && $_GET['colorid'] != '') {
            $filtercolor = $_GET['colorid'];
        }
        if (isset($_GET['rangemin']) && $_GET['rangemin'] != '') {
            $rangemin = $_GET['rangemin'];
        }
        if (isset($_GET['rangemax']) && $_GET['rangemax'] != '') {
            $rangemax = $_GET['rangemax'];
        }
        $products = ProductService::get_product_filter_mall($mall->mall_id, $brand->brand_id, $categorylevel, $filtercategory, $filtersize, $filtercolor, $rangemin, $rangemax);

        $mencategories = CategoryService::getMainCategorys_mall($mall->mall_id, $topcategorys[0]->category_id);
        $womencategories = CategoryService::getMainCategorys_mall($mall->mall_id, $topcategorys[1]->category_id);

        $brands = MatchService::get_brands($mall->mall_id);

        $customerid = null;
        if (Auth::check()) {
            $customerid = Auth::id();
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
            ->with('mallname', $mallname)
            ->with('customerid', $customerid)
            ->with('brandname', $brandname)
            ->with('listtype', "mall_brand_products");
        return $this->set_recent($view);
    }

    public function product_list_category($topid = null, $mainid = null, $categoryid = null)
    {
        $topcategorys = CategoryService::getTopCategorys();
        $topcategory = null;
        if ($topid == null) {
            $topcategory = $topcategorys[0];
        } else {
            if ($topid == "men") {
                $topcategory = Categorys::find(1);
            } else if ($topid == "women") {
                $topcategory = Categorys::find(2);
            }
        }
        $maincategorys = CategoryService::getMainCategorys($topcategory->category_id);
        $subcategorys = array();
        foreach ($maincategorys as $maincategory) {
            $result = CategoryService::getSubCategorys($maincategory->category_id);
            $subcategorys[$maincategory->category_id] = $result;
        }
        $colors = Colors::get();
        $sizes = null;
        $mcategory = null;
        if ($mainid != null) {
            $mcategory = CategoryService::get_category_byname($topcategory->category_id, str_replace('-', '/', $mainid));
            $sizecategory_id = $mcategory->category_size_id;
            $sizes = SizeCategory::find($sizecategory_id)->sizes;
        }
        $scategory = null;
        if ($categoryid != null) {
            $scategory = CategoryService::get_category_byname($mcategory->category_id, str_replace('-', '/', $categoryid));
        }
        $products = null;
        $filtercategory = $topcategory->category_id;
        $categorylevel = 1;
        if ($mcategory != null) {
            $filtercategory = $mcategory->category_id;
            $categorylevel = 2;
        }
        if ($scategory != null) {
            $filtercategory = $scategory->category_id;
            $categorylevel = 3;
        }
        $filtersize = null;
        $filtercolor = null;
        $rangemin = null;
        $rangemax = null;
        if (isset($_GET['sizeid']) && $_GET['sizeid'] != '') {
            $filtersize = $_GET['sizeid'];
        }
        if (isset($_GET['colorid']) && $_GET['colorid'] != '') {
            $filtercolor = $_GET['colorid'];
        }
        if (isset($_GET['rangemin']) && $_GET['rangemin'] != '') {
            $rangemin = $_GET['rangemin'];
        }
        if (isset($_GET['rangemax']) && $_GET['rangemax'] != '') {
            $rangemax = $_GET['rangemax'];
        }
        $products = Products::get_product_filter($categorylevel, $filtercategory, $filtersize, $filtercolor, $rangemin, $rangemax);

        $prices = array();
        $images = array();
        foreach ($products as $product) {
            $price = StockService::get_price_range($product->product_id);
            $prices[$product->product_id] = $price;

            $imagerec = Products::get_master_images($product->product_id);
            // dd($imagerec);
            $images[$product->product_id] = $imagerec;
        }

        $mencategories = CategoryService::getMainCategorys($topcategorys[0]->category_id);
        $womencategories = CategoryService::getMainCategorys($topcategorys[1]->category_id);

        $brands = Brands::get();

        $customerid = null;
        if (Auth::check()) {
            $customerid = Auth::id();
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
            ->with('customerid', $customerid)
            ->with('listtype', "malls");
        return $this->set_recent($view);
    }

    public function product_list_brand($brandid, $topid = null, $mainid = null, $categoryid = null)
    {
        $brand = BrandService::get_brand_byname($brandid);
        $topcategorys = CategoryService::getTopCategorys();
        $topcategory = null;
        if ($topid == null) {
            $topcategory = $topcategorys[0];
        } else {
            if ($topid == "men") {
                $topcategory = Categorys::find(1);
            } else if ($topid == "women") {
                $topcategory = Categorys::find(2);
            }
        }
        $maincategorys = CategoryService::getMainCategorys($topcategory->category_id);
        $subcategorys = array();
        foreach ($maincategorys as $maincategory) {
            $result = CategoryService::getSubCategorys($maincategory->category_id);
            $subcategorys[$maincategory->category_id] = $result;
        }
        $colors = Colors::get();
        $sizes = null;
        $mcategory = null;
        if ($mainid != null) {
            $mcategory = CategoryService::get_category_byname($topcategory->category_id, str_replace('-', '/', $mainid));
            $sizecategory_id = $mcategory->category_size_id;
            $sizes = SizeCategory::find($sizecategory_id)->sizes;
        }

        $scategory = null;
        if ($categoryid != null) {
            $scategory = CategoryService::get_category_byname($mcategory->category_id, str_replace('-', '/', $categoryid));
        }

        $products = null;
        $filtercategory = $topcategory->category_id;
        $categorylevel = 1;
        if ($mcategory != null) {
            $filtercategory = $mcategory->category_id;
            $categorylevel = 2;
        }
        if ($scategory != null) {
            $filtercategory = $scategory->category_id;
            $categorylevel = 3;
        }
        $filtersize = null;
        $filtercolor = null;
        $rangemin = null;
        $rangemax = null;
        if (isset($_GET['sizeid']) && $_GET['sizeid'] != '') {
            $filtersize = $_GET['sizeid'];
        }
        if (isset($_GET['colorid']) && $_GET['colorid'] != '') {
            $filtercolor = $_GET['colorid'];
        }
        if (isset($_GET['rangemin']) && $_GET['rangemin'] != '') {
            $rangemin = $_GET['rangemin'];
        }
        if (isset($_GET['rangemax']) && $_GET['rangemax'] != '') {
            $rangemax = $_GET['rangemax'];
        }
        $products = Products::get_product_filter_brand($brand->brand_id, $categorylevel, $filtercategory, $filtersize, $filtercolor, $rangemin, $rangemax);

        $prices = array();
        $images = array();
        foreach ($products as $product) {
            $price = StockService::get_price_range($product->product_id);
            $prices[$product->product_id] = $price;

            $imagerec = Products::get_master_images($product->product_id);
            // dd($imagerec);
            $images[$product->product_id] = $imagerec;
        }

        $mencategories = CategoryService::getMainCategorys($topcategorys[0]->category_id);
        $womencategories = CategoryService::getMainCategorys($topcategorys[1]->category_id);

        $brands = Brands::get();

        $customerid = null;
        if (Auth::check()) {
            $customerid = Auth::id();
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
            ->with('customerid', $customerid)
            ->with('listtype', "brand_products");
        return $this->set_recent($view);
    }

    public function product_list_post()
    {
        $url = Input::get('cururl');
        if (Input::has('mcategory_id')) {
            $url .= '/' . Input::get('mcategory_id');
        }
        if (Input::has('scategory_id')) {
            $url .= '/' . Input::get('scategory_id');
        }
        $url .= '?filter=true';
        $size_id = Input::get('size_id');
        $color_id = Input::get('color_id');
        $rangemin = Input::get('range_min');
        $rangemax = Input::get('range_max');
        if (isset($size_id))
            $url .= '&sizeid=' . $size_id;
        if (isset($color_id))
            $url .= '&colorid=' . $color_id;
        if (isset($rangemin))
            $url .= '&rangemin=' . $rangemin;
        if (isset($rangemax))
            $url .= '&rangemax=' . $rangemax;
        return Redirect::to($url);
    }

    public function product_detail($mallname, $productid)
    {
        $product = Products::find($productid);
        // $sizes = SizeCategory::find($mcategoryid)->sizes;
        $skucolor = SKUService::get_for_product($productid, 1);
        $skusize = SKUService::get_for_product($productid, 2);

        $skuinfo = array();

        foreach ($skucolor as $skucolor_id) {
            $info = array();
            foreach ($skusize as $skusize_id) {
                $skuvalue = StockService::get_for_product($productid, $skucolor_id->sku_id, $skusize_id->sku_id)->first()->product_count;
                $skuprice = StockService::get_for_product($productid, $skucolor_id->sku_id, $skusize_id->sku_id)->first()->product_price_sale;
                $info[$skusize_id->sku_id]['count'] = $skuvalue;
                $info[$skusize_id->sku_id]['price'] = $skuprice;
            }
            $skuinfo[$skucolor_id->sku_id] = $info;
        }

        $price = StockService::get_price_range($product->product_id);
        $imagerec = Products::get_master_images($product->product_id);
        $skuimages = array();
        foreach ($imagerec as $image) {
            $each = array();
            foreach ($skucolor as $skucolor_id) {
                $each[$skucolor_id->sku_id] = Products::get_image($productid, $skucolor_id->sku_type_id);
            }
            $skuimages[$image->master_image_id] = $each;
        }

        if (Auth::check()) {
            $customerid = Auth::id();
            Customers::add_recent($customerid, $productid);
        }

        return view('customer.products.product_detail')
            ->with('product', $product)
            ->with('skuinfo', $skuinfo)
            ->with('skucolor', $skucolor)
            ->with('skusize', $skusize)
            ->with('price', $price)
            ->with('imagerec', $imagerec)
            ->with('skuimages', $skuimages)
            ->with('mallname', $mallname);
    }
}
