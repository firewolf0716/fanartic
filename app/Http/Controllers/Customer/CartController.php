<?php

namespace App\Http\Controllers\Customer;

use Illuminate\Support\Facades\Auth;
use Session;

use Illuminate\Http\Request;

use App\Services\CartService;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;

class CartController extends Controller
{
    public function cart()
    {
        return $this->layout_init(view('customer.user.cart'), 1)
            ->with(CartService::cartParams());
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
        return CartService::addCart($cartEntry);
    }

    public function cart_remove_item()
    {
        $id = Input::get('remove_id');
        CartService::removeCart($id);

        return Redirect::to('user/cart');
    }

    public function receiveitem($itemId)
    {
        // Customers::receive_item($itemId);
        // return Redirect::to('user/history');
    }
}
