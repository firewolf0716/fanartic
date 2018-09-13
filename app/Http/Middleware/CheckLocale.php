<?php

namespace App\Http\Middleware;

use Closure;
use App\Models\User;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Session;

class CheckLocale
{
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
            if ($user->locale != null) {
                App::setLocale($user->locale);
            }
        } elseif (Session::has('applocale') && array_key_exists(Session::get('applocale'), Config::get('languages'))) {
            App::setLocale(Session::get('applocale'));
        } else {
            App::setLocale(Config::get('app.fallback_locale'));
        }
        return $next($request);
    }
}