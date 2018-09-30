<?php

namespace App\Models;

use App\CountryDuty;
use Illuminate\Database\Eloquent\Model;

class Duty extends AppModel
{
    protected $_title = ['関税', 'Duty'];

    protected $fillable = ['name', 'num', 'valid_flag'];

    protected $_forms = [
        'id' => [
            'label' => 'ID',
            'type'  => 'hide', // for form
        ],
        'name' => [
            'label' => '名前',
            'memo' => 'フロントには表示されません',
            'type' => 'text', // for form
        ],
        'num' => [
            'label' => '税率',
            'memo' => '整数で記入',
            'type' => 'text', // for form
        ],
        'valid_flag' => [
            'label' => 'ステータス',
            'type'  => 'select',
            'values' => ['1' => '有効', '0' => '無効'], 1
        ],
    ];

    protected $_validates = [
        'name' => 'required',
        'num' => 'required',
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
                'label' => 'Name',
                'value' => 'name',
                'class' => 'col-sm-2',
            ],
            'num' => [
                'label' => 'Rate',
                'value' => 'num',
                'class' => 'col-sm-3',
            ],
            'valid_flag' => [
                'label' => 'Status',
                'value' => 'valid_flag',
                'class' => 'col-sm-1',
            ],
        ],
        'actions' => ['content' => [
            0 => ['action' => 'show', 'label' => '詳細'],
            1 => ['action' => 'edit', 'label' => '編集'],
            2 => ['action' => 'destroy', 'label' => '削除'],
        ]]
    ];

    //
    public function places()
    {
        return $this->hasMany(CountryDuty::class);
    }
}
