<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CustomerCart extends AppModel
{
    protected $table = 'customer_buy_history';
    protected $primaryKey = 'id';
}
