<?php

namespace App\Models;

use DB;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int notify_id
 * @property string notify_merchant
 * @property string notify_name
 * @property string notify_memo
 * @property string notify_status
 * @property int admin_id
 * @property string notify_name_en
 * @property string created_at
 * @property string updated_at
 * @property string deleted_at
 */
class MerchantNotifys extends AppModel
{
    protected $table = 'master_notifymerchant';
    protected $primaryKey = 'notify_id';

    const MERCHANT_SEPARATOR = '/**/';

    /**
     * check notify target merchant.
     *
     * @param int $merchantId
     * @return bool
     */
    public function hasMerchantId($merchantId)
    {
        $idList = explode(self::MERCHANT_SEPARATOR, $this->notify_merchant);

        return in_array($merchantId, $idList);
    }
}
