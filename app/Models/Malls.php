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
    protected $primaryKey = 'mall_id';
}