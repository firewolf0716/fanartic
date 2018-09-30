<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CustomerAddress extends AppModel
{
    protected $table = 'customer_address';
    protected $primaryKey = 'id';

    protected $_title = ['住所', 'Address'];

    protected $_forms = [
        'id' => [
            'label' => 'ID',
            'type'  => 'hide', // for form
        ],

    ];

    protected $_validates = [
        'customer_id'  => 'required',
        'name'  => 'required',
        'phone'  => 'required',
        'country'  => 'sometimes|required',
        'totalscore'  => 'sometimes|required',
    ];
}
