<?php

namespace App\Services;

use Illuminate\Support\Facades\Mail;

class MailService
{
    /**
     * ----------------------------------
     * ----------------------------------
     * @return bool result even sendMail ...
     * ----------------------------------
     */

    public static $_subjects = [
        'ja' => [
            'customer' => [
                'auth' => [
                    'pre_register' => '新規仮登録完了',
                    'register' => '本登録完了',
                    'frozen' => 'アカウントが凍結しました',
                    'reset_password' => 'パスワードの再設定',
                ],
            ],
            'merchant' => [

            ]
        ],
        'en' => [
            'customer' => [
                'auth' => [
                    'pre_register' => 'New provisional registration',
                    'register' => 'Main registration',
                    'frozen' => 'Freezing Account',
                    'reset_password' => 'Password Reset',
                ],
            ],
            'merchant' => [

            ]
        ],
        'ko' => [
            'customer' => [
                'auth' => [
                    'pre_register' => '신규가등록',
                    'register' => '본등록',
                    'frozen' => '동결',
                    'reset_password' => '비밀번호 변경하기',
                ],
            ],
            'merchant' => [

            ]
        ],
        'cn' => [
            'customer' => [
                'auth' => [
                    'pre_register' => '新临时登记',
                    'register' => '登记',
                    'frozen' => '冻结',
                    'reset_password' => '重置密码',
                ],
            ],
            'merchant' => [

            ]
        ],
        'tw' => [
            'customer' => [
                'auth' => [
                    'pre_register' => '新臨時登記',
                    'register' => '登記',
                    'frozen' => '凍結',
                    'reset_password' => '重置密碼',
                ],
            ],
            'merchant' => [

            ]
        ],
    ];

    public static function getSubject($options, $lang)
    {
        return self::$_subjects[$lang][$options['type']][$options['category']][$options['name']];
    }

    public static function getTemplate($options, $lang)
    {
        return 'emails.' . $options['type'] . '.' . $lang . '.' . $options['category'] . '.' . $options['name'];
    }
}
