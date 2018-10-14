<?php

namespace App\Models;

use DB;
use DateTime;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class ReceiptDetail extends AppModel
{
    protected $table = 'receipt_detail';
    protected $primaryKey = 'id';
}