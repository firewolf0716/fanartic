<?php

namespace App;
use DB;
use Session;
use Illuminate\Database\Eloquent\Model;

class Admins extends Model
{
    //
    public static function check_login($uname, $pwd){
        $admins = DB::table('master_admin')->where('admin_name', '=', $uname)->get();
        $check_password = 0;
        if(count($admins)>0)
        { 
            foreach($admins as $admin)
            {
                if($admin->admin_name == $uname)
                {
                    $check_password = DB::table('master_admin')->where('admin_name', '=', $uname)->where('admin_password', '=', $pwd)->get();
                } else {
                    return -1;
                }
                if(count($check_password) < 1)
                {
                    return -2;
                }
                else if(count($check_password) > 0)
                { 
                    Session::put('adminid', $admin->admin_name);
                    Session::put('adminname', $admin->admin_password);
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
