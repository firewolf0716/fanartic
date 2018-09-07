<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CustomerScoreController extends Controller
{
    public function score(){
        if(!Session::has('customerid')){
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
