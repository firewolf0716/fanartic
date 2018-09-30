<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DB;

/**
 * @property int size_id
 * @property int size_category_id
 * @property string size_name
 * @property string size_name_en
 * @property string created_at
 * @property string updated_at
 * @property string deleted_at
 */
class Sizes extends AppModel
{
    protected $table = 'master_size';
    protected $primaryKey = 'size_id';

    public function sizecategory()
    {
        return $this->belongsTo(SizeCategory::class, "size_category_id");
    }
}
