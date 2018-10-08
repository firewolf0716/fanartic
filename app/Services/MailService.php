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
        'customer' => [
            'ja' => [
                'auth' => [
                    'pre_register' => '仮登録完了のお知らせ',
                    'register' => '本登録完了のお知らせ',
                    'frozen' => 'アカウント凍結のお知らせ',
                    'quit' => '退会処理完了のお知らせ',
                    'reset_password' => 'パスワード再設定',
                ],
                'product' => [
                    'added_favorite_brand' => '[]の商品が追加されました',
                    'added_search' => '[]の検索条件の商品が追加されました',
                ],
                'order' => [
                    'contact_send' => 'お問い合わせ完了',
                    'contact_receive' => '(返信)お問い合わせ',
                    'reserve' => '商品予約購入完了のお知らせ',
                    'bank' => '商品購入手続きのお知らせ',
                    'bank2' => '(重要)商品購入手続きを完了させてください',
                    'payment' => '商品購入完了のお知らせ',
                    'bank_payment' => '入金完了のお知らせ',
                    'shipment' => '商品発送のお知らせ',
                    'cancel' => '商品購入キャンセルのお知らせ',
                    'error' => '購入が完了出来ませんでした',
                ],
            ],
            'en' => [],
            'ko' => [],
            'cn' => [],
            'tw' => [],
        ],
        'merchant' => [
            'ja' => [
                'auth' => [
                    'pre_register' => '出店者登録申請完了のお知らせ',
                    'register' => '本登録完了のお知らせ',
                    'frozen' => 'アカウント凍結のお知らせ',
                    'quit' => '退会処理完了のお知らせ',
                    'reset_password' => 'パスワード再設定',
                    'new_charger' => '担当者追加のお知らせ', // to charger
                    'add_charger' => '担当者追加のお知らせ', // to merchant master
                ],
                'setting' => [
                ],
                'product' => [
                    'decrease' => '在庫数低下のお知らせ'
                ],
                'stock' => [
                ],
                'order' => [
                    'contact_receive' => 'お問い合わせのお知らせ',
                    'reserve' => '商品予約購入完了のお知らせ',
                    'bank' => '商品購入手続きのお知らせ',
                    'bank2' => '(重要)商品購入手続きが完了していません',
                    'payment' => '商品購入完了のお知らせ',
                    'bank_payment' => '入金完了のお知らせ',
                    'shipment' => '商品発送のお知らせ',
                    'cancel' => '商品購入キャンセルのお知らせ',
                    'error' => '購入が完了出来ませんでした',
                ],
                'sales' => [
                    'monthly' => 'のご収入のお知らせ'
                ]
            ],
            'en' => [],
            'ko' => [],
            'cn' => [],
            'tw' => [],
        ],
        'admin' => [
            'ja' => [],
            'en' => [],
            'ko' => [],
            'cn' => [],
            'tw' => [],
        ]
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
