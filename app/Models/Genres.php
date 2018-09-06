<?php

namespace App\Models;
use DB;
use Illuminate\Database\Eloquent\Model;


class Genres extends AppModel
{
    protected $guarded = array('genre_id');
    protected $table = 'master_genre';
    protected $primaryKey = 'genre_id';
}
