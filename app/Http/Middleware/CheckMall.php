<?php

namespace App\Http\Middleware;

use App\Models\Currency;
use App\Models\Malls;
use App\Services\MallService;
use Closure;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Session;

class CheckMall
{
//    /** @var array Langueges this app deal with. */
    /**
     * Set locale from session or config.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $mall = explode("/", $request->path())[0];
        $malls = MallService::getAll();
        $default_mall = Malls::where('is_default', 1)->first()->mall_name_en;
        if (Auth::guard('web')->check()) {
            $user = Auth::guard('web');
            if (in_array($mall, $malls)) {
                session(['cur_mall' => $user->mall]);
                if ($user->mall !== null && $user->mall != $mall) {
                    $user->mall = $mall;
                    $user->save();
                }
            }
        } elseif (in_array($mall, $malls)) {
            session(['cur_mall' => $mall]);
        } elseif (Session::has('cur_mall') && in_array(Session::get('cur_mall'), $malls)) {
            session(['cur_mall' => Session::get('cur_mall')]);
        } else {
            session(['cur_mall' => $default_mall]);
        }
        return $next($request);
    }
}