<?php

namespace App\Http\Controllers\Admin;

use Session;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Admins;

use App\Services\AdminUserService;

class AdminController extends Controller
{
    public function dashboard() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        return view('admin.dashboard');
    }

    public function login() {
        if ($this->check_admin_session() == true) {
            return redirect::to('admin/dashboard');
        } else {
            if(isset($_GET['redirect'])){
                return view('admin.login')->with('redirect', $_GET['redirect']);
            }
            return view('admin.login')->with('redirect', 'admin');
        }
    }

    public function signin() {
        $username = Input::get('username');
        $password = Input::get('password');
        $redirect = Input::get('redirect');

        $logincheck = AdminUserService::check_login($username, $password);
        if($logincheck == 1){
            if(isset($redirect)){
                return Redirect::to($redirect);
            }
            return Redirect::to('admin');
        } else {
            return Redirect::to('admin/login');
        }
    }

    public function signout() {
        Session::forget('adminid');
        Session::forget('adminname');
        Session::flush();
        return Redirect::to('admin/login');
    }

    public function addadmin() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        return view('admin.admin.add');
    }

    public function addadminpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $admin = new Admins();
        $admin->admin_name = Input::get('admin_name');
        $admin->admin_email = Input::get('admin_email');
        $admin->admin_password = Input::get('admin_password');
        $admin->admin_permission = 2;
        $admin->save();

        return Redirect::to('admin/admins/list');
    }

    public function editadmin($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $admin = Admins::find($id);
        return view('admin.admin.edit')->with('admin', $admin);
    }

    public function listadmin() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $admins = Admins::where('admin_permission', '!=', 1)->orderBy('admin_id', 'ASC')->get();
        return view('admin.admin.list')->with('admins', $admins);
    }

    public function editadminpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $admin = Admins::find(Input::get('admin_id'));
        $admin->admin_name = Input::get('admin_name');
        $admin->admin_email = Input::get('admin_email');
        $admin->admin_password = Input::get('admin_password');
        $admin->save();

        return Redirect::to('admin/admins/list');
    }
}
