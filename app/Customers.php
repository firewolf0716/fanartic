<?php

namespace App;
use Session;
use DB;
use Hash;
use Illuminate\Database\Eloquent\Model;

class Customers extends Model
{
    public static function check_login($uname, $pwd){
        $customer = DB::table('customers')->where('customer_email', '=', $uname)->where('verified', 1)->get()->first();
        // dd($customer);
        if($customer == null){
            return -1;
        }
        // dd(Hash::make($pwd));
        if(Hash::check($pwd, $customer->customer_password)){
            // dd('success');
            Session::put('site','customer');
            Session::put('customerid', $customer->customer_id);
            Session::put('customermail', $customer->customer_email);
            return 1;
        } else {
            return -2;
        }
    }

    public static function signverify($email, $token){
        $prevmail = DB::table('customers')->where('customer_email', '=', $email)->get()->first();
        // dd($prevmail);
        if(isset($prevmail)){
            if($token == $prevmail->token){
                DB::table('customers')->where('customer_email', '=', $email)->update(array('verified' => 1));
                Session::put('site','customer');
                Session::put('customerid', $prevmail->customer_id);
                Session::put('customermail', $prevmail->customer_email);
                return true;
            }
        }
        return false;
    }

    public static function is_customer_email_exists($email){
        $prevmail = DB::table('customers')->where('customer_email', '=', $email)->get()->first();
        return isset($prevmail);
    }

    public static function customer_status($uname, $pwd){
        $users = DB::table('customers')->where('customer_email', '=', $uname)->get();
        if(count($users) > 0){
            $customer = $users->first();
            if($pwd != $customer->customer_password){
                return -2;
            }
            return $customer->customer_status;
        } else {
            return -1;
        }
    }

