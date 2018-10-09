@extends('layouts.customer_layout')

@section('title') @endsection

@section('content')
    <ul class="c-breadcrumbs">
        <li><a href="/">HOME</a></li>
        <li>{{ __('customer.スコア') }}</li>
    </ul>
    <!--/.c-breadcrumbs-->
    <h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--point"></i> {{ __('customer.スコア') }}
    </h1>
    <div class="members">
        <div class="members__column">
            <div class="members__column__content">
                <section class="c-box">
                    <h3 class="c-box__hd">or Not__&emsp;{{ __('customer.スコア') }}</h3>
                    <div class="c-box__content">
{{--                        <div class="l-column l-column--row">
                            <div class="l-column--row__label">{{ __('customer.所持スコア') }}</div>
                            <div class="l-column--row__content">
                                <span class="c-text--point">
                                    <strong class="c-text--point__num">{{number_format($totalScore)}}</strong>
                                    {{ __('customer.スコア') }}
                                </span>
                            </div>
                        </div>--}}
                        <!--/.l-column l-column--row-->
                        <hr class="c-hr">
                        <div class="l-column l-column--row l-column--row--top l-column--sp-single c-text--small">
                            <div class="l-column--row__label">{{ __('customer.内訳') }}</div>
                            <div class="l-column--row__content">
                                @foreach($totalScores as $score)
                                    <div class="l-column l-column--row">
                                        <div class="l-column--row__label">{{$score->brand_id}}</div>
                                        <div class="l-column--row__content">
                                            <span class="c-text--point"><strong class="c-text--point__num">
                                                    {{number_format($score->scoresum_value)}}</strong>
                                                {{ __('customer.スコア') }}
                                            </span>
                                        </div>
                                    </div>
                                    <!--/.l-column l-column--row-->
                                @endforeach
                            </div>
                        </div>
                        <!--/.l-column l-column--row-->
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
