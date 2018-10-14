<?php

namespace App\Models;

use DB;
use DateTime;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class ReceiptShipping extends AppModel
{
    protected $table = 'receipt_shipping';
    protected $primaryKey = 'id';
}