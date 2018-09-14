<?php

namespace App\Http\Controllers;

use App\Models\Customers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

class ScoreController extends Controller
{
    public function score()
    {
        $totalscore = Customers::get_score(Auth::id());
        $scores = Customers::get_score_bybrand(Auth::id());
        return $this->layout_init(view('customer.user.score'), 1)
            ->with('totalscore', $totalscore)
            ->with('scores', $scores);
    }
}
