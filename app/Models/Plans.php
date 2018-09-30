<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use DB;

/**
 * @property int plan_id
 * @property string plan_name
 * @property double plan_opencost
 * @property double plan_fixcost
 * @property double plan_domestic_fee
 * @property double plan_international_fee
 * @property string created_at
 * @property string updated_at
 * @property string deleted_at
 */
class Plans extends AppModel
{
    protected $guarded = array('plan_id');
    protected $table = 'master_plan';
    protected $primaryKey = 'plan_id';
}
