<?php

namespace App\Models;

use DB;
use File;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;

class Malls extends AppModel
{
    protected $guarded = array('mall_id');
    protected $table = 'master_mall';

    public static function insert_mall($entry)
    {
        $check_insert = DB::table('master_mall')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function get_malls()
    {
        return DB::table('master_mall')->orderBy('mall_id', 'ASC')->get();
    }

    public static function get_mall($id)
    {
        return DB::table('master_mall')->where('mall_id', $id)->get();
    }

    public static function edit_mall($entry, $id)
    {
        return DB::table('master_mall')->where('mall_id', $id)->update($entry);
    }

    public static function remove_mall($id)
    {
        return DB::table('master_mall')->where('mall_id', $id)->delete();
    }

    public static function get_mall_byname($name)
    {
        return DB::table('master_mall')->where('mall_name_en', $name)->get()->first();
    }
}