<?php

namespace App\Models;

use DB;
use DateTime;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class ReceiptProduct extends AppModel
{
    protected $table = 'receipt_product';
    protected $primaryKey = 'id';
}