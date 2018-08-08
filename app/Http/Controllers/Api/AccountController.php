<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\ResourceCollection;
use Illuminate\Pagination\LengthAwarePaginator;

use App\Http\Controllers\Api\Controller;

use App\Mobile_Users;

class AccountController extends Controller
{
    public function login(Request $request)
    {
        if (!$request->has('user_email') || !$request->has('user_password')) {
            return response()->json("Bad Request", 400);
        }

        $user_email = $request->input('user_email');
        $user_password = $request->input('user_password');
        $user = Mobile_Users::login($user_email, $user_password);
        // Session::put('site','customer');
        // Session::put('customerid', $customer->customer_id);
        // Session::put('customermail', $customer->customer_email);

        if ($user == -1 || $user == -2) {
            return response()->json(Array(
                "success"=>false,
                "message"=>"User email or password is wrong. Please recheck it."), 200); 
        } else {
            return response()->json(json_encode($user), 200); 
        }
    }

    public function register_profile(Request $request)
    {
        $response = $this->checkAuthentication($request);
        if ($response) {
            return $response;
        }
    }
}
