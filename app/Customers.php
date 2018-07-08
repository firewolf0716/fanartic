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
}
