<?php
namespace App;
use DB;
use File;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;

class Products extends Model{
    protected $guarded = array('id');
    protected $table = 'nm_product';

    public static function get_product_category()
    {
        return DB::table('nm_maincategory')->where('mc_status', '=', 1)->get();
    }

    public static function load_maincategory_ajax($id)
    {
        return DB::table('nm_secmaincategory')->where('smc_mc_id', '=', $id)->where('smc_status', '=', 1)->get();
    }
}