<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class AppModel extends Model
{
    use SoftDeletes;

    protected $dates = ['deleted_at'];

    public function getById($id)
    {
        return static::where($this->primaryKey, $id)->find(1);
    }
}
