<?php

namespace App\Http\Controllers\Customer;

use Session;

use Illuminate\Http\Request;

use App\Models\Cart;
use App\Models\Colors;
use App\Models\Sizes;
use App\Models\Products;
use App\Models\ProductSKU;
use App\Services\CartService;

use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;

class CartController extends Controller
{
    public function cart(){
        if(!Session::has('customerid')){
            $redirect = $_GET['redirect'];
            return Redirect::to($redirect);
        }
        $customerid = Session::get('customerid');

        $cartitems = Cart::getItems($customerid);        
        $images = array(); $colorname = array(); $sizename = array();
        foreach($cartitems as $item){
            $sku_color = ProductSKU::find($item->product_sku_color_id);
            $colorname[$item->cart_id] = Colors::find($sku_color->sku_type_id);

            $sku_size = ProductSKU::find($item->product_sku_size_id);
            $sizename[$item->cart_id] = Sizes::find($sku_color->sku_type_id);

            $image = Products::get_cart_image($item->cart_productid, $colorname[$item->cart_id]->color_id)->image_name;
            $images[$item->cart_id] = $image;
        }

        $total = Cart::getSum($customerid);
        $sum = $total['sum'];
        $count = $total['count'];

        // dd($cartitems);

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
        $cartentry = array(
            "customer" => $customerid,
            "product" => Input::get('product'),
            "color" => Input::get('color'),
            "size" => Input::get('size'),
            "count" => Input::get('count')
        );
        try{
            CartService::addCart($cartentry);
            return 'Successed';
        }catch(\Exception $ex){
            return $ex->getMessage();
            return 'Failed';
        }
    }

    public function cart_remove_item(){
        $id = Input::get('remove_id');
        Cart::removeitem($id);
        return Redirect::to('user/cart');
    }

    public function receiveitem($itemid){
        Customers::receive_item($itemid);
        return Redirect::to('user/history');
    }
}
