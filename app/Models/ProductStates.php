<?php

namespace App\Models;

use DB;
use Illuminate\Database\Eloquent\Model;

class ProductStates extends AppModel
{
    protected $table = 'master_productstate';
    protected $primaryKey = 'productstate_id';
}
