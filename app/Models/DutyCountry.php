<?php

namespace App\Models;

use DB;
use File;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;

/**
 * @property int id
 * @property int duty_id
 * @property string country
 * @property string country_code
 * @property int country_duty
 * @property string created_at
 * @property string updated_at
 * @property string deleted_at
 */
class DutyCountry extends AppModel
{
    protected $guarded = 'id';
    protected $table = 'country_duties';
    protected $primaryKey = 'id';

    public function duty()
    {
        return $this->belongsTo(Duty::class);
    }
}
