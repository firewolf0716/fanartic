<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Session;


class CheckCurrency
{
//    /** @var array Langueges this app deal with. */
    private $currencies = ['JPY', 'USD', 'RMB', 'KRW'];

    /**
     * Set locale from session or config.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (Auth::guard('web')->check()) {
            $user = Auth::guard('web');
            if ($user->currency != null) {
                session(['cur_currency' => $user->currency]);
            }
        } elseif (Session::has('cur_currency') && array_key_exists(Session::get('cur_currency'), Config::get('currency'))) {
            session(['cur_currency' => Session::get('cur_currency')]);
        } else {
            session(['cur_currency' => Config::get('app.currency')]);
        }
        return $next($request);
    }
}