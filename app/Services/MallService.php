<?php

namespace App\Services;

use Session;
use Hash;

use App\Models\Malls;

class MallService
{
    public static function getAll()
    {
        return Malls::pluck('mall_name_en')->all();
    }

    public static function get_mall_byname($name)
    {
        return Malls::where('mall_name_en', $name)->get()->first();
    }
}