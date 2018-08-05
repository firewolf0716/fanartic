<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\MerchantSaleManagement;

class MerchantSaleManagementController extends Controller
{
    public function __construct(){
        // parent::__construct();
    }
   
    public function merchant_sales_management(){
        $merchant_id = $this->get_merchant_session_id();
        if ($merchant_id == 0) {
            return Redirect::to('merchant/signin');
        }

        $salesInfos = MerchantSaleManagement::get_sale_info($merchant_id, '0', '');
        
        return view('merchant.sale_management.merchant_sale_management')->with('merchant_id', $merchant_id)
                                                            ->with('sale_infos', $salesInfos)
                                                            ->with('duration_setting', '0')
                                                            ->with('duration_range', '');
    }

    public function merchant_sales_management_search() {
        $merchant_id = $this->get_merchant_session_id();
        if ($merchant_id == 0) {
            return Redirect::to('merchant/signin');
        }

        $duration_setting = '0';
        $duration_range = '';

        if(Input::has('duration_setting')) {
            $duration_setting = Input::get('duration_setting');
        }
        if(Input::has('duration_range')) {
            $duration_range = Input::get('duration_range');
        }
        
        $salesInfos = MerchantSaleManagement::get_sale_info($merchant_id, $duration_setting, $duration_range);
        
        return view('merchant.sale_management.merchant_sale_management')->with('merchant_id', $merchant_id)
                                                                ->with('sale_infos', $salesInfos)
                                                                ->with('duration_setting', $duration_setting)
                                                                ->with('duration_range', $duration_range);
    }    
}
