<?php

namespace App\Models;

use DB;
use File;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;

/**
 * @property int c_id
  * @property int duty_id
 * @property string country
  * @property string country_code
 * @property int country_tariff
 * @property string created_at
 * @property string updated_at
 * @property string deleted_at
 */
class DutyCountry extends AppModel
{
    protected $guarded = 'c_id';
    protected $table = 'country_duties';
    protected $primaryKey = 'c_id';

    public static function update_countryduty($entry, $id)
    {
        return DB::table('country_duties')->where('c_id', '=', $id)->update($entry);
    }
}
