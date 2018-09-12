<?php

namespace App\Http\Controllers\Common;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;

class LanguageController extends Controller
{
    /**
     *  ����؂�ւ�����
     */
    public function switchLang($lang)
    {
        if (array_key_exists($lang, Config::get('languages'))) {
            Session::put('applocale', $lang);
            if (Auth::check()) {
                $user = Auth::user();
                if ($user->locale !== null && $user->locale != $lang) {
                    $user->locale = $lang;
                    $user->save();
                }
            }
        }
        return Redirect::back();
    }
}
