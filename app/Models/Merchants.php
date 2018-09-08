<?php

namespace App\Models;

use DB;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;
use Illuminate\Support\Facades\Log;

class Merchants extends AppModel
{
    protected $table = 'fan_merchant';
    protected $primaryKey = 'merchant_id';
}