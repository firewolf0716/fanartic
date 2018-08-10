<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\ResourceCollection;
use Illuminate\Pagination\LengthAwarePaginator;

use App\Http\Controllers\Api\Controller;
use Session;

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

        if ($user == NULL) {
            return response()->json(Array(
                "success"=>false,
                "message"=>"User email or password is wrong. Please recheck it."), 202); 
        } else {
            $user_id = $user->customer_id;
            $authentication = $this->getRandomAuthentication();

            Mobile_Users::updateAuthentication($user_id, $authentication);

            Session::put('user_id', $user_id);
            Session::put('user_authentication', $authentication);
            
            return response()->json(Array(
                "user_id" => $user_id,
                "user_email" => $user->customer_email,
                "nick_name" => $user->nick_name,
                "photo_path" => $user->photo_path,
                "authentication" => $authentication), 200); 
        }
    }

    public function update_profile(Request $request)
    {
        $user_id = $this->get_user_id();
        $user_id = '66';
        if ($user_id == 0) {
            return response()->json("Bad Request", 400);
        }

        $response = $this->checkAuthentication($user_id, $request);
        if ($response) {
            return $response;
        }

        $nick_name = $request->input('nick_name');
        if ($request->has('nick_name') == false) {
            return response()->json("Bad Request", 400);
        }
        $user_photo = $request->file('user_photo');


        $filename_new = $user_id . ".jpg";
        $newdestinationPath = './csv/';
        $uploadSuccess_new = $user_photo->move($newdestinationPath, $filename_new);

        return response()->json(Array(
            "uploadSuccess_new" => $uploadSuccess_new), 200); 
    }


    private function getRandomAuthentication($length = 40)
    {
        $pool = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ~!@#$%^&*()_+<>?:{}[]';
        return substr(str_shuffle(str_repeat($pool, $length)), 0, $length);
    }
}
