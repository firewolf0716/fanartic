<?php

namespace App\Http\Controllers\Admin;

use App\Services\NotifyService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;

use App\Models\MerchantNotifys;
use App\Models\Merchants;

use Session;

class MerchantNotifyController extends Controller
{
    public function add()
    {
        $merchants = Merchants::get();

        return view('admin.notifym.add')
            ->with('merchants', $merchants);
    }

    public function addpost()
    {
        $strNotifyMerchants = '';
        if (Input::has('notify_merchants')) {
            $notify_merchants = Input::get('notify_merchants');
            foreach ($notify_merchants as $notify_merchant) {
                if ($strNotifyMerchants != '') {
                    $strNotifyMerchants .= '/**/';
                }
                $strNotifyMerchants .= $notify_merchant;
            }
        }

        $notify = new MerchantNotifys();
        $notify->notify_merchant = implode(MerchantNotifys::MERCHANT_SEPARATOR, Input::get('notify_merchants'));
        $notify->notify_name = Input::get('notify_name');
        $notify->notify_name_en = Input::get('notify_name_en');
        $notify->notify_memo = Input::get('notify_memo');
        $notify->notify_status = Input::get('notify_status');
        $notify->admin_id = Auth::guard('admin')->id();
        $notify->save();

        return Redirect::to('admin/notifymerchant/list');
    }

    public function list()
    {
        $notifys = NotifyService::getNotifysByAdmin_Merchant(Auth::guard('admin')->id());
        return view('admin.notifym.list')->with('notifys', $notifys);
    }

    public function delete($id)
    {
        $notifys = NotifyService::remove_Merchant(Auth::guard('admin')->id(), $id);
        return Redirect::to('admin/notifymerchant/list');
    }

    public function edit($id)
    {
        $merchants = Merchants::get();
        $notify = MerchantNotifys::find($id);

        $linkedMerchants = explode(MerchantNotifys::MERCHANT_SEPARATOR, $notify->notify_merchant);
        return view('admin.notifym.edit')
            ->with('merchants', $merchants)
            ->with('notify', $notify)
            ->with('linkedMerchants', $linkedMerchants);
    }

    public function editpost()
    {
        $strNotifyMerchants = '';
        if (Input::has('notify_merchants')) {
            $notify_merchants = Input::get('notify_merchants');
            foreach ($notify_merchants as $notify_merchant) {
                if ($strNotifyMerchants != '') {
                    $strNotifyMerchants .= '/**/';
                }
                $strNotifyMerchants .= $notify_merchant;
            }
        }

        $notify = MerchantNotifys::find('notify_id');
        $notify->notify_merchant = $strNotifyMerchants;
        $notify->notify_name = Input::get('notify_name');
        $notify->notify_name_en = Input::get('notify_name_en');
        $notify->notify_memo = Input::get('notify_memo');
        $notify->notify_status = Input::get('notify_status');
        $notify->save();

        return Redirect::to('admin/notifymerchant/list');
    }
}
