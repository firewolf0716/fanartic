<?php

namespace App\Models;

class ProductMasterImage extends AppModel
{
    protected $table = 'fan_product_master_image';
    protected $primaryKey = 'master_image_id';

    public static function insert_master_image($entry)
    {
        $check_insert = ProductMasterImage::insert($entry);
        if ($check_insert) {
            return DB::getPdo()->lastInsertId();
        } else {
            return 0;
        }
    }

    public static function get_master_images($product_id)
    {
        return ProductMasterImage::where('product_id', $product_id)
            ->orderBy('master_image_id', 'ASC')
            ->get();
    }
    
}
