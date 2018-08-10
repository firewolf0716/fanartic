<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Malls;
use App\Brands;
use App\MallBrands;
use App\MallCategorys;
use App\Categorys;
use App\MerchantShipping;

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

    // public function edit($id) {
    //     if ($this->check_admin_session() == false) {
    //         return Redirect::to('admin/login');
    //     }

    //     $search = Malls::get_mall($id);
    //     if(isset($search)){
    //         $mall = $search[0];
    //         $brands = Brands::get_brands();
    //         $selBrands = MallBrands::get_brands($mall->mall_id);
    //         $selBrandsString = '';
    //         for ($i = 0; $i < count($selBrands); $i++) {
    //             if ($i != 0) {
    //                 $selBrandsString .= ",";
    //             }
    //             $selBrandsString .= $selBrands[$i]->brand_id;
    //         }

    //         $mall_brands = explode(',', $selBrandsString);
            
    //         $selcategorys = Categorys::get_categorys_for_mall($mall->mall_id);
    //         return view('admin.mall.edit')->with('mall', $mall)
    //                                     ->with('brands', $brands)
    //                                     ->with('selBrands', $selBrandsString)
    //                                     ->with('mall_brands', $mall_brands)
    //                                     ->with('selcategorys', $selcategorys);
    //     } else{
    //         return Redirect::to('admin/mall/list');
    //     }
    // }

    // public function editpost() {
    //     if ($this->check_admin_session() == false) {
    //         return Redirect::to('admin/login');
    //     }

    //     $entry =  array(
    //         'mall_name' => Input::get('mall_name'),
    //         'mall_name_en' => Input::get('mall_name_en'),
    //         'mall_status' => Input::get('optionValid'),
    //         'mall_create' => Input::get('create_date'),
    //         'mall_update' => Input::get('update_date')
    //     );
    //     $mallid = Input::get('id');
    //     Malls::edit_mall($entry, $mallid);

    //     MallBrands::remove_brands($mallid);
    //     if(Input::has('mall_brands')){
    //         $brandString = Input::get('mall_brands');
    //         $brands = explode(',', $brandString);
    //         foreach($brands as $brand) {
    //             if ($brand != '') {
    //                 $mentry = array(
    //                     'mall_id' => $mallid,
    //                     'brand_id' => $brand
    //                 );
    //                 MallBrands::insert_match($mentry);
    //             }
    //         }
    //     }

    //     $mallCategoryInfo = Input::get('mall_category');
    //     $categorys = explode(",", $mallCategoryInfo);
    //     MallCategorys::remove_categorys($mallid);
    //     if ($mallCategoryInfo[0] != "") {
    //         foreach($categorys as $category){
    //             $mentry = array(
    //                 'mall_id' => $mallid,
    //                 'category_id' => $category
    //             );
    //             MallCategorys::insert_match($mentry);
    //         }
    //     }

    //     return Redirect::to('admin/mall/list');
    // }

    // public function delete($id) {
    //     if ($this->check_admin_session() == false) {
    //         return Redirect::to('admin/login');
    //     }

    //     Malls::remove_mall($id);
    //     MallBrands::remove_brands($id);
    //     MallCategorys::remove_categorys($id);
    //     return Redirect::to('admin/mall/list');
    // }
}
