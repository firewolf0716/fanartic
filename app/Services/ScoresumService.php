<?php

namespace App\Services;

use App\Models\CustomerScore;
use App\Models\CustomerScoresum;
use Illuminate\Support\Facades\Auth;

class ScoresumService
{
    /**
     * @param $customer_id
     * @return bool
     */
    public static function getTotal($customer_id)
    {
        $total = CustomerScoresum::where('customer_id', $customer_id)->orderBy('created_at', 'DESC')->first();

        if (!empty($total->id)) {
            return $total->scoresum_value;
        }
        return false;
    }
}