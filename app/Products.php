<?php
namespace App;
use DB;
use File;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;

use App\Categorys;

class Products extends Model{
    protected $guarded = array('id');
    protected $table = 'fan_product';

    public static function insert_product($entry){
        $check_insert = DB::table('fan_product')->insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function get_products_by_category($category){
        // $category_obj = Categorys::get_category($category)->first();
        // $category_branch = $category_obj->category_branch;
        // if($category_branch != null){
        //     $category_parents = explode(',', $category_branch);
            
        // }
        return DB::table('fan_product')->where('product_category', $category)->get();
    }

    public static function get_product($id){
        return DB::table('fan_product')->where('product_id', $id)->get();
    }

    public static function edit_product($entry, $id){
        return DB::table('fan_product')->where('product_id', '=', $id)->update($entry);
    }

    public static function get_products_manage(){
        return DB::table('fan_product')->orderby('product_id', 'ASC')->get();
    }

    public static function delete_product($id){
        return DB::table('fan_product')->where('product_id', $id)->delete();
    }
}