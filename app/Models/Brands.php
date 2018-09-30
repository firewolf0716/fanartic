<?php

namespace App\Models;

use DB;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int brand_id
 * @property string brand_name
 * @property string brand_name_en
 * @property string brand_design
 * @property string brand_status
 * @property string brand_image
 * @property string brand_description
 * @property string tempostar_brand_id
 * @property string tempostar_brand_parent_id
 * @property int is_men
 * @property int is_women
 * @property string tempostar_sort_by
 * @property string created_at
 * @property string updated_at
 * @property string deleted_at
 */
class Brands extends AppModel
{
    protected $guarded = array('brand_id');
    protected $table = 'master_brand';
    protected $primaryKey = 'brand_id';
}
