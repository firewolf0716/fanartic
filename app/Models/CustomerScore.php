<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CustomerScore extends AppModel
{
    protected $table = 'customer_score';
    protected $primaryKey = 'id';

    public function brand()
    {
        return $this->belongsTo(Brands::class);
    }
}
