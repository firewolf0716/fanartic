<?php

namespace App;
use DB;
use Hash;
use Illuminate\Database\Eloquent\Model;

class Mobile_Users extends Model
{
    public static function login($email, $password) 
    {
        $customer = DB::table('customers')
            ->where('customer_email', $email)
            ->where('verified', 1)
            ->get()->first();

        if ($customer == NULL) {
            return NULL;
        }

        if (Hash::check($password, $customer->customer_password)) {
            return $customer;
        } else {
            return NULL;
        }
    }
    
    public static function updateAuthentication($id, $authentication)
    {
        return DB::table('customers')
            ->where('customer_email', $id)
            ->update(array (
                'token' => $authentication
            ));
            
    }

    public static function save_profile($id, $nick_name, $photo_path) 
    {
        return DB::table('customers')
            ->update([
                'nick_name' => $nick_name,
                'photo_path'=> $photo_path])
            ->where('customer_id', $id);
    }
}
