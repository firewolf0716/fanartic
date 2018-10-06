<!doctype html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <title>@yield('title', '')｜or not__</title>
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
            <div class="header__button-search" data-header-search-button><i
                        class="c-icon header__button-search__icon"></i></div>
            <div class="header__sitename">
                <a href="{{ route('mall', $mallname) }}">
                    <img src="{{asset('images/logo.png')}}" alt="" width="150">
                </a>
            </div>
            @include('include.header_brand')
            <ul class="header__nav-secondary">
                <li class="header__nav-secondary__search">
                    <div class="header__search" data-header-search><span class="header__search__close"
                                                                         data-header-search__close></span>
                        <div class="header__search__input-wrapper">
                            <form action="post"><input type="text" class="header__search__input"
                                                       placeholder="{{ __('header.商品名・ブランド名で検索') }}">
                                <button class="header__search__submit"><i></i></button>
                            </form>
                            <div class="header__search__dropdown" data-dropdown="" style="display: none;">
                                <div class="ttl">{{ __('header.ブランド') }}</div>
                                <ul>
                                    <li><a href="http://dev.fanartic.com/category/fanartic/men/L.OUTER">PRADA</a></li>
                                    <li><a href="">Vutton</a></li>
                                    <li><a href="">Barenciaga</a></li>
                                    <li><a href="">Gucci</a></li>
                                    <li><a href="">Visvim</a></li>
                                </ul>
                                <div class="ttl">{{ __('header.検索履歴') }}</div>
                                <ul>
                                    <li><a href="">PRADA</a></li>
                                    <li><a href="">Vutton</a></li>
                                    <li><a href="">Barenciaga</a></li>
                                    <li><a href="">Gucci</a></li>
                                    <li><a href="">Visvim</a></li>
                                </ul>
                            </div>
                            <!--/.header__search__input-wrapper-->
                        </div>
                        <!--/.header__search__input-wrapper-->
                    </div>
                    <!--/.header__search-->
                </li>
                <li class="header__nav-secondary__lang">
                    <div class="header__nav-secondary__lang__button" js-data-header-modal="header-lang">
                        {{ Config::get('languages')[App::getLocale()] }}
                        &nbsp;/&nbsp;
                        {{ $currencies[Session::get('cur_currency')] }}<i></i></div>
                    <div class="header__modal header__modal--lang" id="header-lang">
                        <div class="header__modal__hd">{{ __('header.言語・通貨を選択') }}</div>
                        <form action="{{ route('switch') }}" method="post">
                            @csrf
                            <div class="header__modal__column">
                                <label class="c-form__select">
                                    <div class="c-form__select__box">
                                        <select name="language" id="language">
                                            @foreach (Config::get('languages') as $lang => $language)
                                                <option value="{{ $lang }}"
                                                        @if($language == Config::get('languages')[App::getLocale()])
                                                        selected @endif>{{ $language }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </label>
                                <label class="c-form__select">
                                    <div class="c-form__select__box">
                                        <select name="currency" id="currency">
                                            @foreach ($currencies as $cur => $currency)
                                                <option value="{{ $cur }}"
                                                        @if($cur == $currencies[Session::get('cur_currency')]) selected @endif>{{ $currency }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </label>
                            </div>
                            <!--/.header__modal__column-->
                            <div class="header__modal__button">
                                <button class="c-button c-button--primary">{{ __('header.選択する') }}</button>
                            </div>
                        </form>
                        <!--/.header__modal__button-->
                        <div class="header__modal__close"><i class="c-icon"></i></div>
                    </div>
                    <!--/.header__modal-->
                </li>
                <li><a href="{{ route('favorite') }}"><i class="c-icon
                header__nav-secondary__icon--favorite"></i></a></li>
                <li><a href="{{ route('cart') }}/user/cart">
                        <span class="c-badge"><span class="c-badge__num">99</span></span>
                        <i class="c-icon header__nav-secondary__icon--wish"></i>
                    </a>
                </li>
                @if(!empty($authUser))
                    <li class="header__nav-secondary__user">
                        <a href="{{url('user/cart')}}" class="u-sp">
                            <i class="c-icon header__nav-secondary__icon--user"></i></a>
                        <div js-data-header-modal="header-user" class="u-pc">
                            <i class="c-icon header__nav-secondary__icon--user"></i>
                            <span class="header__nav-secondary__user__name">{{ $authUser->customer_name_first
                            }}</span>
                        </div>
                        <div class="header__modal header__modal--user" id="header-user">
                            <ul class="header__modal__nav">
                                <li><a href="{{url('user/cart')}}">{{ __('header.カート') }}</a></li>
                                <li><a href="{{url('user/favorite')}}">{{ __('header.お気に入り') }}</a></li>
                                <li><a href="{{url('user/wish')}}">{{ __('header.探しているアイテム') }}</a></li>
                                <li><a href="{{url('user/history')}}">{{ __('header.注文履歴') }}</a></li>
                                <li><a href="{{url('user/score')}}">{{ __('header.ポイント') }}</a></li>
                                <li><a href="{{url('user/profile')}}">{{ __('header.会員情報') }}</a></li>
                            </ul>
                            <div class="header__modal__close"><i class="c-icon"></i></div>
                        </div>
                        <!--/.header__modal-->
                    </li>
                @else
                    <li><a href="{{ route('login') }}">{{ __('auth.ログイン') }}</a></li>
                    <li><a href="{{ route('register') }}">{{ __('auth.新規登録') }}</a></li>
                @endif
            </ul>
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

    <input type="hidden" name="_token" id="token_layout" value="{{ csrf_token() }}">
    <script src="{{asset('js/vendor/in-view.min.js')}}"></script>
    <script src="{{asset('js/vendor/hiraku.min.js')}}"></script>
    <script src="{{asset('js/vendor/modaal.min.js')}}"></script>
    <script src="{{asset('js/plugins.js')}}"></script>
    <script src="{{asset('js/script.js')}}"></script>
    <script>
        $(function () {
            function sendToServer(value){
                $.ajax({
                   type: 'post',
                   data: {
                       value: value,
                       _token: "{{ csrf_token() }}"
                   },
                   url: "{{url('insert_session')}}",
                   success: function (data) {
                       console.log(data)
                   }
               });

            }
            $('#top_women').click(function(){
                sendToServer('women');
            });
            $('#top_men').click(function(){
                sendToServer('  men');
            });
        });
    </script>
</div>
</body>

</html>
<!--/.l-body-->
