<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DB;

use App\Models\Sizes;

/**
 * @property int sizecategory_id
 * @property string sizecategory_name
 * @property string sizecategory_name_en
 * @property string created_at
 * @property string updated_at
 * @property string deleted_at
 */
class SizeCategory extends AppModel
{
    protected $table = 'master_sizecategory';
    protected $primaryKey = 'sizecategory_id';

    public function sizes()
    {
        return $this->hasMany(Sizes::class, "size_category_id");
    }
}
