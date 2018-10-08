<?php

namespace App\Models;

use DB;

use Illuminate\Database\Eloquent\Model;

class CustomerOrder extends AppModel
{
    protected $table = 'customer_order';
    protected $primaryKey = 'order_id';

    public function merchant()
    {
    	return $this->belongsTo(Merchants::class, 'merchant_id', 'merchant_id');
    }

    public static function get_orders()
    {
        return DB::table('customer_order')
            ->orderBy('order_time', 'ASC')
            ->get();
    }
}
