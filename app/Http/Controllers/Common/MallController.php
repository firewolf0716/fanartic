<?php

namespace App\Http\Controllers\Common;

use App\Components\CurrencyComponent;
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

class MallController extends Controller
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
     * @param $mallname
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function mall($mallname)
    {
        $mall = MallService::get_mall_byname($mallname);
        if (!empty($mall)) {
            $brands = MatchService::get_brands($mall->mall_id);

            $customerid = null;
            $recent = null;
            $images = null;
            $email = null;
            if (Auth::check()) {
                $recent = Customers::get_recent(Auth::id());
                $images = array();
                foreach ($recent as $product) {
                    $imagerec = Products::get_master_images($product->product_id);
                    // dd($imagerec);
                    $images[$product->product_id] = $imagerec;
                }
                // dd($email);
            }

            return view('customer.mall_brand')
                ->with(compact('customerid', 'recent'))
                ->with('recentimages', $images)
                ->with('listtype', "malls")
                ->with('mallname', $mallname)
                ->with('listtype', "mall_brands");
        } else
            return redirect(route('top'));
    }

    /**
     * @param $mallname
     * @param $brandname
     * @param null $topid
     * @param null $mainid
     * @param null $categoryid
     * @return mixed
     */
    public function mall_product_list($mallname, $brandname, $topid = null, $mainid = null, $categoryid = null)
    {
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

}
