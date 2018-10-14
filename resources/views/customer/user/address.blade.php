@extends('layouts.customer_layout')
@section('content')
<ul class="c-breadcrumbs">
    <li><a href="/">HOME</a></li>
    <li>{{ __('customer.会員情報') }}</li>
</ul>
<!--/.c-breadcrumbs-->
<h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--member"></i> {{ __('customer.会員情報') }}</h1>
<div class="members">
    <div class="members__column">
    <div class="members__column__content">
        <section class="c-box">
            <h3 class="c-box__hd">{{ __('customer.お届け先住所') }}</h3>
            <div class="c-box__content">
                @foreach($addresses as $address)
                <div class="l-column l-column--list">
                    <div class="l-column--list__name">
                        @if($address->address_default == 1)
                            {{ __('customer.既定のお届け先') }}
                        @else
                            {{ __('customer.追加のお届け先') }}
                        @endif
                    </div>
                    <!--/.l-column--list__name-->
                    <div class="l-column--list__data">{{$address->address_name}}
                        <br>〒{{$address->address_postalcode}}
                            @php
                                if($address->country == 'JP'){
                                    echo $address->zipcode."\n";
                                    echo $address->province_jp.$address->city_jp.$address->address_jp;
                                } else {
                                    echo $countries[$address->country].' '.$address->city.' '.$address->address_ex;
                                }
                            @endphp
                        <br>{{$address->phone}}</div>
                    <!--/.l-column--list__data-->
                    <div class="l-column--list__button">
                        <a href="{{url('user/address_edit/'.$address->id)}}" class="c-button c-button--secondary">{{ __('customer.変更') }}</a>
                        <a href="{{url('user/address_delete/'.$address->id)}}" class="c-button c-button--secondary">{{ __('customer.削除') }}</a>
                        <p class="c-text--edit">
                            @if($address->address_default != 1)
                                <a href="{{url('user/address_flag').'/'.$address->id}}">{{ __('customer.既定の住所に変更') }}</a>
                            @endif
                        </p>
                    </div>
                <!--/.l-column--list__button-->
                </div>
                <!--/.l-column l-column--list-->
                <hr class="c-hr">
                @endforeach
                <div class="l-button"><a href="{{url('user/addressadd')}}" class="c-button c-button--submit">{{ __('customer.お届け先を追加する') }}</a></div>
                <!--/.l-button-->
            </div>
        <!--/.c-box__content-->
        </section>
        <!--/.c-box-->
    </div>
    <!--/.members__column__content-->
        @include('customer.include.sidebar')
    </div>
    <!--/.members__column-->
</div>
<!--/.members-->
@endsection
