<?php

namespace App\Models;

use DB;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

/**
 * @property int merchant_id
 * @property int merchant_type
 * @property int merchant_plan
 * @property string merchant_taxflag
 * @property string merchant_companyname
 * @property string name
 * @property string merchant_rep
 * @property string merchant_admin
 * @property string merchant_permit
 * @property string email
 * @property string password
 * @property string merchant_phone
 * @property string merchant_postalcode
 * @property string merchant_state
 * @property string merchant_city
 * @property string merchant_address_ex
 * @property string merchant_province
 * @property string merchant_county
 * @property string merchant_address_jp
 * @property double merchant_commission_jp
 * @property double merchant_commission_ex
 * @property string merchant_status
 * @property string merchant_open
 * @property double merchant_fixtax
 * @property double merchant_commission
 * @property string merchant_open_state
 * @property string merchant_fixcost
 * @property string merchant_opencost
 * @property string remember_token
 * @property string created_at
 * @property string updated_at
 * @property string deleted_at
 */
class Merchants extends Authenticatable
{
    use Notifiable;

    protected $table = 'fan_merchant';
    protected $primaryKey = 'merchant_id';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
    ];

    public static function get_name_by_id($merchant_id)
    {
        return DB::table('fan_merchant')->where('merchant_id', $merchant_id)
            ->get()->pluck('name')->first();
    }

}