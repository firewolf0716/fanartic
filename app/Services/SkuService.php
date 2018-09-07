<?php

namespace App\Services;

use Session;
use Hash;

use App\Models\Sizes;
use App\Models\Colors;

class SkuService
{
    public static function get_color_with_name($color_name) {
        return Colors::where('color_name', $color_name)->get()->first();
    }
}