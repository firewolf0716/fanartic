<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Input;

use App\CustomerNotifys;
use App\Merchants;
use Session;

class CustomerNotifyController extends Controller
{
    public function add() {
        $customers = Merchants::getMerchants();
        return view('admin.notifyc.add')->with('customers', $customers);
    }

    public function addpost() {
        if (!Session::has('adminid')) {
            return Redirect::to('admin/login?redirect=admin/notifycustomer/add');
        }
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
        
        $entry = array (
            'notify_customer' => $strNotifyCustomers,
            'notify_name' => Input::get('notify_name'),
            'notify_name_en' => Input::get('notify_name_en'),
            'notify_memo' => Input::get('notify_memo'),
            'notify_status' => Input::get('optionValid'),
            'notify_create' => Input::get('create_date'),
            'notify_update' => Input::get('update_date'),
            'admin_id' => $adminid,
        );
 
        $id = CustomerNotifys::insert($entry);
        return Redirect::to('admin/notifycustomer/list');
    }

    public function list() {
        if (!Session::has('adminid')) {
            return Redirect::to('admin/login?redirect=admin/notifycustomer/list');
        }
        $adminid = Session::get('adminid');
        $notifys = CustomerNotifys::getNotifysByAdmin($adminid);
        return view('admin.notifyc.list')->with('notifys', $notifys);
    }

    public function delete($id) {
        if (!Session::has('adminid')) {
            return Redirect::to('admin/login?redirect=admin/notifycustomer/list');
        }
        $adminid = Session::get('adminid');
        $notifys = CustomerNotifys::remove($adminid, $id);
        return Redirect::to('admin/notifycustomer/list');
    }

    public function edit($id) {
        if (!Session::has('adminid')) {
            return Redirect::to('admin/login?redirect=admin/notifycustomer/list');
        }
        $adminid = Session::get('adminid');
        $customers = Merchants::getMerchants();
        $notifys = CustomerNotifys::getNotifysByAdminAndID($adminid, $id);
        if (count($notifys) == 0) {
            return Redirect::to('admin/notifycustomer/list');
        }
        $linkedCustomers = explode("/**/", $notifys[0]->notify_customer); 
        return view('admin.notifyc.edit')->with('customers', $customers)
                                        ->with('notify', $notifys[0])
                                        ->with('linkedCustomers', $linkedCustomers);
    }
    public function editpost() {
        if (!Session::has('adminid')) {
            return Redirect::to('admin/login?redirect=admin/notifycustomer/list');
        }
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
        
        $entry = array (
            'notify_customer' => $strNotifyCustomers,
            'notify_name' => Input::get('notify_name'),
            'notify_name_en' => Input::get('notify_name_en'),
            'notify_memo' => Input::get('notify_memo'),
            'notify_status' => Input::get('optionValid'),
            'notify_create' => Input::get('create_date'),
            'notify_update' => Input::get('update_date'),
            'admin_id' => $adminid,
        );
 
        $id = CustomerNotifys::edit(Input::get('notify_id'), $entry);
        return Redirect::to('admin/notifycustomer/list');
    }

}
