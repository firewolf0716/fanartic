<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DB;

class Sizes extends AppModel
{
    protected $table = 'master_size';
    protected $primaryKey = 'size_id';

    public function sizecategory(){
        return $this->belongsTo(SizeCategory::class, "size_category_id");
    }
}
