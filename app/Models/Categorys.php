<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use DB;


class Categorys extends AppModel
{
    protected $guarded = array('category_id');
    protected $table = 'master_category';
    protected $primaryKey = 'category_id';
}
