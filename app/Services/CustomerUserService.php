<?php

namespace App\Services;

use Session;
use Hash;

use App\Models\CustomerUser;

class CustomerUserService
{
    public static function is_customer_email_exists($email)
    {
        $prevmail = CustomerUser::where('customer_email', '=', $email)->get()->first();
        return isset($prevmail);
    }

    public static function check_login($uname, $pwd)
    {
        $customer = CustomerUser::where('customer_email', '=', $uname)->where('verified', 1)->get()->first();
        if ($customer == null) {
            return -1;
        }
        if (Hash::check($pwd, $customer->customer_password)) {
            Session::put('site', 'customer');
            Session::put('customerid', $customer->customer_id);
            Session::put('customermail', $customer->customer_email);
            return 1;
        } else {
            return -2;
        }
    }

    public static function customer_status($uname, $pwd)
    {
        // $users = CustomerUser::where('customer_email', '=', $uname)->get();
        // if(count($users) > 0){
        //     $customer = $users->first();
        //     if($pwd != $customer->customer_password){
        //         return -2;
        //     }
        //     return $customer->customer_status;
        // } else {
        //     return -1;
        // }
    }

    public static function signverify($email, $token)
    {
        $prevmail = CustomerUser::where('customer_email', '=', $email)->get()->first();
        // dd($prevmail);
        if (isset($prevmail)) {
            if ($token == $prevmail->token) {
                CustomerUser::where('customer_email', '=', $email)->update(array('verified' => 1));
                Session::put('site', 'customer');
                Session::put('customerid', $prevmail->customer_id);
                Session::put('customermail', $prevmail->customer_email);
                return true;
            }
        }
        return false;
    }
}