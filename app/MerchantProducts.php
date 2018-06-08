<?php
namespace App;
use DB;
use File;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;

class Merchantproducts extends Model
{
    protected $guarded = array('id');
    protected $table = 'nm_product';

    public static function products_saling($from_date, $to_date, $merchant_id)
    {
        if ($from_date != null && $to_date == null) {
            return DB::table('nm_product')->where('nm_product.pro_mr_id', '=', $merchant_id)
                                          ->where('nm_product.created_date', $from_date)
                                          ->where('nm_product.pro_status', '=', 1)
                                          ->orderBy('nm_product.pro_id', 'DESC')
                                          ->LeftJoin('nm_store', 'nm_store.stor_id', '=', 'nm_product.pro_sh_id')
                                          ->LeftJoin('nm_city', 'nm_city.ci_id', '=', 'nm_store.stor_city')
                                          ->get();
        }
        elseif ($from_date != null && $to_date != null) {
            return DB::table('nm_product')->where('nm_product.pro_mr_id', '=', $merchant_id)
                                          ->whereBetween('nm_product.created_date', array($from_date,$to_date))
                                          ->where('nm_product.pro_status', '=', 1)
                                          ->orderBy('nm_product.pro_id', 'DESC')
                                          ->LeftJoin('nm_store', 'nm_store.stor_id', '=', 'nm_product.pro_sh_id')
                                          ->LeftJoin('nm_city', 'nm_city.ci_id', '=', 'nm_store.stor_city')
                                          ->get();
        } else {
            return DB::table('nm_product')->where('nm_product.pro_mr_id', '=', $merchant_id)
                                          ->where('nm_product.pro_status', '=', 1)
                                          ->orderBy('nm_product.pro_id', 'DESC')
                                          ->LeftJoin('nm_store', 'nm_store.stor_id', '=', 'nm_product.pro_sh_id')
                                          ->LeftJoin('nm_city', 'nm_city.ci_id', '=', 'nm_store.stor_city')
                                          ->get();
        }
    }
    public static function products_deleted($from_date, $to_date, $merchant_id)
    {
        if ($from_date != null && $to_date == null) {
            return DB::table('nm_product')->where('nm_product.pro_mr_id', '=', $merchant_id)
                                          ->where('nm_product.created_date', $from_date)
                                          ->where('nm_product.pro_status', '=', 2)
                                          ->orderBy('nm_product.pro_id', 'DESC')
                                          ->LeftJoin('nm_store', 'nm_store.stor_id', '=', 'nm_product.pro_sh_id')
                                          ->LeftJoin('nm_city', 'nm_city.ci_id', '=', 'nm_store.stor_city')
                                          ->get();
        }
        elseif ($from_date != null && $to_date != null) {
            return DB::table('nm_product')->where('nm_product.pro_mr_id', '=', $merchant_id)
                                          ->whereBetween('nm_product.created_date', array($from_date,$to_date))
                                          ->where('nm_product.pro_status', '=', 2)
                                          ->orderBy('nm_product.pro_id', 'DESC')
                                          ->LeftJoin('nm_store', 'nm_store.stor_id', '=', 'nm_product.pro_sh_id')
                                          ->LeftJoin('nm_city', 'nm_city.ci_id', '=', 'nm_store.stor_city')
                                          ->get();
        } else {
            return DB::table('nm_product')->where('nm_product.pro_mr_id', '=', $merchant_id)
                                          ->where('nm_product.pro_status', '=', 2)
                                          ->orderBy('nm_product.pro_id', 'DESC')
                                          ->LeftJoin('nm_store', 'nm_store.stor_id', '=', 'nm_product.pro_sh_id')
                                          ->LeftJoin('nm_city', 'nm_city.ci_id', '=', 'nm_store.stor_city')
                                          ->get();
        }
    }
    public static function get_product_details($id){
        return DB::table('nm_product')->where('pro_status','!=',2)
                                      ->orderBy('nm_product.pro_id', 'DESC')
                                      ->where('pro_mr_id', '=', $id)
                                      ->LeftJoin('nm_store', 'nm_store.stor_id', '=', 'nm_product.pro_sh_id')
                                      ->LeftJoin('nm_city', 'nm_city.ci_id', '=', 'nm_store.stor_city')
                                      ->get();
    }
    public static function get_order_details()
	{
		return DB::table('nm_order')->where('order_type', '=', 1)->get();
    }
    public static function delete_product($id)
	{
	    return DB::table('nm_product')->where('pro_id', '=', $id)->update(array('pro_status'=>2));
	}
}