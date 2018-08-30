<?php

namespace App;

use DB;
use Illuminate\Database\Eloquent\Model;

class MerchantNotifys extends AppModel
{
    public static function insert($entry) {
        $check_insert = DB::table('master_notifymerchant')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function getNotifysByAdmin($adminid) {
        return DB::table('master_notifymerchant')->orderBy('updated_at', 'DESC')
                                            ->where('admin_id', $adminid)
                                            ->get();
    }

    public static function getNotifysByAdminAndID($adminid, $id) {
        return DB::table('master_notifymerchant')->where('admin_id', $adminid)
                                            ->where('notify_id', $id)
                                            ->get();
    }

    public static function getNotify($id) {
        return DB::table('master_notifymerchant')->where('notify_id', $id)->get();
    }

    public static function edit($id, $entry) {
        return DB::table('master_notifymerchant')->where('notify_id', $id)->update($entry);
    }

    public static function remove($adminid, $id) {
        return DB::table('master_notifymerchant')
                ->where('admin_id', $adminid)
                ->where('notify_id', $id)
                ->delete();
    }
}
