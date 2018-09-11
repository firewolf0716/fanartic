<?php

namespace App\Models;

use DB;
use Illuminate\Database\Eloquent\Model;

class CustomerNotifys extends AppModel
{
    protected $table = 'master_notifycustomer';
    protected $primaryKey = 'notify_id';
}
