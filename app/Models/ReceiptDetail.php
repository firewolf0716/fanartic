<?php

namespace App\Models;

use DB;
use DateTime;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class ReceiptDetail extends AppModel
{
    protected $table = 'receipt_detail';
    protected $primaryKey = 'id';

    public function product()
    {
    	return $this->hasOne(ReceiptProduct::class, 'id', 'product_data');
    }

    public function stock()
    {
    	return $this->hasOne(ReceiptStock::class, 'id', 'stock_data');
    }
}