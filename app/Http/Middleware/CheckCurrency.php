<?php

namespace App\Http\Middleware;

use Closure;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

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
        if (isset($_GET['currency']) && in_array($_GET['currency'], $this->currencies)) {
            // Get currency from GET parameter.
            $currency = $_GET['currency'];
        } elseif (Auth::user()) {
            $user = Auth::user();
            if ($user->currency != null) {
                $currency = $user->currency;
            }
        } else {
            // Get currency from session.
            $currency = session('cur_currency');
        }
        if (!$currency) {
            $currency = config('app.currency');
        }

        if (Auth::user()) {
            $user = Auth::user();
            if ($user->currency !== null && $user->currency != $currency) {
                $user->currency = $currency;
                $user->save();
            }
        }

        // Save locale to session.
//        var_dump($currency); exit;
        session(['cur_currency' => $currency]);

        if (Auth::user()) {
            $user = Auth::user();
            if ($user->currency !== null && $user->currency != $currency) {
                $user->currency = $currency;
                $user->save();
            }

        }

        return $next($request);
    }
}