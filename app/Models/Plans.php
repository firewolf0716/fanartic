<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use DB;

class Plans extends AppModel
{
    protected $guarded = array('plan_id');
    protected $table = 'master_plan';
    protected $primaryKey = 'plan_id';
}
