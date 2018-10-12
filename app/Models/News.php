<?php

namespace App\Models;

use DB;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    protected $table = 'master_news';
    protected $primaryKey = 'bn_id';
}
