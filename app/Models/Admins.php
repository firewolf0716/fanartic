<?php

namespace App\Models;
use DB;
use Session;
use Illuminate\Database\Eloquent\Model;

class Admins extends Model
{
    protected $table = 'master_admin';
    protected $primaryKey = 'admin_id';
}
