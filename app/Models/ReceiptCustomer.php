<?php

namespace App\Models;

use DB;
use DateTime;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class ReceiptCustomer extends AppModel
{
    protected $table = 'receipt_customer';
    protected $primaryKey = 'id';
}