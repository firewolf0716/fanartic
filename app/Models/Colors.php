<?php

namespace App\Models;

use DB;

use Illuminate\Database\Eloquent\Model;

class Colors extends AppModel
{
    protected $guarded = array('color_id');
    protected $table = 'master_color';
    protected $primaryKey = 'color_id';
}
