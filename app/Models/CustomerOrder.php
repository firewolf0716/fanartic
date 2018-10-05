<?php

namespace App\Models;

use DB;

use Illuminate\Database\Eloquent\Model;

class CustomerOrder extends AppModel
{
    protected $table = 'customer_order';
    protected $primaryKey = 'order_id';
}
