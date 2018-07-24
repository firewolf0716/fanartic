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
                @foreach($addresses as $address)
                <div class="l-column l-column--list">
                    <div class="l-column--list__name">
                        @if($address->address_default == 1)
                            既定のお届け先
                        @else
                            追加のお届け先
                        @endif
                    </div>
                    <!--/.l-column--list__name-->
                    <div class="l-column--list__data">{{$address->address_name}}
                        <br>〒{{$address->address_postalcode}} 
                            @php
                                if($address->address_state == 1){
                                    echo $address->address_province.$address->address_county.$address->address_address_jp;
                                } else {
                                    echo $address->state_name.' '.$address->address_city.' '.$address->address_address_ex;
                                }
                            @endphp
                        <br>{{$address->address_phone}}</div>
                    <!--/.l-column--list__data-->
                    <div class="l-column--list__button">
                        <a href="{{url('user/address_edit/'.$address->id)}}" class="c-button c-button--secondary">変更</a> 
                        <a href="{{url('user/address_delete/'.$address->id)}}" class="c-button c-button--secondary">削除</a>
                        <p class="c-text--edit">
                            @if($address->address_default != 1)
                                <a href="{{url('user/address_flag').'/'.$address->id}}">既定の住所に変更</a>
                            @endif
                        </p>
                    </div>
                <!--/.l-column--list__button-->
                </div>
                <!--/.l-column l-column--list-->
                <hr class="c-hr">
                @endforeach
                <div class="l-button"><a href="{{url('user/addressadd')}}" class="c-button c-button--submit">お届け先を追加する</a></div>
                <!--/.l-button-->
            </div>
        <!--/.c-box__content-->
        </section>
        <!--/.c-box-->
    </div>
    <!--/.members__column__content-->
    <div class="members__column__nav">
        <ul class="members__nav">
        <li><a href="{{url('user/favourite')}}">お気に入りアイテム</a></li>
        <li><a href="{{url('user/wish')}}">探しているアイテム</a></li>
        <li><a href="{{url('user/history')}}">注文履歴</a></li>
        <li><a href="{{url('user/score')}}">ポイント</a></li>
        <li><a href="#">会員情報</a>
            <ul class="members__nav__sub">
                <li><a href="{{url('user/profile')}}">会員情報変更</a></li>
                <li><a href="{{url('user/address')}}">お届け先の変更・追加</a></li>
                <li><a href="{{url('user/credit')}}">クレジットカード情報</a></li>
                <li><a href="{{url('user/magazine')}}">メールマガジン</a></li>
                <li><a href="{{url('user/signout')}}">退会手続き</a></li>
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
