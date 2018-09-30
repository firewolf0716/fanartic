<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use DB;

/**
 * @property int category_id
 * @property int category_parent_id
 * @property int category_size_id
 * @property string category_name
 * @property string category_name_en
 * @property string created_at
 * @property string updated_at
 * @property string deleted_at
 */
class Categorys extends AppModel
{
    protected $guarded = array('category_id');
    protected $table = 'master_category';
    protected $primaryKey = 'category_id';
}
