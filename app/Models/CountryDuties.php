<?php

namespace App;

use App\Models\Duty;
use Illuminate\Database\Eloquent\Model;

class CountryDuty extends Model
{
    //
    public function duty()
    {
        return $this->belongsTo(Duty::class);
    }
}
