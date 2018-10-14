<?php

namespace App\Models;

use DB;
use DateTime;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class ReceiptAddress extends AppModel
{
    protected $table = 'receipt_address';
    protected $primaryKey = 'id';
}