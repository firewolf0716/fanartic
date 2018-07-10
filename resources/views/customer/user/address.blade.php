@extends('layouts.customer_layout')
@section('content')
<ul class="c-breadcrumbs">
    <li><a href="/">HOME</a></li>
    <li>会員情報</li>
</ul>
<!--/.c-breadcrumbs-->
<h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--member"></i> 会員情報</h1>
<div class="members">
    <div class="members__column">
    <div class="members__column__content">
        <section class="c-box">
        <h3 class="c-box__hd">お届け先住所</h3>
        <div class="c-box__content">
            <div class="l-column l-column--list">
            <div class="l-column--list__name">既定のお届け先</div>
            <!--/.l-column--list__name-->
            <div class="l-column--list__data">山田 太郎<br>〒1001000 東京都渋谷区円山町1-1-1<br>080-0000-0000</div>
            <!--/.l-column--list__data-->
            <div class="l-column--list__button"><a href="#" class="c-button c-button--secondary">変更</a> <a href="#" class="c-button c-button--secondary">削除</a></div>
            <!--/.l-column--list__button-->
            </div>
            <!--/.l-column l-column--list-->
            <hr class="c-hr">
            <div class="l-column l-column--list">
            <div class="l-column--list__name">追加のお届け先</div>
            <!--/.l-column--list__name-->
            <div class="l-column--list__data">山田 太郎<br>〒1001000 東京都渋谷区円山町1-1-1<br>080-0000-0000</div>
            <!--/.l-column--list__data-->
            <div class="l-column--list__button"><a href="#" class="c-button c-button--secondary">変更</a> <a href="#" class="c-button c-button--secondary">削除</a>
                <p class="c-text--edit"><a href="#">既定の住所に変更</a></p>
            </div>
            <!--/.l-column--list__button-->
            </div>
            <!--/.l-column l-column--list-->
            <hr class="c-hr">
            <div class="l-column l-column--list">
            <div class="l-column--list__name">追加のお届け先</div>
            <!--/.l-column--list__name-->
            <div class="l-column--list__data">山田 太郎<br>〒1001000 東京都渋谷区円山町1-1-1<br>080-0000-0000</div>
            <!--/.l-column--list__data-->
            <div class="l-column--list__button"><a href="#" class="c-button c-button--secondary">変更</a> <a href="#" class="c-button c-button--secondary">削除</a>
                <p class="c-text--edit"><a href="#">既定の住所に変更</a></p>
            </div>
            <!--/.l-column--list__button-->
            </div>
            <!--/.l-column l-column--list-->
            <hr class="c-hr">
            <div class="l-button"><a href="#" class="c-button c-button--submit">お届け先を追加する</a></div>
            <!--/.l-button-->
        </div>
        <!--/.c-box__content-->
        </section>
        <!--/.c-box-->
    </div>
    <!--/.members__column__content-->
    <div class="members__column__nav">
        <ul class="members__nav">
        <li><a href="#">お気に入りアイテム</a></li>
        <li><a href="#">探しているアイテム</a></li>
        <li><a href="#">注文履歴</a></li>
        <li><a href="#">ポイント</a></li>
        <li><a href="#">会員情報</a>
            <ul class="members__nav__sub">
            <li><a href="#">会員情報変更</a></li>
            <li><a href="#">お届け先の変更・追加</a></li>
            <li><a href="#">クレジットカード情報</a></li>
            <li><a href="#">メールマガジン</a></li>
            <li><a href="#">退会手続き</a></li>
            </ul>
        </li>
        </ul>
    </div>
    <!--/.members__column__nav-->
    </div>
    <!--/.members__column-->
</div>
<!--/.members-->
@endsection
