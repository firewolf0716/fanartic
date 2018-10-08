<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tempostar extends AppModel
{
    protected $_title = ['店舗スター', 'Tempostar'];

    protected $fillable = ['merchant_id', 'compid', 'chargeid', 'password', 'ftp_host', 'ftp_user', 'ftp_password', 'ftp_port'];

    protected $_forms = [
        'id' => [
            'label' => 'ID',
            'type'  => 'hide',
        ],
        'merchant_id' => [
            'label' => '店舗名',
            'type' => 'text',
        ],
        'compid' => [
            'label' => '企業ID',
            'type' => 'text',
        ],
        'chargeid' => [
            'label' => '担当ID',
            'type' => 'text',
        ],
        'password' => [
            'label' => 'パスワード',
            'type' => 'text',
        ],
        'ftp_host' => [
            'label' => 'FTP ホスト',
            'type' => 'text',
        ],
        'ftp_user' => [
            'label' => 'FTP ユーザー',
            'type' => 'text',
        ],
        'ftp_password' => [
            'label' => 'FTP パスワード',
            'type' => 'text',
        ],
        'ftp_port' => [
            'label' => 'FTP ポート番号',
            'type' => 'text',
        ],
        'valid_flag' => [
            'label' => 'ステータス',
            'type'  => 'select',
            'values' => ['1' => '有効', '0' => '無効'], 1
        ],
    ];

    protected $_validates = [
        'ftp_host' => 'required',
        'ftp_user' => 'required',
        'ftp_password' => 'required',
        'ftp_port' => 'required'
    ];

    protected $_searchforms = [
        'valid_flag' => [
            'label' => 'ステータス',
            'type' => 'select',
            'required' => true,
            'values' => ['1' => '有効', '0' => '無効'], 1
        ],
    ];

    protected $_tables = [
        'fields' => [
            'id' => [
                'label' => 'ID',
                'value' => 'id',
                'class' => 'col-sm-1',
            ],
            'name' => [
                'label' => 'Merchant',
                'value' => 'merchant->name',
                'class' => 'col-sm-4',
            ],
            'valid_flag' => [
                'label' => 'Status',
                'value' => 'valid_flag',
                'class' => 'col-sm-1',
            ],
        ],
        'actions' => ['content' => [
            0 => ['action' => 'show', 'label' => '詳細'],
        ]]
    ];

    //
    public function merchant()
    {
        return $this->belongsTo(Merchants::class, 'merchant_id', 'merchant_id');
    }
}
