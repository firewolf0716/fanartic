<?php
namespace App;
use DB;
use File;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;

class Products extends Model{
    protected $guarded = array('id');
    protected $table = 'fan_product';

}