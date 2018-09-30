<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
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
        $notify = new CustomerNotifys();
        $notify->notify_customer = implode(self::MERCHANT_SEPARATOR, Input::get('notify_customers'));
        $notify->notify_name = Input::get('notify_name');
        $notify->notify_name_en = Input::get('notify_name_en');
        $notify->notify_memo = Input::get('notify_memo');
        $notify->notify_status = Input::get('notify_status');
        $notify->admin_id = Session::get('adminid');
        $notify->save();

        return Redirect::to('admin/notifycustomer/list');
    }

    public function list() {
        $notifys = CustomerNotifys::get();

        return view('admin.notifyc.list')
            ->with('notifys', $notifys);
    }

    public function delete($id) {
        CustomerNotifys::find($id)->delete();

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
        /** @var CustomerNotifys $notify */
        $notify = CustomerNotifys::find(Input::get('notify_id'));
        $notify->notify_customer = implode(self::MERCHANT_SEPARATOR, Input::get('notify_customers'));
        $notify->notify_name = Input::get('notify_name');
        $notify->notify_name_en = Input::get('notify_name_en');
        $notify->notify_memo = Input::get('notify_memo');
        $notify->notify_status = Input::get('notify_status');
        $notify->save();

        return Redirect::to('admin/notifycustomer/list');
    }
}
