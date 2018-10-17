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

    public function detail()
    {
    	return $this->hasOne(ReceiptDetail::class, 'receipt_id');
    }

    public function ship()
    {
    	return $this->hasOne(ReceiptShipping::class, 'id', 'shipping_data');
    }

    public function card()
    {
    	return $this->hasOne(ReceiptCard::class, 'id', 'credit_data');
    }

    public function address()
    {
    	return $this->hasOne(ReceiptAddress::class, 'id', 'address_data');
    }

    public function customer()
    {
    	return $this->hasOne(ReceiptCustomer::class, 'id', 'profile_data');
    }

    public static function get_receipt_from_merchant_status($merchant_id, $status)
    {
    	return Receipts::where([
    		['merchant_id', '=', $merchant_id],
    		['status', '=', $status]
    	])->get();
    }
}
