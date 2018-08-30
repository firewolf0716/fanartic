<?php

namespace App;

use DB;
use Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;
use Illuminate\Support\Facades\Log;

class MerchantSaleManagement extends AppModel
{
    public static function get_sale_info($merchant_id, $duration_setting, $duration_range)
    {
        $query = "SELECT * FROM merchant_sale_management WHERE merchant_id = '$merchant_id'";
        if ($duration_setting != "0") {
            $duration_range_array = explode(" - ", $duration_range);
            $query .= " AND sale_date >= '$duration_range_array[0]'";
            $query .= " AND sale_date <= '$duration_range_array[1]'";
        }

        return DB::select($query);
    }
}