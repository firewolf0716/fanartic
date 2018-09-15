<?php

namespace App\Components;

use App\Models\Currency;

/**
 * @property \Illuminate\Database\Eloquent\Collection|static[] currencies
 */
class CurrencyComponent
{
    protected static $app_id = '724de39c6a3248e7beb4fcae653b25de';

    public static function setRate()
    {
        $currencies = implode(",", Currency::getCurrencies());

        $app_id = self::$app_id;
        $file = "latest.json";
        header("Content-Type: application/json");
        $json = file_get_contents("http://openexchangerates.org/api/{$file}?app_id={$app_id}&base=JPY&symbols={$currencies}");
        $obj = json_decode($json);
        $rate_container = array();

        if (isset($obj->{"rates"})) {
            foreach ($obj->{"rates"} as $key => $rate) {
                $rate_container[$key] = $rate;
            }
        }

        foreach ($rate_container as $key => $rate) {
            $currency = Currency::where('code', $key)->first();
            $currency->rate = $rate;
            $currency->save();
        }
    }
}