<?php

namespace App\Services;

use App\Models\Colors;
use App\Models\Sizes;
use App\Models\Products;
use App\Models\ProductSKU;
use App\Models\Brands;
use App\Services\StockService;
use DB;

class RecentItemService
{
    public static function addRecentItem($order)
    {
        $recent_items = session('RECENTITEM');
        if($recent_items == null || $recent_items == ''){
            $recent_items = array();
        }
        foreach($recent_items as $key => $item){
            if($item['recent_product_id'] == $order['recent_product_id']){
                unset($recent_items[$key]);
            }
        }
        array_push($recent_items, $order);
        session(['RECENTITEM' => $recent_items]);
        return "Success";
    }

    public static function getRecentItems($customerid)
    {
        $result = array();
        $recent_items = session('RECENTITEM');
        if(!empty($recent_items))
            for($cnt= sizeof($recent_items) -1; $cnt >=0; $cnt--):
                if($customerid == $recent_items[$cnt]['customer_id']){
                    $result[$cnt] = DB::table('fan_product')
                        ->where('fan_product.product_id', $recent_items[$cnt]['recent_product_id'])
                        ->leftJoin('master_brand', 'fan_product.product_brand_id', 'master_brand.brand_id')
                        ->first();
                }
            endfor;
        return $result;
    }

}
