<?php

namespace App;
use DB;
use Session;
use Illuminate\Database\Eloquent\Model;

class Admins extends Model
{
    public static function check_login($uname, $pwd) {
        $admins = DB::table('master_admin')->where('admin_name', '=', $uname)->get();
        $check_password = 0;
        if(count($admins) > 0) { 
            foreach($admins as $admin) {
                if($admin->admin_name == $uname) {
                    $check_password = DB::table('master_admin')->where('admin_name', '=', $uname)->where('admin_password', '=', $pwd)->get();
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

    public static function insert_admin($entry) {
        $check_insert = DB::table('master_admin')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function get_admin($id) {
        return DB::table('master_admin')->where('admin_id', $id)->get();
    }

    public static function get_admins() {
        return DB::table('master_admin')->where('admin_permission', '!=', 1)->orderBy('admin_id', 'ASC')->get();
    }

    public static function edit_admin($entry,$id) {
        return DB::table('master_admin')->where('admin_id', '=', $id)->update($entry);
    }
}
