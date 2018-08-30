<?php

namespace App;

use DB;
use Illuminate\Database\Eloquent\Model;

class ProductStates extends AppModel
{
    //
    public static function get_productstate($id)
    {
        return DB::table('master_productstate')->where('productstate_id', $id)->get();
    }

    public static function get_productstates()
    {
        return DB::table('master_productstate')->orderBy('productstate_id', 'ASC')->get();
    }
}
