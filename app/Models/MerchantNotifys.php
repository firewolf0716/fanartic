<?php

namespace App\Models;

use DB;
use Illuminate\Database\Eloquent\Model;

class MerchantNotifys extends AppModel
{
    protected $table = 'master_notifymerchant';
    protected $primaryKey = 'notify_id';

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

    public static function remove($adminid, $id) {
        return DB::table('master_notifymerchant')
                ->where('admin_id', $adminid)
                ->where('notify_id', $id)
                ->delete();
    }
}
