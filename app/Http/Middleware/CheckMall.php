<?php

namespace App\Http\Middleware;

use App\Models\Currency;
use App\Models\Malls;
use App\Services\BrandService;
use App\Services\CategoryService;
use App\Services\MallService;
use Closure;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\View;
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
        if (Auth::guard('user')->check()) {
            $user = Auth::guard('user')->user();
            if (in_array($mall, $malls)) {
                session(['cur_mall' => $user->mall]);
                if ($user->mall !== null && $user->mall != $mall) {
                    $user->mall = $mall;
                    $user->save();
                }
            }
        } elseif (in_array($mall, $malls)) {
            Session(['cur_mall' => $mall]);
        } elseif (Session::has('cur_mall') && in_array(Session::get('cur_mall'), $malls)) {
            Session(['cur_mall' => Session::get('cur_mall')]);
        } else {
            Session(['cur_mall' => $default_mall]);
        }

        $mallname = Session::get('cur_mall');
        $brands = BrandService::getByMall($mallname);

        // 1 => men, 2 => women

        $men_categories = CategoryService::getMainCategorys(1);
        $women_categories = CategoryService::getMainCategorys(2);

        View::share(compact('mallname', 'brands', 'men_categories', 'women_categories'));

        return $next($request);
    }
}