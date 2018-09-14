<?php

namespace App\Models;

use App\Notifications\ResetPassword;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class CustomerUser extends Authenticatable
{
    use Notifiable;

    protected $table = 'customers';
    protected $primaryKey = 'customer_id';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'verified', 'token',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function address()
    {
        return $this->hasMany(CustomerAddress::class, 'customer_id');
    }

    public function card()
    {
        return $this->hasMany(CustomerCard::class, 'customer_id');
    }

    public function magazine()
    {
        return $this->hasOne(CustomerMagazine::class, 'customer_id');
    }
}
