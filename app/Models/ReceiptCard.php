<?php

namespace App\Models;

use DB;
use DateTime;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class ReceiptCard extends AppModel
{
    protected $table = 'receipt_card';
    protected $primaryKey = 'id';
}