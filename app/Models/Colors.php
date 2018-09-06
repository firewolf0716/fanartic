<?php

namespace App\Models;

use DB;

use Illuminate\Database\Eloquent\Model;

class Colors extends AppModel
{
    protected $guarded = array('id');
    protected $table = 'master_color';
    protected $primaryKey = 'color_id';

    public static function get_color_with_name($color_name) {
        return DB::table('master_color')->where('color_name', $color_name)->get()->first();
    }
}
