<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

use Session;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function check_admin_session() {
        if (Session::has('adminid')) {
            return true;
        } else {
            return false;
        }
    }
    public function get_merchant_session_id() {
        if (Session::has('merchantid')) {
            return Session::get('merchantid');
        } else {
            return 0;
        }
    }
}
