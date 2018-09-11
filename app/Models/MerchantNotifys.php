<?php

namespace App\Models;

use DB;
use Illuminate\Database\Eloquent\Model;

class MerchantNotifys extends AppModel
{
    protected $table = 'master_notifymerchant';
    protected $primaryKey = 'notify_id';
}
