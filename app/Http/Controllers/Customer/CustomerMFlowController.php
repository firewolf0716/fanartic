<?php

namespace App\Http\Controllers\Customer;

use Session;

use App\Models\Cart;
use App\Models\Customers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;

class CustomerMFlowController extends Controller
{
    public function checkflowinfo(){
        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');

        $cartCt = Cart::getCartItemCt($customerid);
        if($cartCt == 0){
            return Redirect::to('user/cart');
        }

        $addresses = Customers::get_addresses($customerid);

        $cards = Customers::get_cards($customerid);

        $total = Cart::getSum($customerid);

        return $this->layout_init(view('customer.checkflow.address_credit'), 1)
                ->with('addresses', $addresses)
                ->with('cards', $cards)
                ->with('total', $total);
    }

    public function flow_post_ac(){
        $customerid = Session::get('customerid');
        // dd(Input::all());
        $address = Input::get('address');
        if($address == 'addressNew'){
            $entry = array(
                'customer_id' => $customerid,
                'address_name' => Input::get('address_name'),
                'address_phone' => Input::get('tel1').'-'.Input::get('tel2').'-'.Input::get('tel3'),
                'address_postalcode' => Input::get('zipcode'),
                'address_state' => 1,
                'address_province' => Input::get('province'),
                'address_county' => Input::get('county'),
                'address_address_jp' => Input::get('address_ex')
            );
            $id = Customers::add_address($entry);
            Session::put('calc_address', $id);
        } else {
            Session::put('calc_address', $address);
        }
        $credit = Input::get('paymentCredit');
        if(Input::get('payment') == 'paypal'){
            Session::put('calc_credit', 'paypal');
        } else {
            if($credit == 'creditnew'){
                $email = CustomerUser::find($customerid)->customer_email;
                Stripe::setApiKey(env('STRIPE_SECRET_KEY'));
                $customer = Customer::create(array(
                    'email' => $email,
                    'source' => Input::get('card_token')
                ));
                $cus_token = $customer->id;
                $last4 = $customer->sources->data['0']->last4;
                $expiredt = $customer->sources->data['0']->exp_year.'/'.$customer->sources->data['0']->exp_month;
                $name = $customer->sources->data['0']->name;
                $entry = array(
                    'customer_id' => $customerid,
                    'card_no' => $last4,
                    'card_token' => $cus_token,
                    'card_owner' => $name,
                    'card_validdate' => $expiredt
                );
                $id = Customers::add_card($entry);
                Session::put('calc_credit', $id);
                // Session::put('card_token', Input::get('card_token'));
            } else {
                Session::put('calc_credit', $credit);
            }
        }
        return Redirect::to('user/checkflowconfirm');
    }

    public function checkflowconfirm(){
        $customerid = Session::get('customerid');

        $cartitems = Cart::getItems($customerid);
        
        $images = array(); $colorname = array(); $sizename = array();
        foreach($cartitems as $item){
            $sku_color = ProductSku::find($item->product_sku_color_id);
            $colorname[$item->cart_id] = Colors::get_color($sku_color->sku_type_id);

            $sku_size = ProductSku::find($item->product_sku_size_id);
            $sizename[$item->cart_id] = Sizes::get_size($sku_color->sku_type_id);

            $image = Products::get_cart_image($item->cart_productid, $colorname[$item->cart_id]->color_id)->image_name;
            $images[$item->cart_id] = $image;
        }

        $address = Session::get('calc_address');
        $credit = Session::get('calc_credit');
        $addrobj = Customers::get_address($address)->first();

        if($credit == 'paypal'){
            $creditobj = 'paypal';
        } else {
            $creditobj = Customers::get_card($credit)->first();
        }

        $total = Cart::getSum($customerid);
        return $this->layout_init(view('customer.checkflow.confirm'), 1)
                ->with('cartitems', $cartitems)
                ->with('addrobj', $addrobj)
                ->with('creditobj', $creditobj)
                ->with('total', $total)
                ->with('images', $images)
                ->with('colorname', $colorname)
                ->with('sizename', $sizename);
    }
    public function process_payment($creditid, $amt){
        Stripe::setApiKey(env('STRIPE_SECRET_KEY'));
        if($creditid == 'paypal'){

        } else {
            try{
                $card = Customers::get_card($creditid)->first();
                $cu = Customer::retrieve($card->card_token);
                $charge = Charge::create(array(
                    'customer' => $cu->id,
                    'amount' => $amt,
                    'currency' => 'jpy'
                ));
                return true;
            } catch(Exception $ex){
                return false;
            }
        }
    }

    public function confirm_order(){
        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');
        //add to history
        $maxgroup = Customers::max_history_group() + 1;
        $cartitems = Cart::getItems($customerid);
        $address = Session::get('calc_address');
        $credit = Session::get('calc_credit');
        $total = Cart::getSum($customerid);
        $payresult = $this->process_payment($credit, $total['sum']);
        // dd($payresult);
        if($payresult){
            date_default_timezone_set('Asia/Tokyo');
            foreach($cartitems as $item){
                $entry = array(
                    'history_customerid' => $item->cart_customerid,
                    'history_productid' => $item->cart_productid,
                    'history_merchantid' => $item->product_merchant_id,
                    'history_skucolorid' => $item->cart_skucolorid,
                    'history_skusizeid' => $item->cart_skusizeid,
                    'history_amount' => $item->cart_amount,
                    'history_price' => $item->product_price_sale,
                    'history_address' => $address,
                    'history_card' => $credit,
                    'history_status' => 2,
                    'history_group' => $maxgroup,
                    'history_date' => date('Y/m/d H:i:s')
                );
                $historyid = Customers::add_history($entry);

                $receiptid = Customers::add_receipt($entry);
                Customers::add_receipt_detail($entry, $historyid, $receiptid);

                $product = Products::get_product($item->cart_productid);
                date_default_timezone_set('Asia/Tokyo');
                $scoreentry = array(
                    'customer_id' => $customerid,
                    'brand_id' => $product->product_brand_id,
                    'score_value' => 1000,
                    'score_action' => 1,
                    'score_status' => 1,
                    'score_type' => 1,
                    'created_at' => date('Y/m/d H:i:s'),
                    'updated_at' => date('Y/m/d H:i:s')
                );
                Customers::record_score($scoreentry);
            }
            //remove from cart
            Cart::clear_cart($customerid);
            //remove from stock
            foreach($cartitems as $item){
                $remain = $item->product_count - $item->cart_amount;
                $entry = array(
                    'product_count' => $remain
                );
                Customers::update_remain($item->product_id, $item->product_sku_color_id, $item->product_sku_size_id, $entry);
            }
        }
        return $this->layout_init(view('customer.checkflow.final'), 1)->with('payresult', $payresult);
    }
}
