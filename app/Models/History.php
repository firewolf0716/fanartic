<?php

namespace App\Models;

use DB;
use Illuminate\Database\Eloquent\Model;

class History extends Model
{
    protected $table = 'master_history';
    protected $primaryKey = 'bh_id';
}
