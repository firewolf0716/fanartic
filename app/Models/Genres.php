<?php

namespace App\Models;
use DB;
use Illuminate\Database\Eloquent\Model;

use App\Models\Malls;


/**
 * @property int genre_id
 * @property int mall_id
 * @property string genre_name
 * @property string genre_name_en
 * @property int genre_status
 * @property string created_at
 * @property string updated_at
 * @property string deleted_at
 */
class Genres extends AppModel
{
    protected $guarded = array('genre_id');
    protected $table = 'master_genre';
    protected $primaryKey = 'genre_id';

    public function mall()
    {
        return Malls::find($this->mall_id);
    }
}
