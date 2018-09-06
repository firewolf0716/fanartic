<?php

namespace App\Models;

use DB;
use Illuminate\Database\Eloquent\Model;

class CustomerNotifys extends AppModel
{
    protected $table = 'master_notifycustomer';
    protected $primaryKey = 'notify_id';

    public static function getNotifysByAdmin($adminid) {
        return DB::table('master_notifycustomer')->orderBy('updated_at', 'DESC')
                                            ->where('admin_id', $adminid)
                                            ->get();
    }

    public static function getNotifysByAdminAndID($adminid, $id) {
        return DB::table('master_notifycustomer')->where('admin_id', $adminid)
                                            ->where('notify_id', $id)
                                            ->get();
    }

    public static function remove($adminid, $id) {
        return DB::table('master_notifycustomer')
                ->where('admin_id', $adminid)
                ->where('notify_id', $id)
                ->delete();
    }
}
