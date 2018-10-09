<?php

namespace App\Providers;

use App\Models\Cart;
use App\Models\Currency;
use App\Models\Customers;
use App\Models\Malls;
use App\Models\Merchants;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
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
                $authUser = Customers::find(Auth::guard('user')->id());

                // カート商品
                // $cartTotal = Cart::getSum(Auth::guard('user')->id())['count'];
                $cartTotal = count(session('cart'));

                // アクセス日時
                // event(new AccessDetection($authUser));

                // お知らせ
                // $notices = NoticeService::getLists(Auth::id());
                View::share(compact('authUser', 'cartTotal'));
            }

            if (Auth::guard('merchant')->check()) {
                $authMerchant = Merchants::find(Auth::guard('merchant')->id());
                View::share(compact('authMerchant'));
            }

            if (Auth::guard('merchant')->check()) {
                $authMerchant = Merchants::find(Auth::guard('merchant')->id());
                View::share(compact('authMerchant'));
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
