<?php

namespace App\Http\Controllers\Merchant;

use App\Models\MerchantNotifys;

class DashBoardController extends Controller
{
    public function index()
    {
        $notifyList = MerchantNotifys::where('notify_status', 1)->get();

        // ToDo: 販売中、購入済み、未出荷、販売済み、売上グラフ・・・

        return view('merchant.dashboard')
            ->with('notifyList', $notifyList);
    }
}