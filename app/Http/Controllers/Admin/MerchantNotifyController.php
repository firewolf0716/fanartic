<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;

use App\Models\MerchantNotifys;
use App\Models\Merchants;
use Session;

use App\Services\NotifyService;

class MerchantNotifyController extends Controller
{
    public function add() {
        $merchants = Merchants::get();
        return view('admin.notifym.add')->with('merchants', $merchants);
    }

    public function addpost() {
        $adminid = Session::get('adminid');
        $strNotifyMerchants = '';
        if(Input::has('notify_merchants')) {
            $notify_merchants = Input::get('notify_merchants');
            foreach($notify_merchants as $notify_merchant) {
                if ($strNotifyMerchants != '') {
                    $strNotifyMerchants .= '/**/';
                }
                $strNotifyMerchants .= $notify_merchant;
            }
        }
        
        $notify = new MerchantNotifys();
        $notify->notify_merchant = $strNotifyMerchants;
        $notify->notify_name = Input::get('notify_name');
        $notify->notify_name_en = Input::get('notify_name_en');
        $notify->notify_memo = Input::get('notify_memo');
        $notify->optionValid = Input::get('optionValid');
        $notify->notify_merchant = $adminid;
        $notify->save();
        
        return Redirect::to('admin/notifymerchant/list');
    }

    public function list() {
        $adminid = Session::get('adminid');
        $notifys = NotifyService::getNotifysByAdmin_Merchant($adminid);
        return view('admin.notifym.list')->with('notifys', $notifys);
    }

    public function delete($id) {
        $adminid = Session::get('adminid');
        $notifys = NotifyService::remove_Merchant($adminid, $id);
        return Redirect::to('admin/notifymerchant/list');
    }

    public function edit($id) {
        $adminid = Session::get('adminid');
        $merchants = Merchants::get();
        $notifys = NotifyService::getNotifysByAdminAndID_Merchant($adminid, $id);
        if (count($notifys) == 0) {
            return Redirect::to('admin/notifymerchant/list');
        }
        $linkedMerchants = explode("/**/", $notifys[0]->notify_merchant); 
        return view('admin.notifym.edit')->with('merchants', $merchants)
                                        ->with('notify', $notifys[0])
                                        ->with('linkedMerchants', $linkedMerchants);
    }
    public function editpost() {
        $adminid = Session::get('adminid');
        $strNotifyMerchants = '';
        if(Input::has('notify_merchants')) {
            $notify_merchants = Input::get('notify_merchants');
            foreach($notify_merchants as $notify_merchant) {
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
        $notify->optionValid = Input::get('optionValid');
        $notify->notify_merchant = $adminid;
        $notify->save();
        
        return Redirect::to('admin/notifymerchant/list');
    }
}
