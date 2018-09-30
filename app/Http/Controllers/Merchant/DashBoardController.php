<?php

namespace App\Http\Controllers\Merchant;

use App\Models\MerchantNotifys;

class DashBoardController extends Controller
{
    public function index()
    {
        $notifyList = MerchantNotifys::where('notify_status', 1)->get();

        return view('merchant.dashboard')
            ->with('notifyList', $notifyList);
    }
}