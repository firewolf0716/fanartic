<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use DB;

class Plans extends AppModel
{
    protected $guarded = array('plan_id');
    protected $table = 'master_plan';

    public static function insert_plan($entry) {
        $check_insert = DB::table('master_plan')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function get_plans() {
        return DB::table('master_plan')->orderBy('plan_id', 'ASC')->get();
    }

    public static function get_plan($id) {
        return DB::table('master_plan')->where('plan_id', $id)->get();
    }

    public static function edit_plan($entry,$id) {
        return DB::table('master_plan')->where('plan_id', '=', $id)->update($entry);
    }
}
