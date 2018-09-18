@extends('layouts.customer_top')

@section('content')
    <h1 class="c-pagetitle">ログイン</h1>
    <div class="login">
        <div class="login__column">
            <div class="login__column__content">
                <section class="c-box">
                    <h3 class="c-box__hd">ログイン</h3>
                    <div class="c-box__content">
                        <form method="POST" action="{{ route('login') }}" aria-label="{{ __('Login') }}">
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
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">パスワード</div>
                                        <div class="c-form__row{{ $errors->has('password') ? ' has-error' : '' }}">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum">
                                                    <input type="password" class="c-form__input" name="password"
                                                           value="">
                                                </div>
                                                @if ($errors->has('password'))
                                                    <span class="help-block">{{ $errors->first('password')}}</span>
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
                                <button class="c-button c-button--submit">{{ __('Login') }}</button>
                            </div>
                            <p>
                                <a class="btn btn-link" href="{{ route('password.request') }}">
                                    {{ __('Forgot Your Password?') }}
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
