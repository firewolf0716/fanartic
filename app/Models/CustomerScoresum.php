<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CustomerScoresum extends AppModel
{
    protected $table = 'customer_scoresum';
    protected $primaryKey = 'id';

    public function brand()
    {
        return $this->belongsTo(Brands::class);
    }
}
