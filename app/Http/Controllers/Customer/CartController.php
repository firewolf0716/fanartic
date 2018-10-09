<?php

namespace App\Http\Controllers\Customer;

use Illuminate\Support\Facades\Auth;
use Session;

use Illuminate\Http\Request;

use App\Models\Cart;
use App\Models\Colors;
use App\Models\Customers;
use App\Models\Sizes;
use App\Models\Products;
use App\Models\ProductSKU;
use App\Services\CartService;

use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;

class CartController extends Controller
{
    public function cart()
    {
        $cartitems = Cart::getItems(Auth::id());
        $images = array();
        $colorname = array();
        $sizename = array();
        foreach ($cartitems as $item) {
            $sku_color = ProductSKU::find($item->product_sku_color_id);
            $colorname[$item->id] = Colors::find($sku_color->sku_type_id);

            $sku_size = ProductSKU::find($item->product_sku_size_id);
            $sizename[$item->id] = Sizes::find($sku_color->sku_type_id);

            $image = Products::get_cart_image($item->cart_productid, $colorname[$item->id]->color_id)->image_name;
            $images[$item->id] = $image;
        }

        $total = Cart::getSum(Auth::id());
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

    public function addtocart()
    {
        $cartEntry = array(
            "customer" => Auth::id(),
            "product" => Input::get('product'),
            "color" => Input::get('color'),
            "size" => Input::get('size'),
            "count" => Input::get('count')
        );
        try {
            $carts = session('cart');
            if($carts == null || $carts == ''){
                $carts = array();  
            }
            foreach($carts as $i => $cart){
                if($cart['product'] == $cartEntry['product']){
                    unset($carts[$i]);
                }
            }
            array_push($carts, $cartEntry);
            session(['cart' => $carts]);
            return "Success";
        } catch (\Exception $ex) {
            return "Failed";
        }
    }

    public function cart_remove_item()
    {
        $id = Input::get('remove_id');
        Cart::removeitem($id);

        return Redirect::to('user/cart');
    }

    public function receiveitem($itemId)
    {
        Customers::receive_item($itemId);
        return Redirect::to('user/history');
    }
}
