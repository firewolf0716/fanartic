@extends('layouts.customer_layout')

@section('content')

    <h1 class="c-pagetitle">新規登録</h1>
    <div class="login">
        <div class="login__column">
            <div class="login__column__content">
                <section class="c-box">
                    <h3 class="c-box__hd">新規登録</h3>

                    <form method="POST" action="{{ route('register') }}" aria-label="{{ __('Register') }}">
                        @csrf
                        <h5 class="c-box__hd" id="errordiv_up" style="display:none"></h5>
                        <div class="c-box__content">
                            <div class="c-form__row c-form__row--min">
                                <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">お名前</div>
                                        <div class="c-form__row{{ $errors->has('name') ? ' has-error' : '' }}">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum">
                                                    <input type="text" class="c-form__input" name="name" id="name"
                                                           value="{{ old('name') }}">
                                                </div>
                                                @if ($errors->has('name'))
                                                    <span class="help-block">{{ $errors->first('name')}}</span>
                                                @endif
                                            </div>
                                        </div>
                                        <!--/.c-form__row-->
                                    </div>
                                    <!--/.l-column--half__col-->
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">メールアドレス</div>
                                        <div class="c-form__row{{ $errors->has('email') ? ' has-error' : '' }}">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum">
                                                    <input type="email" class="c-form__input" name="email" id="email"
                                                           value="{{ old('email') }}">
                                                </div>
                                                @if ($errors->has('email'))
                                                    <span class="help-block">{{ $errors->first('email')}}</span>
                                                @endif
                                            </div>
                                            <!--/.c-form__row-->
                                        </div>
                                        <!--/.l-column--half__col-->
                                    </div>
                                    <!--/.l-column l-column--half-->
                                </div>
                                <!--/.l-column-->
                            </div>
                            <!--/.c-form__row-->
                            <div class="c-form__row c-form__row--min">
                                <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">パスワード</div>
                                        <div class="c-form__row{{ $errors->has('password') ? ' has-error' : '' }}">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum">
                                                    <input type="password" class="c-form__input" name="password"
                                                           id="password" value="">
                                                </div>
                                                @if ($errors->has('password'))
                                                    <span class="help-block">{{ $errors->first('password')}}</span>
                                                @endif
                                            </div>
                                        </div>
                                        <!--/.c-form__row-->
                                    </div>
                                    <!--/.l-column--half__col-->
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">パスワード（確認）</div>
                                        <div class="c-form__row{{ $errors->has('password_confirm') ? ' has-error' : '' }}">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum">
                                                    <input id="password-confirm" type="password" class="c-form__input"
                                                           name="password_confirmation">
                                                </div>
                                                @if ($errors->has('password_confirm'))
                                                    <span class="help-block">{{ $errors->first('password_confirm')}}</span>
                                                @endif
                                            </div>
                                            <!--/.c-form__row-->
                                        </div>
                                        <!--/.l-column--half__col-->
                                    </div>
                                    <!--/.l-column l-column--half-->
                                </div>
                                <!--/.l-column-->
                            </div>
                            <!--/.c-form__row-->

                            <div class="c-form__row c-form__row--min">
                                <div class="c-form__checkswitch{{ $errors->has('checkagree1') ? ' has-error' : '' }}">
                                    <label class="c-form__checkbox">
                                        <input type="checkbox" name="checkagree1" id="checkagree1"
                                               value="check_rule"><i></i>登録することで以下に同意したものとみなされます。
                                        <a href="">利用規約</a>&emsp;<a href="">プライバシー＆クッキーポリシー</a>
                                    </label>
                                    @if ($errors->has('checkagree1'))
                                        <span class="help-block">{{ $errors->first('checkagree1')}}</span>
                                    @endif
                                </div>
                            </div>
                            <!--/.c-form__row-->

                            <div class="c-form__row c-form__row--min">
                                <div class="c-form__checkswitch">
                                    <label class="c-form__checkbox">
                                        <input type="checkbox" name="checkagree2" id="checkagree2"
                                               value="check_rule" checked>
                                        <i></i>セールへの先行アクセスや、お客様にぴったりの新着アイテム、トレンド情報や特別オファーをメールでお届けいたします。
                                        <a href="">詳細を見る</a>
                                    </label>
                                </div>
                            </div>
                            <!--/.c-form__row-->

                            <div class="l-button">
                                <button type="submit" class="c-button c-button--submit">
                                    {{ __('Register') }}
                                </button>
                            </div>

                            {{--                        <hr class="c-hr">
                                                    <div class="l-button">
                                                        <button type="button" class="c-button c-button--submit">Facebookで登録する</button>
                                                    </div>--}}

                        </div>
                        <!--/.c-box__content-->
                    </form>
                </section>
                <!--/.c-box-->
            </div>
        </div>
        <!--/.cart__column-->
    </div>
@endsection
