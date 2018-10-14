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
use App\Services\RecentItemService;

class CategoryController extends Controller
{
    /**
     * @return mixed
     */
    public function index()
    {
        $malls = Malls::get();
        return $this->layout_init(view('customer.top'), 1)
            ->with('malls', $malls)
            ->with('listtype', "malls");
    }

    /**
     * @param $view
     * @return mixed
     */
    public function set_recent($view)
    {
        $recent = null;
        $images = null;
        if (Auth::check()) {
            //$recent = Customers::get_recent(Auth::id());
            $recent = RecentItemService::getRecentItems(Auth::id());
            $images = array();
            foreach ($recent as $product) {
                $imagerec = Products::get_master_images($product->product_id);
                // dd($imagerec);
                $images[$product->product_id] = $imagerec;
            }
        }
        return $view->with('recent', $recent)->with('recentimages', $images);
    }

    public function product_list_men($mallname, $mainid = null, $categoryid = null)
    {
        return $this->product_list_mall($mallname, 'men', $mainid, $categoryid);
    }

    public function product_list_women($mallname, $mainid = null, $categoryid = null)
    {
        return $this->product_list_mall($mallname, 'women', $mainid, $categoryid);
    }

    /**
     * @param $mallname
     * @param null $topid
     * @param null $mainid
     * @param null $categoryid
     * @return mixed
     */
    public function product_list_mall($mallname, $topid = null, $mainid = null, $categoryid = null)
    {
        $mall = MallService::get_mall_byname($mallname);
        if($topid == 'men') $topid = 1;
        if($topid == 'women') $topid = 2;
        $topcategory = Categorys::find($topid);
        $maincategorys = CategoryService::getMainCategorys_mall($mall->mall_id, $topcategory->category_id);
        $maincategory = CategoryService::getByName($mainid);
        $subcategory = CategoryService::getByName($categoryid);
        $colors = Colors::get();
        $sizes = null;
        if ($mainid != null) {
            $sizecategory_id = $maincategory->category_size_id;
            $sizecategory = SizeCategory::find($sizecategory_id);
            if(isset($sizecategory))
                $sizes = $sizecategory->sizes;
        }
        $scategory = null;
        if ($categoryid != null) {
            $scategory = CategoryService::get_category_byname($maincategory->category_id, str_replace('-', '/', $categoryid));
        }

        $products = null;
        $filtercategory = $topcategory->category_id;
        $categorylevel = 1;
        if ($maincategory != null) {
            $filtercategory = $maincategory->category_id;
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
        $products = ProductService::get_product_filter_mall($mall->mall_id, null, $categorylevel, $filtercategory, $filtersize, $filtercolor, $rangemin, $rangemax, null);

        $prices = array(); $images = array();
        foreach ($products as $product) {
            $price = StockService::get_price_range($product->product_id);
            $prices[$product->product_id] = $price;

            $imagerec = Products::get_master_images($product->product_id);
            $images[$product->product_id] = $imagerec;
        }

        $view = view('customer.products.product_list')
            ->with(compact('topcategory', 'maincategorys','maincategory', 'subcategory'))
            ->with('sizes', $sizes)
            ->with('colors', $colors)
            ->with('products', $products)
            ->with('prices', $prices)
            ->with('images', $images)
            ->with('listtype', "mall_category");
        return $this->set_recent($view);
    }
}
