<?php

namespace App\Models;

use DB;
use DateTime;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class Receipts extends AppModel
{
    protected $table = 'receipts';
    protected $primaryKey = 'id';

    public static function get_orders($where)
    {
    	$orders = Receipts::join('fan_merchant', 'receipts.merchant_id', '=', 'fan_merchant.merchant_id')
    				->join('customers', 'receipts.customer_id', '=', 'customers.customer_id')
    				->select('receipts.*', 'fan_merchant.*', 'customers.*' );

    	if ( isset($where['order']) ) {
    		$orders = $orders->orderBy( $where['order']['field'], $where['order']['dir']);
    	}
    	
    	$orders = $orders->get();
    	return $orders;
    }

    public static function get_where_orders($where)
    {
    	$orders = Receipts::join('fan_merchant', 'receipts.merchant_id', '=', 'fan_merchant.merchant_id')
    				->join('customers', 'receipts.customer_id', '=', 'customers.customer_id');

    	if ( isset($where['status']) ) 
    		$orders = $orders->where('receipts.status',  $where['status']);
    	if ( isset($where['merchant_name']) ) 
    		$orders = $orders->where('fan_merchant.merchant_companyname', 'like', '%'.$where['merchant_name'].'%');
    	if ( isset($where['customer_name']) ) 
    		$orders = $orders->where('customers.customer_name_second', 'like', '%'.$where['customer_name'].'%');
    	if ( isset($where['customer_info']) ) 
    		$orders = $orders->where('customers.customer_phone', 'like', '%'.$where['customer_info'].'%');
    	if ( isset($where['ship_info']) ) 
    		$orders = $orders->where('receipts.shipping_data', 'like', '%'.$where['ship_info'].'%');

    	if (!empty($where['order_time_from']) && !empty($where['order_time_to'])) {
    		$from = DateTime::createFromFormat('d/m/Y', $where['order_time_from'] ) ;
    		$to = DateTime::createFromFormat('d/m/Y', $where['order_time_to'] ) ;
    		$orders = $orders->whereBetween( 'receipts.date_juchu', [ 
    			$from->format('Y-m-d')." 00:00:00", 
    			$to->format('Y-m-d')." 23:59:59" 
    		]);
    	}
    	if (!empty($where['payment_time_from']) && !empty($where['payment_time_to'])) {
    		$from = DateTime::createFromFormat('d/m/Y', $where['payment_time_from'] ) ;
    		$to = DateTime::createFromFormat('d/m/Y', $where['payment_time_to'] ) ;
    		$orders = $orders->whereBetween( 'receipts.date_pay', [ 
    			$from->format('Y-m-d')." 00:00:00", 
    			$to->format('Y-m-d')." 23:59:59" 
    		]);
    	}
    	if (!empty($where['ship_time_from']) && !empty($where['ship_time_to'])) {
    		$from = DateTime::createFromFormat('d/m/Y', $where['ship_time_from'] ) ;
    		$to = DateTime::createFromFormat('d/m/Y', $where['ship_time_to'] ) ;
    		$orders = $orders->whereBetween( 'receipts.date_delivery', [ 
    			$from->format('Y-m-d')." 00:00:00", 
    			$to->format('Y-m-d')." 23:59:59" 
    		]);
    	}

    	if ( isset($where['order']) ) {
    		$orders = $orders->orderBy( $where['order']['field'], $where['order']['dir']);
    	}
    				
    	$orders = $orders->select('receipts.*', 'fan_merchant.*', 'customers.*')
    				->get();

    	return $orders;
    }


}
