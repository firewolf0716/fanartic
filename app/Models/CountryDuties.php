<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CountryDuty extends Model
{
    //
    public function listings()
    {
        return $this->belongsTo(Duty::class);
    }
}
