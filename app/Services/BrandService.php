<?php

namespace App\Services;

use Session;
use Hash;

use App\Models\Brands;

class BrandService
{
    public static function get_brand_id($brand_name) {
        return Brands::where('brand_name', $brand_name)->get()->first()->brand_id;
    }

    public static function get_brand_byname($brand_name){
        return Brands::where('brand_name_en', $brand_name)->get()->first();
    }
}