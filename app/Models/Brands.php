<?php

namespace App\Models;

use DB;

use Illuminate\Database\Eloquent\Model;

class Brands extends AppModel
{
    protected $guarded = array('brand_id');
    protected $table = 'master_brand';
    protected $primaryKey = 'brand_id';
}
