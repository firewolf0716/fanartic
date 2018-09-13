<?php

namespace App\Http\Controllers;

use App\Models\Customers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class ScoreController extends Controller
{
    public function score()
    {
        if (!Session::has('customerid')) {
            return Redirect::to('/');
        }
        $customerid = Session::get('customerid');
        $totalscore = Customers::get_score($customerid);
        $scores = Customers::get_score_bybrand($customerid);
        return $this->layout_init(view('customer.user.score'), 1)
            ->with('totalscore', $totalscore)
            ->with('scores', $scores);
    }
}
