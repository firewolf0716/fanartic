<?php

namespace App\Providers;

use App\Models\Currency;
use App\Models\Malls;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer('*', function ($view) {
            if (Auth::guard('user')->check()) {
                // ログイン中ユーザー
                // $authUser = UserService::getDetail(User::find(Auth::guard('user')->id()));

                // アクセス日時
                // event(new AccessDetection($authUser));

                // お知らせ
                // $notices = NoticeService::getLists(Auth::id());
                // View::share(compact('authUser', 'notices'));

                $mallname = Malls::where('is_default', 1)->first()->mall_name_en;
                View::share(compact('mallname'));
            }
        });

        $currencies = Currency::getCurrencies();
        View::share(compact('currencies'));
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
