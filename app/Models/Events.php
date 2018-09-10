<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use DB;

class Events extends AppModel
{
    protected $guarded = array('id');
    protected $table = 'master_event';
    protected $primaryKey = 'event_id';
}
