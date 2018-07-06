<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;

use App\MerchantNotifys;
use App\Merchants;
use Session;

class MerchantNotifyController extends Controller
{
    public function add() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $merchants = Merchants::getMerchants();
        return view('admin.notifym.add')->with('merchants', $merchants);
    }

    public function addpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login?redirect=admin/notifymerchant/add');
        }

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
        
        $entry = array (
            'notify_merchant' => $strNotifyMerchants,
            'notify_name' => Input::get('notify_name'),
            'notify_name_en' => Input::get('notify_name_en'),
            'notify_memo' => Input::get('notify_memo'),
            'notify_status' => Input::get('optionValid'),
            'notify_create' => Input::get('create_date'),
            'notify_update' => Input::get('update_date'),
            'admin_id' => $adminid,
        );
 
        $id = MerchantNotifys::insert($entry);
        return Redirect::to('admin/notifymerchant/list');
    }

    public function list() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login?redirect=admin/notifymerchant/list');
        }

        $adminid = Session::get('adminid');
        $notifys = MerchantNotifys::getNotifysByAdmin($adminid);
        return view('admin.notifym.list')->with('notifys', $notifys);
    }

    public function delete($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login?redirect=admin/notifymerchant/list');
        }

        $adminid = Session::get('adminid');
        $notifys = MerchantNotifys::remove($adminid, $id);
        return Redirect::to('admin/notifymerchant/list');
    }

    public function edit($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login?redirect=admin/notifymerchant/list');
        }

        $adminid = Session::get('adminid');
        $merchants = Merchants::getMerchants();
        $notifys = MerchantNotifys::getNotifysByAdminAndID($adminid, $id);
        if (count($notifys) == 0) {
            return Redirect::to('admin/notifymerchant/list');
        }
        $linkedMerchants = explode("/**/", $notifys[0]->notify_merchant); 
        return view('admin.notifym.edit')->with('merchants', $merchants)
                                        ->with('notify', $notifys[0])
                                        ->with('linkedMerchants', $linkedMerchants);
    }
    public function editpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login?redirect=admin/notifymerchant/list');
        }
        
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
        
        $entry = array (
            'notify_merchant' => $strNotifyMerchants,
            'notify_name' => Input::get('notify_name'),
            'notify_name_en' => Input::get('notify_name_en'),
            'notify_memo' => Input::get('notify_memo'),
            'notify_status' => Input::get('optionValid'),
            'notify_create' => Input::get('create_date'),
            'notify_update' => Input::get('update_date'),
            'admin_id' => $adminid,
        );
 
        $id = MerchantNotifys::edit(Input::get('notify_id'), $entry);
        return Redirect::to('admin/notifymerchant/list');
    }
}
