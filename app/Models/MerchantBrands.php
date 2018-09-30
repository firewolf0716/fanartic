<?php

namespace App\Models;

use DB;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int id
 * @property int merchant_id
 * @property int brand_id
 * @property string created_at
 * @property string updated_at
 * @property string deleted_at
 */
class MerchantBrands extends AppModel
{
    protected $table = 'merchant_brand_match';
    protected $primaryKey = 'id';
}
