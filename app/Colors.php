<?php

namespace App;

use DB;

use Illuminate\Database\Eloquent\Model;

class Colors extends Model
{
    //
    protected $guarded = array('id');
    protected $table = 'master_color';

    public static function insert_color($entry){
        $check_insert = DB::table('master_color')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }
    public static function get_colors(){
        return DB::table('master_color')->orderBy('color_id', 'ASC')->get();
    }

    public static function get_color($id){
        return DB::table('master_color')->where('color_id', $id)->get();
    }

    public static function edit_color($entry,$id)
    {
        return DB::table('master_color')->where('color_id', '=', $id)->update($entry);
    }
}
