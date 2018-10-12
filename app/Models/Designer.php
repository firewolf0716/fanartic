<?php

namespace App\Models;

use DB;
use Illuminate\Database\Eloquent\Model;

class Designer extends Model
{
    protected $table = "master_designer";
    protected $primaryKey = 'designer_id';

    public function designers()
    {
        return $this->belongsToMany(Brands::class);
    }
}
