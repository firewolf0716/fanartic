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

    public static function get_second_sub_category_ajax($id)
    {
        return DB::table('nm_secsubcategory')->where('ssb_sb_id', '=', $id)->where('ssb_status', '=', 1)->get();
    }

    public static function load_subcategory_ajax($id)
    {
        return DB::table('nm_subcategory')->where('sb_smc_id', '=', $id)->where('sb_status', '=', 1)->get();
    }

    public static function get_product_color()
    {
        return DB::table('nm_color')->get();
    }

    public static function get_product_size()
    {
        return DB::table('nm_size')->get();
    }

    public static function get_product_specification()
    {
        return DB::table('nm_specification')->get();
    }

    public static function get_colorname_ajax($colorid)
    {
        return DB::table('nm_color')->where('co_id', '=', $colorid)->get();
    }

    public static function get_product_details_formerchant($merid)
    {
        return DB::table('nm_store')->where('stor_merchant_id', '=', $merid)->where('stor_status', '=', 1)->get();
    }

    public static function insert_product($entry)
    {
        $check_insert = DB::table('nm_product')->insert($entry);
           
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function insert_product_color_details($entry)
    {
      return DB::table('nm_procolor')->insert($entry);
    }

    public static function insert_product_specification_details($entry)
    {
       return DB::table('nm_prospec')->insert($entry);
    }

    public static function insert_product_size_details($productsizeentry)
    {
      return DB::table('nm_prosize')->insert($productsizeentry);
    }

    public static function get_specification_group_product($main_cat,$sec_main_cat)
    {
        return DB::table('nm_spgroup')->where("sp_mc_id","=",$main_cat)->where("sp_smc_id","=",$sec_main_cat)->get();
    }
    public static function product_get_spec($spec_group_id){
        return DB::table('nm_specification')->where('sp_spg_id','=',$spec_group_id)->get();
    }
    public static function get_product($id)
    {
        return DB::table('nm_product')->where('pro_id', '=', $id)
                                      ->LeftJoin('nm_maincategory', 'nm_maincategory.mc_id', '=', 'nm_product.pro_mc_id')
                                      ->LeftJoin('nm_secmaincategory', 'nm_secmaincategory.smc_id', '=', 'nm_product.pro_smc_id')
                                      ->LeftJoin('nm_subcategory', 'nm_subcategory.sb_id', '=', 'nm_product.pro_sb_id')
                                      ->LeftJoin('nm_secsubcategory', 'nm_secsubcategory.ssb_id', '=', 'nm_product.pro_ssb_id')
                                      ->get();
    }
}