<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DB;

class States extends AppModel
{
    protected $table = 'master_state';
    protected $primaryKey = 'state_id';
}
