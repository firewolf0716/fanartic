<?php

namespace App\Http\Controllers\Customer;

use App\Models\Colors;
use App\Models\Customers;
use App\Models\Products;
use App\Models\ProductSKU;
use App\Models\Sizes;
use App\Models\ProductImage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Session;

class HistoryController extends Controller
{
    public function history()
    {
        $groups = Customers::get_history_groups(Auth::id());
        $subitems = array();
        $total = array();
        $images = array();
        $colorname = array();
        $sizename = array();
        foreach ($groups as $group) {
            $items = Customers::get_items_bygroup($group->history_group);
            $subitems[$group->history_group] = $items;
            foreach ($items as $item) {
                $sku_color = ProductSku::find($item->product_sku_color_id);
                $colorname[$item->id] = Colors::find($sku_color->sku_type_id);

                $sku_size = ProductSku::find($item->product_sku_size_id);
                $sizename[$item->id] = Sizes::find($sku_size->sku_type_id);

                $image = ProductImage::get_cart_image($item->history_productid, $colorname[$item->id]->color_id)->image_name;
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

    public function historydetail($group)
    {
        $group = Customers::get_history_group(Auth::id(), $group);

        $images = array();
        $colorname = array();
        $sizename = array();
        $items = Customers::get_items_bygroup($group->history_group);
        foreach ($items as $item) {
            $sku_color = ProductSku::find($item->product_sku_color_id);
            $colorname[$item->id] = Colors::get_color($sku_color->sku_type_id);

            $sku_size = ProductSku::find($item->product_sku_size_id);
            $sizename[$item->id] = Sizes::get_size($sku_color->sku_type_id);

            $image = ProductImage::get_cart_image($item->history_productid, $colorname[$item->id]->color_id)->image_name;
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
