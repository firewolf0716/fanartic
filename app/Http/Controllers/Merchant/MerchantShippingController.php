<?php

namespace App\Http\Controllers\Merchant;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Malls;
use App\Models\Brands;
use App\Models\MallBrands;
use App\Models\MallCategorys;
use App\Models\Categorys;
use App\Models\MerchantShipping;

class MerchantShippingController extends Controller
{
    public function merchant_shipping_add() {
        if ($this->get_merchant_session_id() == 0) {
            return Redirect::to('merchant/signin');
        }

        return view('merchant.shipping.add')->with('merchant_shipping_id', 0);
    }

    public function merchant_shipping_updatepost() {
        $merchant_id = $this->get_merchant_session_id();
        if ($merchant_id == 0) {
            return Redirect::to('merchant/signin');
        }

        $entry =  array(
            'merchant_id' => $merchant_id,
            'shipping_state' => Input::get('shipping_state'),
            'shipping_name' => Input::get('shipping_name'),
            'shipping_name_en' => Input::get('shipping_name_en'),
            'shipping_start_position' => Input::get('shipping_start_position'),
            'shipping_memo' => Input::get('shipping_memo'),
            'shipping_min_duration' => Input::get('shipping_min_duration'),
            'shipping_max_duration' => Input::get('shipping_max_duration'),
            'shipping_status' => Input::get('shipping_status'),
            'shipping_default' => Input::get('shipping_default'),
            'shipping_limit_date' => '',
            'shipping_limit_duration' => '',
            'created_at' => Input::get('create_date'),
            'updated_at' => Input::get('update_date')
        );

        if (Input::get('shipping_limit_date_set') == 1) {
            $entry['shipping_limit_date'] = Input::get('shipping_limit_date');
        } 

        if (Input::get('shipping_limit_duration_set') == 1) {
            $entry['shipping_limit_duration'] = Input::get('shipping_limit_duration');
        }

        $shippingID = MerchantShipping::updateMerchantShipping($entry, Input::get('merchant_shipping_id'));
        $merchant_shipping_price = Input::get('merchant_shipping_price');
        
        $items = explode($this->get_level_split_string(1), $merchant_shipping_price);

        foreach($items as $item) {
            $subItems = explode($this->get_level_split_string(2), $item);
            if (count($subItems) < 2) {
                continue;
            }
            
            if ($subItems[2] == 0) {
                $merchantShippingPrice = array (
                    'merchant_id' => $merchant_id,
                    'shipping_id' => $shippingID,
                    'shipping_price' => $subItems[0],
                    'shipping_description' => $subItems[1]
                );
                MerchantShipping::updateMerchantShippingPrice($merchantShippingPrice, 0);
            } else {
                $merchantShippingPrice = array (
                    'merchant_id' => $merchant_id,
                    'shipping_id' => $shippingID,
                    'shipping_price' => $subItems[0],
                    'shipping_description' => $subItems[1]
                );
                MerchantShipping::updateMerchantShippingPrice($merchantShippingPrice, $subItems[2]);
            }
        }

        return Redirect::to('merchant/shipping/list');
    }

    public function merchant_shipping_list() {
        $merchant_id = $this->get_merchant_session_id();
        if ($merchant_id == 0) {
            return Redirect::to('merchant/signin');
        }

        $merchant_shippings = MerchantShipping::get_merchant_shippings($merchant_id);
        return view('merchant.shipping.list')->with('merchant_shippings', $merchant_shippings);
    }
    public function merchant_shipping_remove($shipping_id) {
        $merchant_id = $this->get_merchant_session_id();
        if ($merchant_id == 0) {
            return Redirect::to('merchant/signin');
        }

        $merchant_shippings = MerchantShipping::remove_merchant_shippings($merchant_id, $shipping_id);
        return Redirect::to('merchant/shipping/list');
    }
    public function merchant_shipping_edit($shipping_id) {
        $merchant_id = $this->get_merchant_session_id();
        if ($merchant_id == 0) {
            return Redirect::to('merchant/signin');
        }

        $merchant_shipping = MerchantShipping::get_merchant_shipping($merchant_id, $shipping_id);
        $merchant_shipping_prices = MerchantShipping::get_merchant_shipping_prices($merchant_id, $shipping_id);

        $strMerchantShippingPrices = "";
        foreach ($merchant_shipping_prices as $merchant_shipping_price) {
            if ($strMerchantShippingPrices != "") {
                $strMerchantShippingPrices .= $this->get_level_split_string(1);
            }
            $strMerchantShippingPrices .= $merchant_shipping_price->shipping_price_id;
            $strMerchantShippingPrices .= $this->get_level_split_string(2) . $merchant_shipping_price->shipping_price;
            $strMerchantShippingPrices .= $this->get_level_split_string(2) . $merchant_shipping_price->shipping_description;
        }

        return view('merchant.shipping.edit')->with('merchant_shipping', $merchant_shipping)
                                            ->with('merchant_shipping_id', $shipping_id)
                                            ->with('strMerchantShippingPrices', $strMerchantShippingPrices);
    }
    public function merchant_shipping_remove_price($shipping_price_id) {
        $merchant_id = $this->get_merchant_session_id();
        if ($merchant_id == 0) {
            return Redirect::to('merchant/signin');
        }
 
        return MerchantShipping::remove_merchant_shipping_price($merchant_id, $shipping_price_id);
    }
}
