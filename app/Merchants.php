<?php
namespace App;
use DB;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;

class Merchants extends Model{
    protected $table = 'nm_merchant';
    public static function check_login($uname, $pwd){
        $check_email = DB::table('nm_merchant')->where('mer_email', '=', $uname)->where('mer_staus','=',1)->get();
        $check_password = 0;
        if(count($check_email)>0)
        { 
            foreach($check_email as $check)
            {
                if($check->mer_email == $uname)
                {
                    $check_password = DB::table('nm_merchant')->where('mer_email', '=', $uname)
                                                              ->where('mer_password', '=', $pwd)
                                                              ->where('mer_staus','=',1)->get();
                } else {
                    return -1;
                }
                if(count($check_password) < 1)
                {
                    return -2;
                }
                else if(count($check_password) > 0)
                { 
                    Session::put('sitemerchant','sitemerchant');
                    Session::put('merchantid', $check->mer_id);
                    Session::put('merchantname', $check->mer_fname);
                    return 1;
                }
            }
        } 
        else 
        { 
        return 0;
        }
    }
}