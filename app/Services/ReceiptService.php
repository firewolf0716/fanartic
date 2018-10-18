<?php

namespace App\Services;

use Session;
use Hash;
use DB;

use App\Models\Brands;
use App\Models\CustomerAddress;
use App\Models\CustomerCard;
use App\Models\CustomerUser;
use App\Models\Products;
use App\Models\MerchantShipping;
use App\Models\ReceiptAddress;
use App\Models\ReceiptCard;
use App\Models\ReceiptCustomer;
use App\Models\ReceiptShipping;
use App\Models\ReceiptProduct;
use App\Models\ReceiptStock;
use App\Models\ReceiptDetail;
use App\Models\Receipts;

class ReceiptService
{
    public static function add_receipt($entry)
    {
        //save address
        $address = CustomerAddress::find($entry['history_address']);
        $rep_address = new ReceiptAddress();

        $rep_address->name = $address->name;
        $rep_address->phone = $address->phone;
        $rep_address->zipcode = $address->zipcode;
        $rep_address->country = $address->country;
        $rep_address->city = $address->city;
        $rep_address->address_ex = $address->address_ex;
        $rep_address->province_jp = $address->province_jp;
        $rep_address->city_jp = $address->city_jp;
        $rep_address->address_jp = $address->address_jp;
        $rep_address->save();

        $address_id = $rep_address->id;
        //save credit card
        $card = CustomerCard::find($entry['history_card']);
        // dd($card);
        $rep_card = new ReceiptCard();
        $card_entry = array();
        if ($entry['history_card'] == 'paypal') {
            $rep_card->card_no = 'paypal';
        } else {
            $rep_card->card_no = $card->card_no;
            $rep_card->card_token = $card->card_token;
            $rep_card->card_owner = $card->card_owner;
            $rep_card->card_validdate = $card->card_validdate;
        }
        $rep_card->save();
        $card_id = $rep_card->id;
        //save profile
        $profile = CustomerUser::find($entry['history_customerid']);

        $rep_user = new ReceiptCustomer();
        $rep_user->customer_name_first = $profile->customer_name_first;
        $rep_user->customer_name_second = $profile->customer_name_second;
        $rep_user->customer_name_kana_first = $profile->customer_name_kana_first;
        $rep_user->customer_name_kana_second = $profile->customer_name_kana_second;
        $rep_user->customer_gender = $profile->customer_gender;
        $rep_user->customer_birthday = $profile->customer_birthday;
        $rep_user->customer_postalcode = $profile->customer_postalcode;
        $rep_user->customer_province = $profile->customer_province;
        $rep_user->customer_county = $profile->customer_county;
        $rep_user->customer_address_jp = $profile->customer_address_jp;
        $rep_user->customer_phone = $profile->customer_phone;
        $rep_user->customer_email = $profile->customer_email;
        $rep_user->customer_status = $profile->customer_status;
        $rep_user->save();

        $profile_id = $rep_user->id;

        $product = Products::find($entry['history_productid']);

        //save devliery setting
        $delivery = MerchantShipping::get_merchant_shipping($product->product_merchant_id, $product->shipping_id);

        $rep_delivery = new ReceiptShipping();
        $rep_delivery->merchant_id = $delivery->merchant_id;
        $rep_delivery->shipping_state = $delivery->shipping_state;
        $rep_delivery->shipping_name = $delivery->shipping_name;
        $rep_delivery->shipping_name_en = $delivery->shipping_name_en;
        $rep_delivery->shipping_start_position = $delivery->shipping_start_position;
        $rep_delivery->shipping_memo = $delivery->shipping_memo;
        $rep_delivery->shipping_min_duration = $delivery->shipping_min_duration;
        $rep_delivery->shipping_max_duration = $delivery->shipping_max_duration;
        $rep_delivery->shipping_status = $delivery->shipping_status;
        $rep_delivery->shipping_default = $delivery->shipping_default;
        $rep_delivery->shipping_limit_date = $delivery->shipping_limit_date;
        $rep_delivery->shipping_limit_duration = $delivery->shipping_limit_duration;
        $rep_delivery->save();

        $delivery_id = $rep_delivery->id;
        date_default_timezone_set('Asia/Tokyo');

        $receipt = new Receipts();
        $receipt->merchant_id = $entry['history_merchantid'];
        $receipt->customer_id = $entry['history_customerid'];
        $receipt->profile_data = $profile_id;
        $receipt->address_data = $address_id;
        $receipt->shipping_data = $delivery_id;
        $receipt->credit_data = $card_id;
        $receipt->date_juchu = date('Y/m/d H:i:s');
        $receipt->status = '2';
        $receipt->save();

        return $receipt->id;
    }

