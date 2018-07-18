<?php

namespace App;
use Session;
use DB;
use Illuminate\Database\Eloquent\Model;

class Customers extends Model
{
    //
    public static function check_login($uname, $pwd) {
        $customers = DB::table('customers')->where('customer_email', '=', $uname)->get();
        $check_password = 0;
        if(count($customers) > 0) { 
            foreach($customers as $customer) {
                if($customer->customer_email == $uname) {
                    $check_password = DB::table('customers')->where('customer_email', '=', $uname)->where('customer_password', '=', $pwd)->get();
                } else {
                    return -1;
                }
                if(count($check_password) < 1) {
                    return -2;
                }
                else if(count($check_password) > 0) {
                    Session::put('site','customer');
                    Session::put('customerid', $customer->customer_id);
                    Session::put('customermail', $customer->customer_email);
                    return 1;
                }
            }
        } else { 
            return 0;
        }
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
}
