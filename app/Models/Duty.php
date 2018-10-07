<?php

namespace App\Models;

use DB;
use File;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;

use App\Models\DutyCountry;

/**
 * @property int id
 * @property string name
 * @property int num
 * @property string created_at
 * @property string updated_at
 * @property string deleted_at
 */
class Duty extends AppModel
{
    protected $guarded = 'id';
    protected $table = 'duties';
    protected $primaryKey = 'id';

    public function duties() {
          return $this->hasMany(DutyCountry::class, 'duty_id');
    }

    public static function boot()
    {
        parent::boot();

        // Delete Relationship
        static::deleting(function($duty) {
            $duty->duties()->delete();
        });
    }
}
