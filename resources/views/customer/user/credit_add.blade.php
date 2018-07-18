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
            {!! Form::open(array('id' => 'form_credit','url'=>'customer/user/credit_add_post', 'accept-charset' => 'UTF-8', 'novalidate')) !!}

            <div class="c-form__row">
                <div class="c-form__row__label">カード番号<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input">
                    <div class="c-form__colum">
                        <div class="c-form__colum__col"><input type="text" class="c-form__input" name="no" value="" required></div>
                    </div>
                </div>
            </div>

            <div class="c-form__row">
                <div class="c-form__row__label">カード名義<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input">
                    <div class="c-form__colum">
                        <div class="c-form__colum__col"><input type="text" class="c-form__input" name="owner" value="" required></div>
                    </div>
                </div>
            </div>

            <div class="c-form__row">
                <div class="c-form__row__label">セキュリティ番号<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input">
                    <div class="c-form__colum">
                        <div class="c-form__colum__col"><input type="text" class="c-form__input c-form__input--tel" name="token" value="" maxlength="4" required></div>
                    </div>
                </div>
            </div>

            <div class="c-form__row">
                <div class="c-form__row__label">有効期限<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input">
                    <label class="c-form__select c-form__select--birthday--year">
                    <span class="c-form__select__box">
                        <select name="year" id="year" required>
                            @for($i = 2018; $i <= 2022; $i++)
                            <option value="{{$i}}">{{$i}}</option>
                            @endfor
                        </select>
                    </span>
                    <span class="u-pc">年</span></label> 
                    <label class="c-form__select c-form__select--birthday--month">
                    <span class="c-form__select__box">
                        <select name="month" id="month" required>
                            @for($i = 1; $i <= 12; $i++)
                            <option value="{{$i}}">{{$i}}</option>
                            @endfor
                        </select>
                    </span><span class="u-pc">月</span></label>
                </div>
            </div>
            
            <hr class="c-hr">
            <div class="l-button"><button type="button" class="c-button c-button--submit" onClick="onSubmit()">カード追加する</button></div>
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
        <li><a href="{{url('/customer/user/favourite')}}">お気に入りアイテム</a></li>
        <li><a href="{{url('/customer/user/wish')}}">探しているアイテム</a></li>
        <li><a href="{{url('/customer/user/history')}}">注文履歴</a></li>
        <li><a href="{{url('/customer/user/score')}}">ポイント</a></li>
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
