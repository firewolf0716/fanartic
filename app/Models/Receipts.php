<?php

namespace App\Models;

use DB;
use DateTime;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class Receipts extends AppModel
{
    protected $table = 'receipts';
    protected $primaryKey = 'id';
}
