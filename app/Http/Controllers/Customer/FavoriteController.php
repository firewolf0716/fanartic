<?php

namespace App\Http\Controllers\Customer;

use App\Models\Colors;
use App\Models\Products;
use App\Models\Sizes;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;

use Illuminate\Support\Facades\Redirect;
use Session;

use App\Models\Cart;
use App\Models\ProductSKU;
use App\Services\CartService;
use App\Models\Customers;

class FavoriteController extends Controller
{
    public function favorite()
    {
        if (!Session::has('customerid')) {
            return redirect('/');
        }
        $customerid = Session::get('customerid');
        $favs = Customers::get_favs($customerid);

        $images = array();
        $colorname = array();
        $sizename = array();
        foreach ($favs as $fav) {
            $sku_color = ProductSku::find($fav->product_sku_color_id);
            $colorname[$fav->id] = Colors::find($sku_color->sku_type_id);

            $sku_size = ProductSku::find($fav->product_sku_size_id);
            $sizename[$fav->id] = Sizes::find($sku_color->sku_type_id);

            $image = Products::get_cart_image($fav->fav_pro_id, $colorname[$fav->id]->color_id)->image_name;
            $images[$fav->id] = $image;
        }

        return $this->layout_init(view('customer.user.favorite'), 1)
            ->with('favs', $favs)
            ->with('images', $images)
            ->with('colorname', $colorname)
            ->with('sizename', $sizename);
    }

    public function addFavourite()
    {
        $productid = Input::get('product');
        $colorid = Input::get('color');
        $sizeid = Input::get('size');
        $brand = Input::get('brand');
        $amt = Input::get('count');

        if (!Session::has('customerid')) {
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

    public function favitem_action()
    {
        $customerid = Session::get('customerid');
        if (!isset($customerid)) {
            return 'Please log in first';
        }
        $id = Input::get('action_id');
        $type = Input::get('action_type');
        if ($type == 'cart') {
            $fav = Customers::get_fav($id);
            $cartentry = array(
                "customer" => $customerid,
                "product" => $fav->fav_pro_id,
                "color" => $fav->fav_sku_color,
                "size" => $fav->fav_sku_size,
                "count" => $fav->fav_amt
            );
            CartService::addCart($cartentry);
        } else if ($type == 'remove') {
            Customers::remove_fav($id);
        }
        return Redirect::to('user/favourite');
    }
}
