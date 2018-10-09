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

class BrandController extends Controller
{
    //
    public function index()
    {
        $malls = Malls::get();
        return $this->layout_init(view('customer.top'), 1)
            ->with('malls', $malls)
            ->with('listtype', "malls");
    }

    public function brand_list_men($mallname)
    {
        $mall = MallService::get_mall_byname($mallname);
        if (!empty($mall)) {
            $brands = MatchService::get_brands($mall->mall_id, 'is_men');
            return $this->layout_init(view('customer.mall_brand'), 1)
                ->with('brands', $brands)
                ->with('mallname', $mallname)
                ->with('listtype', "mall_brands");
        } else {
            return redirect(route('top'));
        }
    }

    public function brand_list_women($mallname)
    {
        $mall = MallService::get_mall_byname($mallname);
        if (!empty($mall)) {
            $brands = MatchService::get_brands($mall->mall_id, 'is_women');
            return $this->layout_init(view('customer.mall_brand'), 1)
                ->with('brands', $brands)
                ->with('mallname', $mallname)
                ->with('listtype', "mall_brands");
        } else {
            return redirect(route('top'));
        }
    }
}
