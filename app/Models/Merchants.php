<?php

namespace App\Models;

use DB;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;
use Illuminate\Support\Facades\Log;

class Merchants extends AppModel
{
    protected $table = 'fan_merchant';
    protected $primaryKey = 'merchant_id';

    public static function check_login($uname, $pwd)
    {
        $check_email = DB::table('fan_merchant')->where('merchant_email', '=', $uname)->where('merchant_status', '=', 1)->get();
        $check_password = 0;
        if (count($check_email) > 0) {
            foreach ($check_email as $check) {
                if ($check->merchant_email == $uname) {
                    $check_password = DB::table('fan_merchant')->where('merchant_email', '=', $uname)
                        ->where('merchant_password', '=', $pwd)
                        ->where('merchant_status', '=', 1)->get();
                } else {
                    return -1;
                }
                if (count($check_password) < 1) {
                    return -2;
                } else if (count($check_password) > 0) {
                    $check = $check_password[0];
                    Session::put('site', 'merchant');
                    Session::put('merchantid', $check->merchant_id);
                    Session::put('merchantname', $check->merchant_admin);
                    return 1;
                }
            }
        } else {
            return 0;
        }
    }

    public static function merchant_status($uname, $pwd)
    {
        $users = DB::table('fan_merchant_submit')->where('merchant_email', '=', $uname)->get();
        if (count($users) > 0) {
            $merchant = $users->first();
            if ($pwd != $merchant->merchant_password) {
                return -2;
            }
            return $merchant->merchant_status;
        } else {
            return -1;
        }
    }

    public static function addMerchant($entry)
    {
        $check_insert = DB::table('fan_merchant')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function addMerchantTempo($entry)
    {
        $check_insert = DB::table('fan_merchant_submit')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function editMerchant($entry, $id)
    {
        return DB::table('fan_merchant')->where('merchant_id', '=', $id)->update($entry);
    }
}