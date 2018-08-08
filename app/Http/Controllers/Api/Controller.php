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

    public function checkAuthentication (Request $request) {
        if (!$request->has('user_id')) {
            return response()->json("Bad Request", 400);
        }
         
        $authentication = $request->header('authentication');
        $user_id = $request->input('user_id');
        $count = Mobile_Users::get_authentication_user($user_id, $authentication);
        if ($count == 0) {
            return response()->json("Unauthorized", 401);
        } else {
            return NULL;
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