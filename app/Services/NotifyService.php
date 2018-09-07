<?php

namespace App\Services;

use Session;
use Hash;

use App\Models\MerchantNotifys;
use App\Models\CustomerNotifys;

class NotifyService
{
    public static function getNotifysByAdmin_Merchant($adminid) {
        return MerchantNotifys::orderBy('updated_at', 'DESC')->where('admin_id', $adminid)->get();
    }

    public static function getNotifysByAdminAndID_Merchant($adminid, $id) {
        return MerchantNotifys::where('admin_id', $adminid)->where('notify_id', $id)->get();
    }

    public static function remove_Merchant($adminid, $id) {
        return MerchantNotifys::where('admin_id', $adminid)->where('notify_id', $id)->delete();
    }

    public static function getNotifysByAdmin_Customer($adminid) {
        return CustomerNotifys::orderBy('updated_at', 'DESC')->where('admin_id', $adminid)->get();
    }

    public static function getNotifysByAdminAndID_Customer($adminid, $id) {
        return CustomerNotifys::where('admin_id', $adminid)->where('notify_id', $id)->get();
    }

    public static function remove_Customer($adminid, $id) {
        return CustomerNotifys::where('admin_id', $adminid)->where('notify_id', $id)->delete();
    }
}