<?php

namespace App\Services;

use Session;
use Hash;

use App\Models\Sizes;

class SizeService
{
    public static function get_size_id($size_name)
    {
        return Sizes::where('size_name', $size_name)->first()->size_id;
    }
}