<?php

namespace App\Http\Controllers\Api;

use Session;

use Illuminate\Http\Request;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

use App\Mobile_Users;

/**
 * @resource General
 *
 * This Group contains all the routes for all account types (admin, presenter, subscriber)
 */
class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function get_user_id() {
        if (Session::has('user_id')) {
            return Session::get('user_id');
        } else {
            return 0;
        }
    }

    public function checkAuthentication ($user_id, Request $request) {         
        // $authentication = $request->header('authentication');
        $count = Mobile_Users::get_authentication_user($user_id, $authentication);
        if ($count == 0) {
            return response()->json("Unauthorized", 401);
        } else {
            return NULL;
        }
    }

    public function get_login_user_id() {
        if (Session::has('user_id')) {
            return Session::get('user_id');
        } else {
            return 0;
        }
    }
}

/*
        2xx Success
        200 OK
        201 Created
        202 Accepted
        203 Non-Authoritative Information
        204 No Content
        205 Reset Content
        206 Partial Content
        401 Unauthorized
        400 Bad Request
        500 Internal Server Error
        */