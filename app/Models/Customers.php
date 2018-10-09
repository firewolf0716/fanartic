<?php

namespace App\Models;

use Session;
use DB;
use Hash;
use Illuminate\Database\Eloquent\Model;

use App\Models\Products;
use App\Services\StockService;

class Customers extends AppModel
{
    protected $primaryKey = 'customer_id';
    protected $table = 'customers';

    protected $_validates = [
        'customer_name_first' => 'required',
        'customer_name_second' => 'required',
    ];

    public static function get_addresses($id)
    {
        return DB::table('customer_address')
            ->where('customer_id', $id)
            ->get();
    }

    public static function get_address($id)
    {
        return DB::table('customer_address')->where('id', $id)
            ->leftJoin('master_state', 'master_state.state_id', '=', 'customer_address.address_state')
            ->get();
    }

    public static function unset_flag($customerid)
    {
        DB::table('customer_address')->where('customer_id', $customerid)->update(['is_default' => 0]);
    }

    public static function add_address($entry)
    {
        $check_insert = DB::table('customer_address')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function delete_address($id)
    {
        return DB::table('customer_address')->where('id', $id)->delete();
    }

    public static function add_card($entry)
    {
        $check_insert = DB::table('customer_card')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function get_cards($customerid)
    {
        return DB::table('customer_card')->where('customer_id', $customerid)->get();
    }

    public static function get_card($id)
    {
        return DB::table('customer_card')->where('id', $id)->first();
    }

    public static function edit_card($entry, $id)
    {
        return DB::table('customer_card')->where('id', $id)->update($entry);
    }

    public static function edit_card_bytoken($entry, $token)
    {
        return DB::table('customer_card')->where('card_token', $token)->update($entry);
    }

    public static function delete_card($id)
    {
        return DB::table('customer_card')->where('id', $id)->delete();
    }

    public static function delete_card_bytoken($token)
    {
        return DB::table('customer_card')->where('card_token', $token)->delete();
    }

    public static function max_history_group()
    {
        return DB::table('customer_buy_history')->max('history_group');
    }

    public static function add_history($entry)
    {
        $check_insert = DB::table('customer_buy_history')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function update_remain($proid, $colorid, $sizeid, $entry)
    {
        DB::table("fan_product_stock_management")
            ->where('product_id', $proid)
            ->where('product_sku_color_id', $colorid)
            ->where('product_sku_size_id', $sizeid)
            ->update($entry);
    }

    public static function get_history_groups($customerid)
    {
        return DB::table('customer_buy_history')
            ->where('history_customerid', $customerid)
            ->groupBy('history_group')
            ->orderBy('history_date')->get();
    }

    public static function get_items_bygroup($group)
    {
        return DB::table('customer_buy_history')
            ->where('history_group', $group)
            ->leftJoin('fan_product', 'fan_product.product_id', 'customer_buy_history.history_productid')
            ->leftJoin('master_brand', 'fan_product.product_brand_id', 'master_brand.brand_id')
            ->leftJoin('fan_product_stock_management', function ($join) {
                $join->on('customer_buy_history.history_productid', '=', 'fan_product_stock_management.product_id');
                $join->on('customer_buy_history.history_skucolorid', '=', 'fan_product_stock_management.product_sku_color_id');
                $join->on('customer_buy_history.history_skusizeid', '=', 'fan_product_stock_management.product_sku_size_id');
            })
            ->groupBy('customer_buy_history.id')
            ->get();
    }

    public static function get_sum_bygroup($group)
    {
        return DB::table('customer_buy_history')->where('history_group', $group)->sum(DB::raw('history_amount * history_price'));
    }

    public static function get_history_group($customerid, $group)
    {
        return DB::table('customer_buy_history')
            ->where('history_customerid', $customerid)
            ->where('history_group', $group)
            ->leftJoin('customer_address', 'customer_buy_history.history_address', 'customer_address.id')
            ->leftJoin('customer_card', 'customer_buy_history.history_card', 'customer_card.id')
            ->first();
    }

    public static function get_OrderNo($customerid, $group)
    {

    }

    public static function add_favourite($entry)
    {
        $previousRec = DB::table('customer_favourite')->where('customer_id', $entry['customer_id'])
            ->where('fav_pro_id', $entry['fav_pro_id'])
            ->where('fav_sku_color', $entry['fav_sku_color'])
            ->where('fav_sku_size', $entry['fav_sku_size'])
            ->get();

        if (count($previousRec) > 0) {
            $id = $previousRec->first()->id;
            return DB::table('customer_favourite')->where('id', $id)->update($entry);
        } else {
            DB::table('customer_favourite')->insert($entry);
        }
    }

    public static function get_favs($customerid)
    {
        return DB::table('customer_favourite')->where('customer_id', $customerid)
            ->leftJoin('fan_product', 'fan_product.product_id', 'customer_favourite.fav_pro_id')
            ->leftJoin('master_brand', 'master_brand.brand_id', 'customer_favourite.fav_brand_id')
            ->leftJoin('fan_product_stock_management', function ($join) {
                $join->on('customer_favourite.fav_pro_id', '=', 'fan_product_stock_management.product_id');
                $join->on('customer_favourite.fav_sku_color', '=', 'fan_product_stock_management.product_sku_color_id');
                $join->on('customer_favourite.fav_sku_size', '=', 'fan_product_stock_management.product_sku_size_id');
            })
            ->get();
    }

    public static function remove_fav($id)
    {
        return DB::table('customer_favourite')->where('id', $id)->delete();
    }

    public static function get_fav($id)
    {
        return DB::table('customer_favourite')->where('id', $id)->first();
    }

    public static function add_recent($customerid, $productid)
    {
        date_default_timezone_set('Asia/Tokyo');
        $entry = array(
            'customer_id' => $customerid,
            'recent_product_id' => $productid,
            'recent_date' => date('Y/m/d H:i:s')
        );
        DB::table('customer_recent_product')->insert($entry);
    }

    public static function get_recent($customerid)
    {
        // dd($customerid);
        return DB::table('customer_recent_product')
            ->where('customer_id', $customerid)
            ->leftJoin('fan_product', 'fan_product.product_id', 'customer_recent_product.recent_product_id')
            ->leftJoin('master_brand', 'fan_product.product_brand_id', 'master_brand.brand_id')
            ->groupBy('recent_product_id')
            ->orderBy('recent_date', 'DESC')->get();
    }

    public static function is_magazine_info_exists($customerid)
    {
        $rec = DB::table('customer_magazine')->where('customer_id', $customerid)->first();
        if (!isset($rec)) {
            $entry = array(
                'customer_id' => $customerid,
                'magazine_status' => 0
            );
            DB::table('customer_magazine')->insert($entry);
            return 0;
        } else {
            return $rec->magazine_status;
        }
    }

    public static function change_magazine_info($customerid, $status)
    {
        $entry = array(
            'customer_id' => $customerid,
            'magazine_status' => $status
        );
        DB::table('customer_magazine')->where('customer_id', $customerid)->update($entry);
    }

    public static function record_score($entry)
    {
        $ct = DB::table('customer_score')->where('brand_id', $entry['brand_id'])->count();
        if ($ct > 0)
            return;
        DB::table('customer_score')->insert($entry);
        Customers::update_score_sum($entry);
    }

    public static function update_score_sum($entry)
    {
        $rec = DB::table('customer_scoresum')->where('customer_id', $entry['customer_id'])->where('brand_id', $entry['brand_id'])->first();
        if ($rec == null) {
            $sumscore = 0;
            if ($entry['score_type'] == 1) {//plus
                $sumscore += $entry['score_value'];
            } else if ($entry['score_type'] == 0) {//minus
                $sumscore -= $entry['score_value'];
            }
            $insertentry = array(
                'customer_id' => $entry['customer_id'],
                'brand_id' => $entry['brand_id'],
                'scoresum_value' => $sumscore
            );
            DB::table('customer_scoresum')->insert($insertentry);
        } else {
            $sumscore = $rec->scoresum_value;
            if ($entry['score_type'] == 1) {//plus
                $sumscore += $entry['score_value'];
            } else if ($entry['score_type'] == 0) {//minus
                $sumscore -= $entry['score_value'];
            }
            $updateentry = array(
                'customer_id' => $entry['customer_id'],
                'brand_id' => $entry['brand_id'],
                'scoresum_value' => $sumscore
            );
            DB::table('customer_scoresum')->where('customer_id', $entry['customer_id'])->where('brand_id', $entry['brand_id'])->update($updateentry);
        }
    }

    public static function get_score_bybrand($customerid)
    {
        return DB::table('customer_scoresum')
            ->where('customer_id', $customerid)
            ->leftJoin('master_brand', 'master_brand.brand_id', '=', 'customer_scoresum.brand_id')
            ->get();
    }

    public static function get_score($customerid)
    {
        return DB::table('customer_scoresum')->where('customer_id', $customerid)->sum('scoresum_value');
    }

    public static function add_entry($tablename, $entry)
    {
        $check_insert = DB::table($tablename)->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function add_receipt_detail($entry, $historyid, $receiptid)
    {
        //save product
        $product = Products::get_product($entry['history_productid']);
        $product_entry = array(
            'product_id' => $product->product_id,
            'product_salemethod' => $product->product_salemethod,
            'product_salerange' => $product->product_salerange,
            'product_brand_id' => $product->product_brand_id,
            'product_category_id' => $product->product_category_id,
            'product_event' => $product->product_event,
            'product_code' => $product->product_code,
            'product_name' => $product->product_name,
            'product_name_kana' => $product->product_name_kana,
            'product_name_detail' => $product->product_name_detail,
            'product_taxflag' => $product->product_taxflag,
            'product_old_status' => $product->product_old_status,
            'product_color' => $product->product_color,
            'product_size' => $product->product_size,
            'product_weight' => $product->product_weight,
            'product_season' => $product->product_season,
            'product_place' => $product->product_place,
            'product_material' => $product->product_material,
            'product_memo' => $product->product_memo,
            'product_status' => $product->product_status,
            'product_parent_id' => $product->product_parent_id,
            'product_merchant_id' => $product->product_merchant_id,
            'stock_type' => $product->stock_type,
            'max_order_count' => $product->max_order_count,
            'postage_type' => $product->postage_type,
            'postage' => $product->postage,
            'delivery_id' => $product->delivery_id,
            'shipping_id' => $product->shipping_id,
            'product_color_1' => $product->product_color_1
        );
        $product_id = Customers::add_entry('receipt_product', $product_entry);
        //save stock
        $stock = StockService::get_for_product($entry['history_productid'], $entry['history_skucolorid'], $entry['history_skusizeid'])->first();
        $stock_entry = array(
            'product_id' => $stock->product_id,
            'product_count' => $stock->product_count,
            'product_merchant_id' => $stock->product_merchant_id,
            'product_sku_size_id' => $stock->product_sku_size_id,
            'product_sku_color_id' => $stock->product_sku_color_id,
            'product_price_sale' => $stock->product_price_sale,
            'product_price_ref' => $stock->product_price_ref,
            'product_price_law' => $stock->product_price_law
        );
        $stockid = Customers::add_entry('receipt_stock', $stock_entry);

        $detailentry = array(
            'receipt_id' => $receiptid,
            'history_id' => $historyid,
            'stock_id' => $stock->product_stock_id,
            'product_data' => $product_id,
            'stock_data' => $stockid,
            'product_amt' => $entry['history_amount'],
            'tax_flag' => $product->product_taxflag,
            'tax_rate' => '8.0'
        );
        Customers::add_entry('receipt_detail', $detailentry);
    }

    public static function add_receipt($entry)
    {
        //save address
        $address = CustomerAddress::find($entry['history_address']);

        $address_entry = array(
            'name' => $address->name,
            'phone' => $address->phone,
            'zipcode' => $address->zipcode,
            'country' => $address->country,
            'city' => $address->city,
            'address_ex' => $address->address_ex,
            'province_jp' => $address->province_jp,
            'city_jp' => $address->city_jp,
            'address_jp' => $address->address_jp
        );
        $address_id = Customers::add_entry("receipt_address", $address_entry);
        //save credit card
        $card = DB::table('customer_card')->where('id', $entry['history_card'])->first();
        // dd($card);
        $card_entry = array();
        if ($entry['history_card'] == 'paypal') {
            $card_entry = array(
                'card_no' => 'paypal'
            );
        } else {
            $card_entry = array(
                'card_no' => $card->card_no,
                'card_token' => $card->card_token,
                'card_owner' => $card->card_owner,
                'card_validdate' => $card->card_validdate
            );
        }
        $card_id = Customers::add_entry("receipt_card", $card_entry);
        //save profile
        $profile = CustomerUser::find($entry['history_customerid']);
        $customer_entry = array(
            'customer_name_first' => $profile->customer_name_first,
            'customer_name_second' => $profile->customer_name_second,
            'customer_name_kana_first' => $profile->customer_name_kana_first,
            'customer_name_kana_second' => $profile->customer_name_kana_second,
            'customer_gender' => $profile->customer_gender,
            'customer_birthday' => $profile->customer_birthday,
            'customer_postalcode' => $profile->customer_postalcode,
            'customer_province' => $profile->customer_province,
            'customer_county' => $profile->customer_county,
            'customer_address_jp' => $profile->customer_address_jp,
            'customer_phone' => $profile->customer_phone,
            'customer_email' => $profile->customer_email,
            'customer_status' => $profile->customer_status
        );
        $profile_id = Customers::add_entry('receipt_customer', $customer_entry);

        $product = Products::get_product($entry['history_productid']);

        //save devliery setting
        $delivery = MerchantShipping::get_merchant_shipping($product->product_merchant_id, $product->shipping_id);

        $delivery_entry = array(
            'merchant_id' => $delivery->merchant_id,
            'shipping_state' => $delivery->shipping_state,
            'shipping_name' => $delivery->shipping_name,
            'shipping_name_en' => $delivery->shipping_name_en,
            'shipping_start_position' => $delivery->shipping_start_position,
            'shipping_memo' => $delivery->shipping_memo,
            'shipping_min_duration' => $delivery->shipping_min_duration,
            'shipping_max_duration' => $delivery->shipping_max_duration,
            'shipping_status' => $delivery->shipping_status,
            'shipping_default' => $delivery->shipping_default,
            'shipping_limit_date' => $delivery->shipping_limit_date,
            'shipping_limit_duration' => $delivery->shipping_limit_duration
        );
        $delivery_id = Customers::add_entry('receipt_shipping', $delivery_entry);
        date_default_timezone_set('Asia/Tokyo');
        $receipt_entry = array(
            'merchant_id' => $entry['history_merchantid'],
            'customer_id' => $entry['history_customerid'],
            'profile_data' => $profile_id,
            'address_data' => $address_id,
            'shipping_data' => $delivery_id,
            'credit_data' => $card_id,
            'date_juchu' => date('Y/m/d H:i:s'),
            'status' => '2',
        );
        return Customers::add_entry('receipts', $receipt_entry);
    }

    public static function receive_item($historyid)
    {
        DB::table('customer_buy_history')->where('id', $historyid)->update(['history_status' => 4]);
        $receipt_id = DB::table('receipt_detail')->where('history_id', $historyid)->first()->receipt_id;
        DB::table('receipts')->where('id', $receipt_id)->update(['status' => 4]);
    }

    public static function get_name_by_id($customer_id)
    {
        return DB::table('customers')->where('customer_id', $customer_id)
            ->get()->pluck('name')->first();
    }
}