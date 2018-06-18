<?php

namespace App\Http\Controllers;

use Session;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Admins;

class AdminController extends Controller
{
    //
    public function dashboard(){
        return view('admin.dashboard');
    }

    public function login(){
        if (Session::has('adminid')) {
            return redirect::to('admin');
        } else {
            if(isset($_GET['redirect'])){
                return view('admin.login')->with('redirect', $_GET['redirect']);
            }
            return view('admin.login')->with('redirect', 'admin');
        }
    }

    public function signin(){
        $username = Input::get('username');
        $password = Input::get('password');
        $redirect = Input::get('redirect');

        $logincheck = Admins::check_login($username, $password);
        if($logincheck == 1){
            if(isset($redirect)){
                return Redirect::to($redirect);
            }
            return Redirect::to('admin');
        } else {
            return Redirect::to('admin/login');
        }
    }

    public function signout(){
        Session::forget('adminid');
        Session::forget('adminname');
        Session::flush();
        return Redirect::to('admin/login');
    }
}
