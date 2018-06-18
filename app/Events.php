<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use DB;

class Events extends Model
{
    //
    protected $guarded = array('id');
    protected $table = 'master_event';

    public static function insert_event($entry){
        $check_insert = DB::table('master_event')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }
    public static function get_events(){
        return DB::table('master_event')->orderBy('event_id', 'ASC')->get();
    }

    public static function get_event($id){
        return DB::table('master_event')->where('event_id', $id)->get();
    }

    public static function edit_event($entry,$id)
    {
        return DB::table('master_event')->where('event_id', '=', $id)->update($entry);
    }
}
