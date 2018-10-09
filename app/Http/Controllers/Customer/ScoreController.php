<?php

namespace App\Http\Controllers\Customer;

use App\Models\Customers;
use App\Services\ScoreService;
use App\Services\ScoresumService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

class ScoreController extends Controller
{
    public function score()
    {
        $scores = ScoreService::getList(Auth::id());
        $totalScores = ScoresumService::getTotal(Auth::id());

        return view('customer.user.score')
            ->with(compact('totalScores', 'scores'));
    }
}
