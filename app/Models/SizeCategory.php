<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DB;

use App\Models\Sizes;

class SizeCategory extends AppModel
{
    protected $table = 'master_sizecategory';
    protected $primaryKey = 'sizecategory_id';

    public function sizes(){
        return $this->hasMany(Sizes::class, "size_category_id");
    }
}
