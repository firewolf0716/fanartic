<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use DB;

class Plans extends Model
{
    //
    protected $guarded = array('plan_id');
    protected $table = 'master_plan';

    public static function insert_plan($entry){
        $check_insert = DB::table('master_plan')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function get_plans() {
        return DB::table('master_plan')->orderBy('plan_id', 'ASC')
                                    ->leftJoin('fee_type', 'fee_type.fee_type_id', '=', 'master_plan.fee_type_id')
                                    ->get();
    }

    public static function get_plan($id) {
        return DB::table('master_plan')->where('plan_id', $id)->get();
    }

    public static function edit_plan($entry,$id) {
        return DB::table('master_plan')->where('plan_id', '=', $id)->update($entry);
    }

    public static function get_plan_types() {
        return DB::table('fee_type')->orderBy('fee_type_id', 'ASC')->get();
    }
}
