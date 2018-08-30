<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class States extends AppModel
{
    //
    public static function get_states()
    {
        return DB::table('master_state')->orderBy('state_id', 'ASC')->get();
    }
}
