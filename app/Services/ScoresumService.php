<?php

namespace App\Services;

use App\Models\CustomerScore;
use App\Models\CustomerScoresum;
use Illuminate\Support\Facades\Auth;

class ScoresumService
{
    /**
     * @param $customer_id
     * @param $brand_id
     * @return bool
     */
    public static function getTotal($customer_id)
    {
        $totalScores = CustomerScoresum::where('customer_id', $customer_id)
            ->orderBy('scoresum_value', 'DESC')
            ->get();

        if (!empty($totalScores->toArray())) {
            return $totalScores;
        }
        return false;
    }

    /**
     * @param $score
     * @param $brand_id
     * @param $customer_id
     * @return bool
     */
    public static function addScore($score, $brand_id, $customer_id)
    {
        $data = [
            'customer_id' => $customer_id,
            'brand_id' => $brand_id,
            'scoresum_value' => $score,
        ];
        $score = CustomerScoresum::create($data);
        if (!empty($score->id)) {
            return $score->scoresum_value;
        }
        return false;
    }
}