@extends('layouts.customer_layout')
@section('content')
<ul class="c-breadcrumbs">
    <li><a href="/">HOME</a></li>
    <li>会員情報</li>
</ul>
<!--/.c-breadcrumbs-->
<h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--member"></i> {{ __('customer.会員情報') }}</h1>
<div class="members">
    <div class="members__column">
    <div class="members__column__content">
        <section class="c-box">
        <h3 class="c-box__hd">{{ __('customer.クレジットカード情報') }}</h3>
        <div class="c-box__content">
            @foreach($cards as $card)
            <div class="l-column l-column--list">
                <div class="l-column--list__name">{{$card->card_owner}}</div>
                <!--/.l-column--list__name-->
                <div class="l-column--list__data">{{ __('customer.カード番号') }}：{{str_repeat('*', 12).$card->card_no}}<br>{{ __('customer.有効期限') }}：{{$card->card_validdate}}</div>
                <!--/.l-column--list__data-->
                <div class="l-column--list__button">
                    <form action="{{url('user/edit_card_post')}}" method="POST">
                        <script
                            src="https://checkout.stripe.com/checkout.js" class="stripe-button"
                            data-key="pk_test_XXbN9QSy1TgyoQHe2i5l4JsK"
                            data-name="Fanartic"
                            data-panel-label="{{ __('customer.変更') }}"
                            data-label="{{ __('customer.変更') }}"
                            data-allow-remember-me=false
                            data-locale="auto"
                            data-email="{{$email}}">
                        </script>
                        @csrf
                        {{ Form::hidden('customer_token', $card->card_token)}}
                    </form>
                    <a href="{{url('user/delete_card?token='.$card->card_token)}}" class="c-button c-button--secondary">{{ __('customer.削除') }}</a>
                </div>
                <!--/.l-column--list__button-->
            </div>
            <!--/.l-column l-column--list-->
            <hr class="c-hr">
            @endforeach
            <div class="l-button">
            <form action="{{url('user/add_card_post')}}" method="POST">
                <script
                    src="https://checkout.stripe.com/checkout.js" class="stripe-button"
                    data-key="{{ env('STRIPE_PUB_KEY') }}"
                    data-name="Fanartic"
                    data-panel-label="{{ __('customer.追加') }}"
                    data-label="{{ __('customer.カード追加する') }}"
                    data-allow-remember-me=false
                    data-locale="auto"
                    data-email="{{$email}}">
                </script>
                @csrf
            </form>
            </div>
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
