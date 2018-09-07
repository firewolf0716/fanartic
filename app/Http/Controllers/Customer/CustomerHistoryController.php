<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CustomerHistoryController extends Controller
{
    public function history(){
        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');

        $groups = Customers::get_history_groups($customerid);
        $subitems = array(); $total = array();
        $images = array(); $colorname = array(); $sizename = array();
        foreach($groups as $group){
            $items = Customers::get_items_bygroup($group->history_group);
            // dd($items);
            $subitems[$group->history_group] = $items;
            foreach($items as $item){
                $sku_color = ProductSku::get_sku($item->product_sku_color_id)->first();
                $colorname[$item->id] = Colors::find($sku_color->sku_type_id);
    
                $sku_size = ProductSku::get_sku($item->product_sku_size_id)->first();
                $sizename[$item->id] = Sizes::get_size($sku_color->sku_type_id);
    
                $image = Products::get_cart_image($item->history_productid, $colorname[$item->id]->color_id)->image_name;
                $images[$item->id] = $image;
            }
            $total[$group->history_group] = Customers::get_sum_bygroup($group->history_group);
        }

        return $this->layout_init(view('customer.user.history_list'), 1)
                ->with('groups', $groups)
                ->with('subitems', $subitems)
                ->with('total', $total)
                ->with('images', $images)
                ->with('colorname', $colorname)
                ->with('sizename', $sizename);
    }

    public function historydetail($group){
        if(!Session::has('customerid')){
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');
        $group = Customers::get_history_group($customerid, $group);
        // dd($group);

        $images = array(); $colorname = array(); $sizename = array();
        $items = Customers::get_items_bygroup($group->history_group);
        foreach($items as $item){
            $sku_color = ProductSku::get_sku($item->product_sku_color_id)->first();
            $colorname[$item->id] = Colors::get_color($sku_color->sku_type_id);

            $sku_size = ProductSku::get_sku($item->product_sku_size_id)->first();
            $sizename[$item->id] = Sizes::get_size($sku_color->sku_type_id);

            $image = Products::get_cart_image($item->history_productid, $colorname[$item->id]->color_id)->image_name;
            $images[$item->id] = $image;
        }
        $total['sum'] = Customers::get_sum_bygroup($group->history_group);

        return $this->layout_init(view('customer.user.history_detail'), 1)
            ->with('group', $group)
            ->with('items', $items)
            ->with('total', $total)
            ->with('colorname', $colorname)
            ->with('sizename', $sizename)
            ->with('images', $images);
    }
}
