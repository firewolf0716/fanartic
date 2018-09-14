<?php

namespace App\Http\Controllers\Merchant;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
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
    public function shipping_add()
    {
        return view('merchant.shipping.add')->with('merchant_shipping_id', 0);
    }

    public function shipping_updatepost()
    {
        $entry = array(
            'merchant_id' => Auth::id(),
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

        foreach ($items as $item) {
            $subItems = explode($this->get_level_split_string(2), $item);
            if (count($subItems) < 2) {
                continue;
            }

            if ($subItems[2] == 0) {
                $merchantShippingPrice = array(
                    'merchant_id' => Auth::id(),
                    'shipping_id' => $shippingID,
                    'shipping_price' => $subItems[0],
                    'shipping_description' => $subItems[1]
                );
                MerchantShipping::updateMerchantShippingPrice($merchantShippingPrice, 0);
            } else {
                $merchantShippingPrice = array(
                    'merchant_id' => Auth::id(),
                    'shipping_id' => $shippingID,
                    'shipping_price' => $subItems[0],
                    'shipping_description' => $subItems[1]
                );
                MerchantShipping::updateMerchantShippingPrice($merchantShippingPrice, $subItems[2]);
            }
        }

        return Redirect::to('merchant/shipping/list');
    }

    public function shipping_list()
    {
        $merchant_shippings = MerchantShipping::get_merchant_shippings(Auth::id());
        return view('merchant.shipping.list')->with('merchant_shippings', $merchant_shippings);
    }

    public function shipping_remove($shipping_id)
    {
        $merchant_shippings = MerchantShipping::remove_merchant_shippings(Auth::id(), $shipping_id);
        return Redirect::to('merchant/shipping/list');
    }

    public function shipping_edit($shipping_id)
    {
        $merchant_shipping = MerchantShipping::get_merchant_shipping(Auth::id(), $shipping_id);
        $merchant_shipping_prices = MerchantShipping::get_merchant_shipping_prices(Auth::id(), $shipping_id);

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

    public function shipping_remove_price($shipping_price_id)
    {
        return MerchantShipping::remove_merchant_shipping_price(Auth::id(), $shipping_price_id);
    }
}
