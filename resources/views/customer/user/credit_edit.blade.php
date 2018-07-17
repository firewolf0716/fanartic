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
        <h3 class="c-box__hd">カード追加</h3>
        <div class="c-box__content">
            {!! Form::open(array('id' => 'form_credit','url'=>'customer/user/credit_edit_post', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
            {{ Form::hidden('card_id', $card->id)}}
            <div class="c-form__row">
                <div class="c-form__row__label">名前<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input">
                    <div class="c-form__colum">
                        <div class="c-form__colum__col"><input type="text" class="c-form__input" name="name" value="{{$card->card_name}}" required></div>
                    </div>
                </div>
            </div>
            
            <div class="c-form__row">
                <div class="c-form__row__label">トークン<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input">
                    <div class="c-form__colum">
                        <div class="c-form__colum__col"><input type="number" class="c-form__input" name="token" value="{{$card->card_token}}" pattern="\d*" maxlength="16" required></div>
                    </div>
                </div>
            </div>
            
            <hr class="c-hr">
            <div class="l-button"><button type="button" class="c-button c-button--submit" onClick="onSubmit()">カード編集する</button></div>
            <!--/.l-button-->
            {{ Form::close() }}
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
                <li><a href="{{url('/customer/user/profile')}}">会員情報変更</a></li>
                <li><a href="{{url('/customer/user/address')}}">お届け先の変更・追加</a></li>
                <li><a href="{{url('/customer/user/credit')}}">クレジットカード情報</a></li>
                <li><a href="{{url('/customer/user/magazine')}}">メールマガジン</a></li>
                <li><a href="{{url('/customer/user/signout')}}">退会手続き</a></li>
            </ul>
        </li>
        </ul>
    </div>
    <!--/.members__column__nav-->
    </div>
    <!--/.members__column-->
</div>
<!--/.members-->
<script>
    function onSubmit(){
        $('#form_address').parsley();
        $('#form_credit').submit();
    }
</script>
@endsection
