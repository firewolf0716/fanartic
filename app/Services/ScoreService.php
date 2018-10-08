<?php

namespace App\Services;

use App\Models\CustomerScore;
use App\Models\CustomerScoresum;
use Illuminate\Support\Facades\Auth;

class ScoreService
{
    public static function addScore($score, $brand_id)
    {
        $data = [
            'customer_id' => Auth::id(),
            'brand_id' => $brand_id,
            'score_value' => $score,
            'score_action' => $score,
            'score_status' => $score,
            'score_type' => $score,
        ];
        $score = CustomerScore::create($data);
    }
}