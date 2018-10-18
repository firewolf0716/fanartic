<?php

namespace App\Http\Controllers\Merchant;

use App\Models\MerchantNotifys;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

use App\Services\ReceiptService;

use DateTime;
use DateInterval;
use DatePeriod;

class DashBoardController extends Controller
{
    public function index()
    {
        $notifyList = MerchantNotifys::where('notify_status', 1)->get();

        // ToDo: 販売中、購入済み、未出荷、販売済み、売上グラフ・・・
        $today_receipt_count = ReceiptService::get_count_today_receipt();
        $unshipping_count =  ReceiptService::get_count_unshipping_receipt();
        $unsupported_count = ReceiptService::get_count_unsupported_receipt();
        $lastyear_receipt_count = ReceiptService::get_count_receipt_lastyear();
        if(!$lastyear_receipt_count)
            $lastyear_receipt_count = 1;

        $today_price = ReceiptService::get_where_price('today');
        $this_month_price = ReceiptService::get_where_price('this_month');

        return view('merchant.dashboard')
            ->with('notifyList', $notifyList)
            ->with('today_receipt_count', $today_receipt_count)
            ->with('unshipping_count', $unshipping_count)
            ->with('unsupported_count', $unsupported_count)
            ->with('lastyear_receipt_count', $lastyear_receipt_count)
            ->with('today_price', $today_price)
            ->with('this_month_price', $this_month_price);
    }

    public function get_count_receipt_ajax(Request $request){
        $condition = Input::get('value');

        $begin = new DateTime($condition['startDate']);
        $end = new DateTime($condition['endDate']);

        $interval = DateInterval::createFromDateString('1 day');
        $period = new DatePeriod($begin, $interval, $end);

        $chart_data = array();

        if($begin == $end){
            $chart_data[0]['date'] = $condition['startDate'];
            $chart_data[0]['count'] = ReceiptService::get_count_receipt($condition['startDate']);
        } else
            foreach ($period as $key => $dt) {
                 //$chart_data[] = array($dt->gettimestamp(), ReceiptService::get_count_receipt($dt->format("Y-m-d")));
                 $chart_data[$key]['date'] = $dt->format("Y-m-d");
                 $chart_data[$key]['count'] = ReceiptService::get_count_receipt($dt->format("Y-m-d"));
            }
        echo json_encode($chart_data);
    }
}
