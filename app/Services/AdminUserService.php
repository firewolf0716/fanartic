<?php

namespace App\Services;

use Session;
use Hash;

use App\Models\Admins;

class AdminUserService
{
    public static function check_login($uname, $pwd) {
        $admins = Admins::where('admin_name', '=', $uname)->get();
        $check_password = 0;
        if(count($admins) > 0) { 
            foreach($admins as $admin) {
                if($admin->admin_name == $uname) {
                    $check_password = Admins::where('admin_name', '=', $uname)->where('admin_password', '=', $pwd)->get();
                } else {
                    return -1;
                }
                if(count($check_password) < 1) {
                    return -2;
                }
                else if(count($check_password) > 0) {
                    Session::put('site','admin');
                    Session::put('adminid', $admin->admin_id);
                    Session::put('adminname', $admin->admin_name);
                    Session::put('adminper', $admin->admin_permission);
                    return 1;
                }
            }
        } else { 
            return 0;
        }
    }
}