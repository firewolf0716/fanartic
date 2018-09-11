<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CustomerUser extends AppModel
{
    protected $table = 'customers';
    protected $primaryKey = 'customer_id';

    public function address(){
        return $this->hasMany(CustomerAddress::class, 'customer_id');
    }
    public function card(){
        return $this->hasMany(CustomerCard::class, 'customer_id');
    }
    public function magazine(){
        return $this->hasOne(CustomerMagazine::class, 'customer_id');
    }
}
