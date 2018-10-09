<?php

namespace App\Services;

use Session;
use Hash;

use App\Models\Brands;

class BrandService
{
    public static function getByMall($mallname)
    {
        // return Brands::where('brand_name', $brand_name)->first()->brand_id;

        $mall = MallService::get_mall_byname($mallname);
        if (!empty($mall)) {
            return MatchService::get_brands($mall->mall_id, 'is_men');
        }
        return false;
    }

    public static function get_brand_id($brand_name)
    {
        return Brands::where('brand_name', $brand_name)->first()->brand_id;
    }

    public static function get_brand_byname($brand_name)
    {
        return Brands::where('brand_name_en', $brand_name)->first();
    }
}