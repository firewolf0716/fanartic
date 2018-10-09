<?php

namespace App\Services;

use App\Models\CustomerScore;
use App\Models\CustomerScoresum;
use Illuminate\Support\Facades\Auth;

class ScoreService
{
    public static function getList($customer_id)
    {
        return CustomerScore::where(['customer_id' => $customer_id, 'score_status' => 1])->get();
    }

    /**
     * @param $score
     * @param $brand_id
     * @param $action
     * @param $type
     * @return bool
     */
    public static function addScore($score, $brand_id, $action, $type)
    {
        $data = [
            'customer_id' => Auth::id(),
            'brand_id' => $brand_id,
            'score_value' => $score,
            'score_action' => $action,
            'score_type' => $type,
        ];
        $score = CustomerScore::create($data);
        if (!empty($score->id)) {
            return $score->score_value;
        }
        return false;
    }

    /**
     * @param $customer_id
     * @param $brand_id
     * @return bool
     */
    public static function calcScore($customer_id, $brand_id)
    {
        $scores = CustomerScore::where([
            'customer_id' => $customer_id,
            'brand_id' => $brand_id,
            'score_status' => 1
        ])->get();

        $totalScore = 0;
        foreach ($scores as $score) {
            if ($score->score_type == 'plus') {
                $totalScore += $score->score_value;
            } else if ($score->score_type == 'minus') {
                $totalScore -= $score->score_value;
            }
        }
        return $totalScore;
    }
}