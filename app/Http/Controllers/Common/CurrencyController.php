<?php

namespace App\Http\Controllers\Common;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;

class CurrencyController extends Controller
{
    public function switchCurrency($currency)
    {
        if (array_key_exists($currency, Config::get('currency'))) {
            Session::put('cur_currency', $currency);
            if (Auth::check()) {
                $user = Auth::user();
                if ($user->currency !== null && $user->currency != $currency) {
                    $user->currency = $currency;
                    $user->save();
                }
            }
        }
        return Redirect::back();
    }
}
