<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Currency extends AppModel
{
    public static function getCurrencies()
    {
        return Currency::where('valid_flag', 1)->pluck('code', 'code')->all();
    }

    public static function getPrice($price)
    {
        $code = session('cur_currency');

        $currency = Currency::where('code', $code)->first();
        $ja_currency = Currency::where('code', 'JPY')->first();
        if ($currency) {
            return $currency->symbol . round($price * $currency->rate / $ja_currency->rate, 2);
        } else {
            return null;
        }
    }

    public static function getPurePrice($price)
    {
        $code = session('cur_currency');

        $currency = Currency::where('code', $code)->first();
        $ja_currency = Currency::where('code', 'JPY')->first();
        if ($currency) {
            return round($price * $currency->rate / $ja_currency->rate, 2);
        } else {
            return null;
        }
//        return $rate_container;
    }

    public static function getPriceObject($price)
    {
        $p = $price->price;
        $price->before_price = self::getPrice($price->before_price);
        $price->price = self::getPrice($price->price);
        $price->pure_price = self::getPurePrice($p);

        return $price;

    }

    public static function getPriceObjects($prices)
    {
        if (count($prices)) {
            foreach ($prices as $price) {
                $price = self::getPriceObject($price);
            }
        }
        return $prices;
    }
}
