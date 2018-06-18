<?php

namespace App;
use DB;
use Illuminate\Database\Eloquent\Model;


class Genres extends Model
{
    protected $guarded = array('genre_id');
    protected $table = 'master_genre';

    public static function insert_genre($entry){
        $check_insert = DB::table('master_genre')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function get_genres(){
        return DB::table('master_genre')->orderBy('genre_id', 'ASC')->get();
    }

    public static function get_genre($id){
        return DB::table('master_genre')->where('genre_id', $id)->get();
    }

    public static function edit_genre($entry,$id)
    {
        return DB::table('master_genre')->where('genre_id', '=', $id)->update($entry);
    }
}
