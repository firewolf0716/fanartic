<?php

namespace App\Models;

use DB;
use File;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;

/**
 * @property int id
 * @property string name
 * @property int num
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
