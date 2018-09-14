@extends('layouts.customer_layout')

@section('content')

    <h1 class="c-pagetitle">{{ __('Reset Password') }}</h1>
    <div class="login">
        <div class="login__column">
            <div class="login__column__content">
                <section class="c-box">
                    <h3 class="c-box__hd">{{ __('Reset Password') }}</h3>
                    <div class="c-box__content">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif

                        <form method="POST" action="{{ route('password.email') }}" aria-label="{{ __('Reset Password') }}">
                            @csrf
                            <div class="c-form__row c-form__row--min">
                                <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">メールアドレス</div>
                                        <div class="c-form__row{{ $errors->has('email') ? ' has-error' : '' }}">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum">
                                                    <input type="email" class="c-form__input" name="email" value="{{ old
                                            ('email') }}">
                                                </div>
                                                @if ($errors->has('email'))
                                                    <span class="help-block">{{ $errors->first('email')}}</span>
                                                @endif
                                            </div>
                                        </div>
                                        <!--/.c-form__row-->
                                    </div>
                                    <!--/.l-column--half__col-->
                                </div>
                                <!--/.l-column-->
                            </div>
                            <!--/.c-form__row-->

                            <div class="l-button">
                                <button class="c-button c-button--submit">{{ __('Send Link') }}</button>
                            </div>
                            <p>
                                <a class="btn btn-link" href="{{ route('login') }}">
                                    {{ __('Login') }}
                                </a>
                            </p>
                            <p>
                                <a class="btn btn-link" href="{{ route('register') }}">
                                    {{ __('Register') }}
                                </a>
                            </p>
                        </form>
                    </div>
                    <!--/.c-box__content-->
                </section>
                <!--/.c-box-->
            </div>
        </div>
        <!--/.cart__column-->
    </div>

@endsection
