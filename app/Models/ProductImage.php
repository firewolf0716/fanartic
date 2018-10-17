<?php

namespace App\Models;

class ProductImage extends AppModel
{
    protected $table = 'fan_product_image';
    protected $primaryKey = 'image_id';

    public static function delete_product_image($product_id, $merchant_id, $color_id)
    {
        return ProductImage::where('product_id', $product_id)
            ->where('merchant_id', $merchant_id)
            ->where('color_id', $color_id)
            ->delete();
    }

    public static function get_image($product, $color_id)
    {
        return ProductImage::where('fan_product_image.product_id', $product)
            ->where('fan_product_image.color_id', $color_id)
            ->leftJoin('master_color', 'master_color.color_id', 'fan_product_image.color_id')
            ->orderBy('fan_product_image.image_id', 'ASC')
            ->first();
    }

    public static function get_images($product_id)
    {
        return ProductImage::where('product_id', $product_id)->get();
    }

    public static function set_image_path($product_image_id, $image_path)
    {
        return ProductImage::where('image_id', $product_image_id)
            ->update(['image_name' => $image_path]);
    }

    public static function get_cart_image($product_id, $color)
    {
        $img = ProductImage::where('product_id', $product_id)
            ->where('color_id', $color)
            ->first();
        return $img;
    }
}
