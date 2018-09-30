<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;

use App\Models\MerchantNotifys;
use App\Models\Merchants;

use Session;

class MerchantNotifyController extends Controller
{
    const MERCHANT_SEPARATOR = '/**/';

    public function add() {
        $merchants = Merchants::get();

        return view('admin.notifym.add')
            ->with('merchants', $merchants);
    }

    public function addpost() {
        $notify = new MerchantNotifys();
        $notify->notify_merchant = implode(self::MERCHANT_SEPARATOR, Input::get('notify_merchants'));
        $notify->notify_name = Input::get('notify_name');
        $notify->notify_name_en = Input::get('notify_name_en');
        $notify->notify_memo = Input::get('notify_memo');
        $notify->notify_status = Input::get('notify_status');
        $notify->admin_id = Session::get('adminid');
        $notify->save();
        
        return Redirect::to('admin/notifymerchant/list');
    }

    public function list() {
        $notifys = MerchantNotifys::get();

        return view('admin.notifym.list')
            ->with('notifys', $notifys);
    }

    public function delete($id) {
        MerchantNotifys::find($id)->delete();

        return Redirect::to('admin/notifymerchant/list');
    }

    public function edit($id) {
        $merchants = Merchants::get();
        $notify = MerchantNotifys::find($id);

        $linkedMerchants = explode(self::MERCHANT_SEPARATOR, $notify->notify_merchant);
        return view('admin.notifym.edit')
            ->with('merchants', $merchants)
            ->with('notify', $notify)
            ->with('linkedMerchants', $linkedMerchants);
    }

    public function editpost() {
        /** @var MerchantNotifys $notify */
        $notify = MerchantNotifys::find(Input::get('notify_id'));
        $notify->notify_merchant = implode(self::MERCHANT_SEPARATOR, Input::get('notify_merchants'));
        $notify->notify_name = Input::get('notify_name');
        $notify->notify_name_en = Input::get('notify_name_en');
        $notify->notify_memo = Input::get('notify_memo');
        $notify->notify_status = Input::get('notify_status');
        $notify->save();
        
        return Redirect::to('admin/notifymerchant/list');
    }
}
