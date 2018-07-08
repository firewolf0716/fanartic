<?php

namespace App;
use DB;
use Illuminate\Database\Eloquent\Model;

class Customers extends Model
{
    //
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
