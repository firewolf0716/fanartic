<?php

namespace App\Http\Controllers\Common;

use App\Http\Controllers\Controller;

class PageController extends Controller
{
    // トップ
    public function index()
    {
        return view('page.index');
    }

    // 会社概要
    public function company()
    {
        return view('page.company');
    }

    // 利用規約
    public function termsCustomer()
    {
        return view('page.terms_customer');
    }

    public function termsCustomerCommunity()
    {
        return view('page.terms_customer_community');
    }

    public function termsMerchant()
    {
        return view('page.terms_merchant');
    }

    // 特商法
    public function tokusho()
    {
        return view('page.tokusho');
    }

    // プライバシーポリシー
    public function privacy()
    {
        return view('page.privacy');
    }

    // キャンセルポリシー
    public function cancel()
    {
        return view('page.cancel');
    }

    // 採用情報
    public function recruit()
    {
        return view('page.recruit');
    }

    // サイトマップ
    public function sitemap()
    {
        return view('page.sitemap');
    }

    // お問い合わせ
    public function contact()
    {
        return view('page.contact');
    }

    // お問い合わせ
    public function contactPost()
    {
        return view('page.contactPost');
    }

    // ヘルプ
    public function help()
    {
        return view('page.help');
    }

    // ヘルプ 商品について
    public function helpProduct()
    {
        return view('page.helpProduct');
    }

    // ヘルプ 支払いについて
    public function helpPayment()
    {
        return view('page.helpPayment');
    }

    // ヘルプ 注文について
    public function helpOrder()
    {
        return view('page.helpOrder');
    }

    // ヘルプ 配送について
    public function helpShipping()
    {
        return view('page.helpShipping');
    }

    // ヘルプ 返品について
    public function helpReturn()
    {
        return view('page.helpReturn');
    }

    // ヘルプ 価格保証について
    public function helpProtection()
    {
        return view('page.helpProtection');
    }
}
