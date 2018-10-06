<?php

namespace App\Http\Controllers\Admin;

use App\Services\NotifyService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;

use App\Models\CustomerNotifys;
use App\Models\CustomerUser;

use Session;

class CustomerNotifyController extends Controller
{
    const MERCHANT_SEPARATOR = '/**/';

    public function add() {
        $customers = CustomerUser::get();

        return view('admin.notifyc.add')
            ->with('customers', $customers);
    }

    public function addpost() {
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
        $notify->notify_customer = implode(self::MERCHANT_SEPARATOR, Input::get('notify_customers'));
        $notify->notify_name = Input::get('notify_name');
        $notify->notify_name_en = Input::get('notify_name_en');
        $notify->notify_memo = Input::get('notify_memo');
        $notify->notify_status = Input::get('notify_status');
        $notify->admin_id = Auth::guard('admin')->id();
        $notify->save();

        return Redirect::to('admin/notifycustomer/list');
    }

    public function list() {
        $notifys = NotifyService::getNotifysByAdmin_Customer(Auth::guard('admin')->id());
        return view('admin.notifyc.list')->with('notifys', $notifys);
    }

    public function delete($id) {
        $notifys = NotifyService::remove_Customer(Auth::guard('admin')->id(), $id);
        return Redirect::to('admin/notifycustomer/list');
    }

    public function edit($id) {
        $customers = CustomerUser::get();
        $notify = CustomerNotifys::find($id);

        $linkedCustomers = explode(self::MERCHANT_SEPARATOR, $notify->notify_customer);
        return view('admin.notifyc.edit')->with('customers', $customers)
                                        ->with('notify', $notify)
                                        ->with('linkedCustomers', $linkedCustomers);
    }

    public function editpost() {
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
        $notify->notify_status = Input::get('notify_status');
        $notify->save();

        return Redirect::to('admin/notifycustomer/list');
    }
}
