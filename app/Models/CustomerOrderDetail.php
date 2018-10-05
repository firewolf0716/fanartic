<?php

namespace App\Models;

use DB;

use Illuminate\Database\Eloquent\Model;

class CustomerOrderDetail extends AppModel
{
    protected $table = 'customer_order_detail';
    protected $primaryKey = 'detail_id';
}
