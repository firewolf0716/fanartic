<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Citys extends Model
{
    //
    public static function getCitys($stateid){
        return DB::table('master_city')->where('city_state', $stateid)->get();
    }
}
