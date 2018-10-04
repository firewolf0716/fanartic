@extends('layouts.customer_layout')
@section('content')
<h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--checkout"></i> {{ __('customer.注文完了の確認') }}</h1>
<div class="cart">
    <div class="cart__column">
        <div class="cart__column__content">
            <ol class="cart__checkout__flow">
            <li class="cart__checkout__flow__step--01"><i class="c-icon"></i>{{ __('customer.情報入力') }}</li>
            <li class="cart__checkout__flow__step--02"><i class="c-icon"></i>{{ __('customer.注文確認') }}</li>
            <li class="cart__checkout__flow__step--03 is-curent"><i class="c-icon"></i>{{ __('customer.注文完了') }}</li>
            </ol>
            <!--/.cart__checkout__flow-->
            <p>
            @if($payresult)
            {{ __('customer.注文が成功しました。') }}
            @else
            {{ __('customer.注文が失敗しました。') }}
            @endif
            </p>

        </div>
    </div>
</div>
<!--/.cart-->
@endsection
