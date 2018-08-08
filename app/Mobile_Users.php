<?php

namespace App;
use DB;
use Hash;
use Illuminate\Database\Eloquent\Model;

class Mobile_Users extends Model
{
    public static function get_authentication_user($id, $authentication) 
    {
        return DB::table('customers')
            ->where('customer_id', $id)
            ->where('token', $authentication)
            ->count();
    }

    public static function login($email, $password) 
    {
        $customer = DB::table('customers')->where('customer_email', $email)->where('verified', 1)->get()->first();
        if($customer == null){
            return -1;
        }
        if(Hash::check($password, $customer->customer_password)){
            return isset($customer);
        } else {
            return -2;
        }
    }

    public static function save_profile($id, $nick_name, $photo_path) 
    {
        return DB::table('customers')
            ->update(array(
                'nick_name'=>$nick_name,
                'photo_path', $authentication))
            ->where('customer_id', $id);
    }
}
