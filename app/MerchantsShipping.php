<?php
namespace App;
use DB;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;
use Illuminate\Support\Facades\Log;

class MerchantsShipping extends Model{
    
    public static function addMerchantShipping($entry){
        $check_insert = DB::table('merchant_shipping')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function addMerchantShippingPrices($entry){
        $check_insert = DB::table('merchant_shipping')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }



    
    public static function addMerchantTempo($entry){
        $check_insert = DB::table('fan_merchant_submit')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }
    public static function getMerchantTempo($id){
        return DB::table('fan_merchant_submit')->where('merchant_id', $id)->get();
    }
    public static function getMerchantTempos(){
        return DB::table('fan_merchant_submit')->orderby('merchant_id', 'ASC')->get();
    }
    public static function editMerchantTempo($entry, $id){
        return DB::table('fan_merchant_submit')->where('merchant_id', '=', $id)->update($entry);
    }
    public static function getMerchant($id){
        return DB::table('fan_merchant')->where('merchant_id', $id)->get();
    }
    public static function getMerchants(){
        return DB::table('fan_merchant')->orderby('merchant_id', 'ASC')->get();
    }
    public static function editMerchant($entry, $id){
        return DB::table('fan_merchant')->where('merchant_id', '=', $id)->update($entry);
    }
}