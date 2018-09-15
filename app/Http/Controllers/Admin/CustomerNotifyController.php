<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;

use App\Models\CustomerNotifys;
use App\Models\CustomerUser;
use Session;

use App\Services\NotifyService;

class CustomerNotifyController extends Controller
{
    public function add() {
        $customers = CustomerUser::get();
        return view('admin.notifyc.add')->with('customers', $customers);
    }

    public function addpost() {
        $adminid = Session::get('adminid');
        $strNotifyCustomers = '';
        if(Input::has('notify_customers')) {
            $notify_customers = Input::get('notify_customers');
            foreach($notify_customers as $notify_customer) {
                if ($strNotifyCustomers != '') {
                    $strNotifyCustomers .= '/**/';
                }
                $strNotifyCustomers .= $notify_customer;
            }
        }
        
        $notify = new CustomerNotifys();
        $notify->notify_customer = $strNotifyCustomers;
        $notify->notify_name = Input::get('notify_name');
        $notify->notify_name_en = Input::get('notify_name_en');
        $notify->notify_memo = Input::get('notify_memo');
        $notify->notify_status = Input::get('optionValid');
        $notify->admin_id = $adminid;
        $notify->save();

        return Redirect::to('admin/notifycustomer/list');
    }

    public function list() {
        $adminid = Session::get('adminid');
        $notifys = NotifyService::getNotifysByAdmin_Customer($adminid);
        return view('admin.notifyc.list')->with('notifys', $notifys);
    }

    public function delete($id) {
        $adminid = Session::get('adminid');
        $notifys = NotifyService::remove_Customer($adminid, $id);
        return Redirect::to('admin/notifycustomer/list');
    }

    public function edit($id) {
        $adminid = Session::get('adminid');
        $customers = CustomerUser::get();
        $notifys = NotifyService::getNotifysByAdminAndID_Customer($adminid, $id);
        if (count($notifys) == 0) {
            return Redirect::to('admin/notifycustomer/list');
        }
        $linkedCustomers = explode("/**/", $notifys[0]->notify_customer); 
        return view('admin.notifyc.edit')->with('customers', $customers)
                                        ->with('notify', $notifys[0])
                                        ->with('linkedCustomers', $linkedCustomers);
    }
    public function editpost() {
        $adminid = Session::get('adminid');
        $strNotifyCustomers = '';
        if(Input::has('notify_customers')) {
            $notify_customers = Input::get('notify_customers');
            foreach($notify_customers as $notify_customer) {
                if ($strNotifyCustomers != '') {
                    $strNotifyCustomers .= '/**/';
                }
                $strNotifyCustomers .= $notify_customer;
            }
        }
        
        $id = Input::get('notify_id');
        $notify = CustomerNotifys::find($id);
        $notify->notify_customer = $strNotifyCustomers;
        $notify->notify_name = Input::get('notify_name');
        $notify->notify_name_en = Input::get('notify_name_en');
        $notify->notify_memo = Input::get('notify_memo');
        $notify->notify_status = Input::get('optionValid');
        $notify->admin_id = $adminid;
        $notify->save();
        return Redirect::to('admin/notifycustomer/list');
    }
}
