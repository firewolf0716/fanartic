<?php

namespace App\Models;

use DB;
use Illuminate\Database\Eloquent\Model;

class BrandHistory extends Model
{
    protected $table = 'brand_history';
    protected $primaryKey = 'bh_id';
}