    public static function insert_customer($entry){
        $check_insert = DB::table('customers')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function get_customers(){
        return DB::table('customers')->orderBy('customer_id', 'ASC')->get();
    }

    public static function get_customer($id){
        return DB::table('customers')->where('customer_id', $id)->get();
    }

    public static function edit_customer($entry,$id)
    {
        return DB::table('customers')->where('customer_id', $id)->update($entry);
    }

    public static function remove($id){
        return DB::table('customers')->where('customer_id', $id)->delete();
    }

    public static function addRecent($id, $proid){
        $entry = array(
            'customer_id' => $id,
            'product_id' => $proid,
        );
        DB::table('customer_recent_product')->insert($entry);
    }

    public static function getRecent($id){
        return DB::table('customer_recent_product')
            ->where('customer_id', $id)
            ->get();
    }

    public static function get_addresses($id){
        return DB::table('customer_address')->where('customer_id', $id)
                ->leftJoin('master_state', 'master_state.state_id', '=', 'customer_address.address_state')
                ->get();
    }

    public static function get_address($id){
        return DB::table('customer_address')->where('id', $id)
            ->leftJoin('master_state', 'master_state.state_id', '=', 'customer_address.address_state')
            ->get();
    }

    public static function add_address($entry){
        $prevaddrct = DB::table('customer_address')->where('customer_id', $entry['customer_id'])->count();
        // dd($prevaddrct);
        if($prevaddrct == 0){
            $entry['address_default'] = 1;
        } else {
            $entry['address_default'] = 0;
        }
        $check_insert = DB::table('customer_address')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function edit_address($entry, $id){
        return DB::table('customer_address')->where('id', $id)->update($entry);
    }

    public static function unset_address_flag($customerid){
        DB::table('customer_address')->where('customer_id', $customerid)->update(['address_default' => 0]);
    }

    public static function delete_address($id){
        return DB::table('customer_address')->where('id', $id)->delete();
    }

    public static function add_card($entry){
        $check_insert = DB::table('customer_card')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function get_cards($customerid){
        return DB::table('customer_card')->where('customer_id', $customerid)->get();
    }

    public static function get_card($id){
        return DB::table('customer_card')->where('id', $id)->get();
    }

    public static function edit_card($entry, $id){
        return DB::table('customer_card')->where('id', $id)->update($entry);
    }

    public static function delete_card($id){
        return DB::table('customer_card')->where('id', $id)->delete();
    }

    public static function max_history_group(){
        return DB::table('customer_buy_history')->max('history_group');
    }

    public static function add_history($entry){
        $check_insert = DB::table('customer_buy_history')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function update_remain($proid, $colorid, $sizeid, $entry){
        DB::table("fan_product_stock_management")
            ->where('product_id', $proid)
            ->where('product_sku_color_id', $colorid)
            ->where('product_sku_size_id', $sizeid)
            ->update($entry);
    }

    public static function get_history_groups($customerid){
        return DB::table('customer_buy_history')
            ->where('history_customerid', $customerid)
            ->groupBy('history_group')
            ->orderBy('history_date')->get();
    }

    public static function get_items_bygroup($group){
        return DB::table('customer_buy_history')
            ->where('history_group', $group)
            ->leftJoin('fan_product', 'fan_product.product_id', 'customer_buy_history.history_productid')
            ->leftJoin('master_brand', 'fan_product.product_brand_id', 'master_brand.brand_id')
            ->leftJoin('fan_product_stock_management', function($join){
                $join->on('customer_buy_history.history_productid', '=', 'fan_product_stock_management.product_id');
                $join->on('customer_buy_history.history_skucolorid', '=', 'fan_product_stock_management.product_sku_color_id');
                $join->on('customer_buy_history.history_skusizeid', '=', 'fan_product_stock_management.product_sku_size_id');
            })
            ->groupBy('customer_buy_history.id')
            ->get();
    }

    public static function get_sum_bygroup($group){
        return DB::table('customer_buy_history')->where('history_group', $group)->sum(DB::raw('history_amount * history_price'));
    }

    public static function get_history_group($customerid, $group){
        return DB::table('customer_buy_history')
            ->where('history_customerid', $customerid)
            ->where('history_group', $group)
            ->leftJoin('customer_address', 'customer_buy_history.history_address', 'customer_address.id')
            ->leftJoin('customer_card', 'customer_buy_history.history_card', 'customer_card.id')
            ->get()->first();
    }

    public static function get_OrderNo($customerid, $group){

    }

    public static function add_favourite($entry){
        $previousRec = DB::table('customer_favourite')->where('customer_id', $entry['customer_id'])
            ->where('fav_pro_id', $entry['fav_pro_id'])
            ->where('fav_sku_color', $entry['fav_sku_color'])
            ->where('fav_sku_size', $entry['fav_sku_size'])
            ->get();

        if(count($previousRec) > 0){
            $id = $previousRec->first()->id;
            return DB::table('customer_favourite')->where('id', $id)->update($entry);
        } else {
            DB::table('customer_favourite')->insert($entry);
        }
    }

    public static function get_favs($customerid){
        return DB::table('customer_favourite')->where('customer_id', $customerid)
            ->leftJoin('fan_product', 'fan_product.product_id', 'customer_favourite.fav_pro_id')
            ->leftJoin('master_brand', 'master_brand.brand_id', 'customer_favourite.fav_brand_id')
            ->leftJoin('fan_product_stock_management', function($join){
                $join->on('customer_favourite.fav_pro_id', '=', 'fan_product_stock_management.product_id');
                $join->on('customer_favourite.fav_sku_color', '=', 'fan_product_stock_management.product_sku_color_id');
                $join->on('customer_favourite.fav_sku_size', '=', 'fan_product_stock_management.product_sku_size_id');
            })
            ->get();
    }

    public static function remove_fav($id){
        return DB::table('customer_favourite')->where('id', $id)->delete();
    }

    public static function get_fav($id){
        return DB::table('customer_favourite')->where('id', $id)->get()->first();
    }

    public static function add_recent($customerid, $productid){
        date_default_timezone_set('Asia/Tokyo');
        $entry = array(
            'customer_id' => $customerid,
            'recent_product_id' => $productid,
            'recent_date' => date('Y/m/d H:i:s')
        );
        DB::table('customer_recent_product')->insert($entry);
    }

    public static function get_recent($customerid){
        // dd($customerid);
        return DB::table('customer_recent_product')
            ->where('customer_id', $customerid)
            ->leftJoin('fan_product', 'fan_product.product_id', 'customer_recent_product.recent_product_id')
            ->leftJoin('master_brand', 'fan_product.product_brand_id', 'master_brand.brand_id')
            ->groupBy('recent_product_id')
            ->orderBy('recent_date', 'DESC')->get();
    }

    public static function is_magazine_info_exists($customerid){
        $rec = DB::table('customer_magazine')->where('customer_id', $customerid)->first();
        if(!isset($rec)){
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

    public static function change_magazine_info($customerid, $status){
        $entry = array(
            'customer_id' => $customerid,
            'magazine_status' => $status
        );
        DB::table('customer_magazine')->where('customer_id', $customerid)->update($entry);
    }

    public static function record_score($entry){
        date_default_timezone_set('Asia/Tokyo');
        $tmfrom = date('Y/m/d ')."00:00:00";
        $tmto = date('Y/m/d ')."23:59:59";
        $ct = DB::table('customer_score')->where('brand_id', $entry['brand_id'])->whereBetween('score_create', [$tmfrom, $tmto])->count();
        if($ct > 0)
            return;
        DB::table('customer_score')->insert($entry);
        Customers::update_score_sum($entry);
    }

    public static function update_score_sum($entry){
        date_default_timezone_set('Asia/Tokyo');
        $rec = DB::table('customer_scoresum')->where('customer_id', $entry['customer_id'])->where('brand_id', $entry['brand_id'])->get()->first();
        if($rec == null){
            $sumscore = 0;
            if($entry['score_type'] == 1){//plus
                $sumscore += $entry['score_value'];
            } else if($entry['score_type'] == 0){//minus
                $sumscore -= $entry['score_value'];
            }
            $insertentry = array(
                'customer_id' => $entry['customer_id'],
                'brand_id' => $entry['brand_id'],
                'scoresum_value' => $sumscore,
                'scoresum_create' => date('Y/m/d H:i:s'),
                'scoresum_update' => date('Y/m/d H:i:s')
            );
            DB::table('customer_scoresum')->insert($insertentry);
        } else {
            $sumscore = $rec->scoresum_value;
            if($entry['score_type'] == 1){//plus
                $sumscore += $entry['score_value'];
            } else if($entry['score_type'] == 0){//minus
                $sumscore -= $entry['score_value'];
            }
            $updateentry = array(
                'customer_id' => $entry['customer_id'],
                'brand_id' => $entry['brand_id'],
                'scoresum_value' => $sumscore,
                'scoresum_update' => date('Y/m/d H:i:s')
            );
            DB::table('customer_scoresum')->where('customer_id', $entry['customer_id'])->where('brand_id', $entry['brand_id'])->update($updateentry);
        }
    }

    public static function get_score_bybrand($customerid){
        return DB::table('customer_scoresum')
            ->where('customer_id', $customerid)
            ->leftJoin('master_brand', 'master_brand.brand_id', '=', 'customer_scoresum.brand_id')
            ->get();
    }

    public static function get_score($customerid){
        return DB::table('customer_scoresum')->where('customer_id', $customerid)->sum('scoresum_value');
    }
}
