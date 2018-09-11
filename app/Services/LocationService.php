<?php

namespace App\Services;

use Session;
use Hash;

use App\Models\States;
use App\Models\Citys;

class LocationService
{
    public static function getCitys($stateid){
        return Citys::where('city_state', $stateid)->get();
    }
}