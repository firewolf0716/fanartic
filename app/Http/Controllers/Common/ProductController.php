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
use App\Models\ProductImage;
use App\Models\ProductMasterImage;
use App\Services\BrandService;
use App\Services\CategoryService;
use App\Services\MatchService;
use App\Services\MallService;
use App\Services\StockService;
use App\Services\ProductService;
use App\Services\SkuService;
use App\Services\RecentItemService;

class ProductController extends Controller
{
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
        // dd($product->product_category_id);
        // $sizes = SizeCategory::find($mcategoryid)->sizes;
        $skucolor = SKUService::get_for_product($productid, 1);
        $skusize = SKUService::get_for_product($productid, 2);

        $skuinfo = array();

        foreach ($skucolor as $skucolor_id) {
            $info = array();
            foreach ($skusize as $skusize_id) {
                $skuvalue = StockService::get_for_product($productid, $skucolor_id->sku_id, $skusize_id->sku_id)->product_count;
                $skuprice = StockService::get_for_product($productid, $skucolor_id->sku_id, $skusize_id->sku_id)->product_price_sale;
                $info[$skusize_id->sku_id]['count'] = $skuvalue;
                $info[$skusize_id->sku_id]['price'] = $skuprice;
            }
            $skuinfo[$skucolor_id->sku_id] = $info;
        }

        $price = StockService::get_price_range($product->product_id);
        $imagerec = ProductMasterImage::get_master_images($product->product_id);
        $skuimages = array();
        foreach ($imagerec as $image) {
            $each = array();
            foreach ($skucolor as $skucolor_id) {
                $each[$skucolor_id->sku_id] = ProductImage::get_image($productid, $skucolor_id->sku_type_id);
            }
            $skuimages[$image->master_image_id] = $each;
        }

        if (Auth::check()) {
            $customerid = Auth::id();
            //Customers::add_recent($customerid, $productid);
            $order = array(
                'customer_id' => $customerid,
                'recent_product_id' => $productid,
                'recent_date' => date('Y/m/d H:i:s')
            );
            RecentItemService::addRecentItem($order);
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