    public static function add_receipt_detail($entry, $historyid, $receiptid)
    {
        //save product
        $product = Products::find($entry['history_productid']);

        $rep_product = new ReceiptProduct();
        $rep_product->product_id = $product->product_id;
        $rep_product->product_salemethod = $product->product_salemethod;
        $rep_product->product_salerange = $product->product_salerange;
        $rep_product->product_brand_id = $product->product_brand_id;
        $rep_product->product_category_id = $product->product_category_id;
        $rep_product->product_event = $product->product_event;
        $rep_product->product_code = $product->product_code;
        $rep_product->product_name = $product->product_name;
        $rep_product->product_name_kana = $product->product_name_kana;
        $rep_product->product_name_detail = $product->product_name_detail;
        $rep_product->product_taxflag = $product->product_taxflag;
        $rep_product->product_old_status = $product->product_old_status;
        $rep_product->product_color = $product->product_color;
        $rep_product->product_size = $product->product_size;
        $rep_product->product_weight = $product->product_weight;
        $rep_product->product_season = $product->product_season;
        $rep_product->product_place = $product->product_place;
        $rep_product->product_material = $product->product_material;
        $rep_product->product_memo = $product->product_memo;
        $rep_product->product_status = $product->product_status;
        $rep_product->product_parent_id = $product->product_parent_id;
        $rep_product->product_merchant_id = $product->product_merchant_id;
        $rep_product->stock_type = $product->stock_type;
        $rep_product->max_order_count = $product->max_order_count;
        $rep_product->postage_type = $product->postage_type;
        $rep_product->postage = $product->postage;
        $rep_product->delivery_id = $product->delivery_id;
        $rep_product->shipping_id = $product->shipping_id;
        $rep_product->product_color_1 = $product->product_color_1;
        $rep_product->save();

        $product_id = $rep_product->id;
        //save stock
        // dd($entry['history_skucolorid']);
        $stock = StockService::get_for_product($entry['history_productid'], $entry['history_skucolorid'], $entry['history_skusizeid']);
        $rep_stock = new ReceiptStock();
        $rep_stock->product_id = $stock->product_id;
        $rep_stock->product_count = $stock->product_count;
        $rep_stock->product_merchant_id = $stock->product_merchant_id;
        $rep_stock->product_sku_size_id = $stock->product_sku_size_id;
        $rep_stock->product_sku_color_id = $stock->product_sku_color_id;
        $rep_stock->product_price_sale = $stock->product_price_sale;
        $rep_stock->product_price_ref = $stock->product_price_ref;
        $rep_stock->product_price_law = $stock->product_price_law;
        $rep_stock->save();

        $stockid = $rep_stock->id;

        $detail = new ReceiptDetail();
        $detail->receipt_id = $receiptid;
        $detail->history_id = $historyid;
        $detail->stock_id = $stock->product_stock_id;
        $detail->product_data = $product_id;
        $detail->stock_data = $stockid;
        $detail->product_amt = $entry['history_amount'];
        $detail->tax_flag = $product->product_taxflag;
        $detail->tax_rate = '8.0';
        $detail->save();
    }

    public static function get_count_receipt($date){
        return Receipts::where('created_at', 'like', $date."%")->count();
    }

    public static function get_count_receipt_lastyear(){
        $lastyear = date('Y-m-d', strtotime('-1 year'));
        return Receipts::where('created_at', 'like', $lastyear."%")->count();
    }

    public static function __today(){
        $today = date("Y-m-d");
        return Receipts::where('created_at', 'like', $today."%");
    }

    public static function get_count_today_receipt(){
        $query_builder = ReceiptService::__today();
        //->where('status','=', '1')
        return $query_builder->count();
    }

    public static function get_count_unshipping_receipt(){
        $query_builder = ReceiptService::__today();
        return $query_builder->where('status','!=', '3')->count();
    }

    public static function get_count_unsupported_receipt(){
        $query_builder = ReceiptService::__today();
        return $query_builder->where('status','=', '0')->orwhere('status','=', '1')->count();
    }

    public static function  get_where_price($where){
        if ( $where  == 'today' )
    	   $result = Receipts::where('receipts.created_at', 'like', date("Y-m-d").'%');
        else if ( $where == 'this_month' )
           $result = Receipts::where('receipts.created_at', 'like', date("Y-m").'%');

        $result = $result -> where('status','=', '2')
                            ->where('status','=', '3')
                            ->join('receipt_detail', 'receipt_detail.receipt_id', '=', 'receipts.id')
            				->join('receipt_stock', 'receipt_stock.id', '=', 'receipt_detail.stock_data')
                            ->sum('receipt_stock.product_price_sale', '*', 'receipt_stock.product_count');
        return $result;
    }
}
