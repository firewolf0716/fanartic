<!doctype html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <title>or Not__ | 探しているアイテム</title>
    <meta name="viewport" content="width=device-width">
    <meta name="format-detection" content="telephone=no">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link href="{{asset('css/hiraku.min.css')}}" rel="stylesheet">
    <link href="{{asset('css/modaal.min.css')}}" rel="stylesheet">
    <link href="{{asset('css/style.css')}}" rel="stylesheet">
    <script src="{{asset('js/vendor/jquery-2.1.4.min.js')}}"></script>
    <script src="{{asset('gvendor/parsleyjs/dist/parsley.min.js')}}"></script>
</head>

<body>
<div class="l-body">
    <header class="header">
        <div class="header__inner">
            <div class="header__button" data-header-button></div>
            <div class="header__button-search" data-header-search-button>
                <i class="c-icon header__button-search__icon"></i>
            </div>
            <div class="header__sitename">
                <a href="/">
                    <img src="{{asset('images/logo.png')}}" alt="" width="150">
                </a>
            </div>

        </div>
        <!--/.header__inner-->
    </header>
    <!--/.header-->
    <div class="l-content">
        @include('include.session_message')
        @yield('content')
        @include('include.checked_item')
    </div>
    <!--/.l-content-->
    @include('include.footer')

    <div id="modal-user-signin" style="display: none">
        <h1 class="c-pagetitle">ログイン</h1>
        <div class="login">
            <div class="login__column">
                <div class="login__column__content">
                    <section class="c-box">
                        <h3 class="c-box__hd">ログイン</h3>
                        <div class="c-box__content">
                            {!! Form::open(array('id' => 'user_form_signin','url'=>'user/signinpost', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
                            {{ Form::hidden('redirect', url()->current() ,array('id' => 'redirect'))}}
                            <div class="c-form__row c-form__row--min">
                                <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">メールアドレス</div>
                                        <div class="c-form__row">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum"><input type="email" class="c-form__input"
                                                                                  name="username" value=""></div>
                                            </div>
                                        </div>
                                        <!--/.c-form__row-->
                                    </div>
                                    <!--/.l-column--half__col-->
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">パスワード</div>
                                        <div class="c-form__row">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum"><input type="password" class="c-form__input"
                                                                                  name="password" value=""></div>
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
                                <button class="c-button c-button--submit">ログインする</button>
                            </div>
                            {{ Form::close() }}
                            <p><a href="">パスワードを忘れた方</a></p>
                            <p><a href="#modal-user-signup" class="modal-sm">新規登録の方</a></p>

                        </div>
                        <!--/.c-box__content-->
                    </section>
                    <!--/.c-box-->
                </div>
            </div>
            <!--/.cart__column-->
        </div>
    </div>

    <div id="modal-user-signup" style="display: none">
        <h1 class="c-pagetitle">新規登録</h1>
        <div class="login">
            <div class="login__column">
                <div class="login__column__content">
                    <section class="c-box">
                        <h3 class="c-box__hd">新規登録</h3>

                        <h5 class="c-box__hd" id="errordiv_up" style="display:none"></h5>
                        <div class="c-box__content">
                            <div class="c-form__row c-form__row--min">
                                <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">お名前</div>
                                        <div class="c-form__row">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum"><input type="text" class="c-form__input"
                                                                                  name="name" id="username_up" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <!--/.c-form__row-->
                                    </div>
                                    <!--/.l-column--half__col-->
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">メールアドレス</div>
                                        <div class="c-form__row">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum"><input type="email" class="c-form__input"
                                                                                  name="email" id="email_up" value="">
                                                </div>
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
                                        <div class="c-form__row">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum"><input type="password" class="c-form__input"
                                                                                  name="password" id="password_up"
                                                                                  value=""></div>
                                            </div>
                                        </div>
                                        <!--/.c-form__row-->
                                    </div>
                                    <!--/.l-column--half__col-->
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">パスワード（確認）</div>
                                        <div class="c-form__row">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum"><input type="password" class="c-form__input"
                                                                                  name="password_confirm"
                                                                                  id="password_confirm" value=""></div>
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
                                <div class="c-form__checkswitch">
                                    <label class="c-form__checkbox">
                                        <input type="checkbox" name="checkagree1" id="checkagree1"
                                               value="check_rule"><i></i>登録することで以下に同意したものとみなされます。
                                        <a href="">利用規約</a>&emsp;<a href="">プライバシー＆クッキーポリシー</a>
                                    </label>
                                </div>
                            </div>
                            <!--/.c-form__row-->

                            <div class="c-form__row c-form__row--min">
                                <div class="c-form__checkswitch">
                                    <label class="c-form__checkbox">
                                        <input type="checkbox" name="checkagree2" id="checkagree2"
                                               value="check_rule"><i></i>セールへの先行アクセスや、お客様にぴったりの新着アイテム、トレンド情報や特別オファーをメールでお届けいたします。
                                        <a href="">詳細を見る</a>
                                    </label>
                                </div>
                            </div>
                            <!--/.c-form__row-->

                            <div class="l-button">
                                <button type="button" class="c-button c-button--submit" onClick="onSignup()">新規登録する
                                </button>
                            </div>

                            <hr class="c-hr">

                            <div class="l-button">
                                <button type="button" class="c-button c-button--submit">Facebookで登録する</button>
                            </div>

                        </div>
                        <!--/.c-box__content-->
                    </section>
                    <!--/.c-box-->
                </div>
            </div>
            <!--/.cart__column-->
        </div>
    </div>
    <input type="hidden" name="_token" id="token_layout" value="{{ csrf_token() }}">
    <script src="{{asset('js/vendor/hiraku.min.js')}}"></script>
    <script src="{{asset('js/vendor/modaal.min.js')}}"></script>
    <script src="{{asset('js/plugins.js')}}"></script>
    <script src="{{asset('js/script.js')}}"></script>
    <script>
        $(function () {
            var topcategory = "{{$tcategory->category_id}}";
            if (topcategory == '1') {
                $('#top_women').removeClass('is-current');
                $('#top_men').addClass('is-current');
            }
            else if (topcategory == '2') {
                $('#top_men').removeClass('is-current');
                $('#top_women').addClass('is-current');
            }
        });
    </script>
</div>
</body>

</html>
<!--/.l-body-->