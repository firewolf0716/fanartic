<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Support\Str;

use Session;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    
    public function get_merchant_session_id() {
        if (Session::has('merchantid')) {
            return Session::get('merchantid');
        } else {
            return 0;
        }
    }
    public function get_special_number($level) {
        if ($level >= 10) {
            return "⓪①②③④⑤⑥⑦⑧⑨";
        }
        $numbers = "⓿➊➋➌➍➎➏➐➑➒";
        return Str::substr($numbers, $level, 1);
    }
    public function get_level_split_string($level) {
        return "🅛🅔🅥🅔🅛➊". $this->get_special_number($level);
    }
}
