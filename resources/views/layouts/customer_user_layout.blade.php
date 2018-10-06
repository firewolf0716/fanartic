<!doctype html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <title>SERVICE NAME</title>
    <meta name="viewport" content="width=device-width">
    <meta name="format-detection" content="telephone=no">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link href="{{ asset('css/hiraku.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/modaal.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
    <script src="{{ asset('js/vendor/jquery-2.1.4.min.js') }}/"></script>
    <script src="{{ asset('gvendor/parsleyjs/dist/parsley.min.js') }}"></script>
</head>

<body>
<div class="l-body">
    <header class="header">
        <div class="header__inner">
            <div class="header__button" data-header-button></div>
            <div class="header__button-search" data-header-search-button><i
                        class="c-icon header__button-search__icon"></i></div>
            <div class="header__sitename"><a href="{{url('')}}">fanaRtic</a></div>
            <div class="header__nav-primary-wrap" data-header-primary>
                <ul class="header__nav-primary">
                    <li><span class="header__nav-primary__button" data-header-primary__button
                              id="top_women">WOMEN</span>
                        <div class="header__nav-primary__list">
                            <ul class="header__nav-primary__list__menu">
                                <li><a href="#">{{ __('common.新規') }}</a></li>
                                <li><a href="{{url('brands')}}">{{ __('header.ブランド') }}</a></li>
                                @foreach($womencategories as $key => $womencategory)
                                    @if($key < 5)
                                        @php
                                            $url = url('product/list').'/2/'.$womencategory->category_id;
                                            if(isset($mallname)){
                                                $url = url($mallname.'/good/list/2/'.$womencategory->category_id);
                                            }
                                        @endphp
                                        <li><a href="{{$url}}">{{$womencategory->category_name}}</a>
                                        </li>
                                    @endif
                                @endforeach
                                <li><a href="#">{{ __('common.文学') }}</a></li>
                                <li><a href="#">{{ __('common.販売') }}</a></li>
                                <span class="slide-line"></span>
                            </ul>
                        </div>
                    </li>
                    <li><span class="header__nav-primary__button" data-header-primary__button id="top_men">MEN</span>
                        <div class="header__nav-primary__list">
                            <ul class="header__nav-primary__list__menu">
                                <li><a href="#">{{ __('common.新規') }}</a></li>
                                <li><a href="{{url('brands')}}">{{ __('header.ブランド') }}</a></li>
                                @foreach($mencategories as $key => $mencategory)
                                    @if($key < 5)
                                        @php
                                            $url = url('product/list').'/1/'.$mencategory->category_id;
                                            if(isset($mallname)){
                                                $url = url($mallname.'/good/list/1/'.$mencategory->category_id);
                                            }
                                        @endphp
                                        <li><a href="{{$url}}">{{$mencategory->category_name}}</a>
                                    @endif
                                @endforeach
                                <li><a href="#">{{ __('common.文学') }}</a></li>
                                <li><a href="#">{{ __('common.販売') }}</a></li>
                                <span class="slide-line"></span>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
            <ul class="header__nav-secondary">
                <li>
                    @if(!isset($customerid))
                        <a href="#modal-user-signin" class="modal-sm"><i
                                    class="c-icon header__nav-secondary__icon--user"></i></a></li>
                @else
                    <a href="{{url('user/profile')}}"><i class="c-icon header__nav-secondary__icon--user"></i></a></li>
                @endif
                <li><a href="{{url('')}}/user/favourite"><i
                                class="c-icon header__nav-secondary__icon--favorite"></i></a></li>
                <li><a href="{{url('')}}/user/cart">
                        <span class="c-badge"><span class="c-badge__num">99</span></span>
                        <i class="c-icon header__nav-secondary__icon--wish"></i>
                    </a>
                </li>

            </ul>

            <div class="header__search" data-header-search><span class="header__search__close"
                                                                 data-header-search__close></span>
                <div class="header__search__input-wrapper">
                    <form action="post"><input type="text" class="header__search__input"
                                               placeholder="商品名・ブランド名・フリーワードで検索">
                        <button class="header__search__submit"><i></i></button>
                    </form>
                    <div class="header__search__dropdown" data-dropdown="" style="display: none;">
                        <div class="ttl">ブランド</div>
                        <ul>
                            <li><a href="">PRADA</a></li>
                            <li><a href="">Vutton</a></li>
                            <li><a href="">Barenciaga</a></li>
                            <li><a href="">Gucci</a></li>
                            <li><a href="">Visvim</a></li>
                        </ul>
                        <div class="ttl">検索履歴</div>
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
                <!--/.header__search-->
            </div>
        </div>
        <!--/.header__inner-->
    </header>
    <!--/.header-->
    <div class="l-content">
        @yield('content')
        @if(isset($customerid))
            <div class="l-column--sub">
                <h2 class="c-hd">{{ __('customer.最近チェックしたアイテム') }}</h2>
                <div class="c-items c-items--03">
                    <div class="c-item c-item--03">
                        <div class="c-item__column">
                            <div class="c-item__column__figure">
                                <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                                alt=""></a></figure>
                            </div>
                            <!--/.c-item__column__figure-->
                        </div>
                        <!--/.c-item__column-->
                    </div>
                    <!--/.c-item-->
                    <div class="c-item c-item--03">
                        <div class="c-item__column">
                            <div class="c-item__column__figure">
                                <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                                alt=""></a></figure>
                            </div>
                            <!--/.c-item__column__figure-->
                        </div>
                        <!--/.c-item__column-->
                    </div>
                    <!--/.c-item-->
                    <div class="c-item c-item--03">
                        <div class="c-item__column">
                            <div class="c-item__column__figure">
                                <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                                alt=""></a></figure>
                            </div>
                            <!--/.c-item__column__figure-->
                        </div>
                        <!--/.c-item__column-->
                    </div>
                    <!--/.c-item-->
                    <div class="c-item c-item--03">
                        <div class="c-item__column">
                            <div class="c-item__column__figure">
                                <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                                alt=""></a></figure>
                            </div>
                            <!--/.c-item__column__figure-->
                        </div>
                        <!--/.c-item__column-->
                    </div>
                    <!--/.c-item-->
                    <div class="c-item c-item--03">
                        <div class="c-item__column">
                            <div class="c-item__column__figure">
                                <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                                alt=""></a></figure>
                            </div>
                            <!--/.c-item__column__figure-->
                        </div>
                        <!--/.c-item__column-->
                    </div>
                    <!--/.c-item-->
                    <div class="c-item c-item--03">
                        <div class="c-item__column">
                            <div class="c-item__column__figure">
                                <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                                alt=""></a></figure>
                            </div>
                            <!--/.c-item__column__figure-->
                        </div>
                        <!--/.c-item__column-->
                    </div>
                    <!--/.c-item-->
                    <div class="c-item c-item--03">
                        <div class="c-item__column">
                            <div class="c-item__column__figure">
                                <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                                alt=""></a></figure>
                            </div>
                            <!--/.c-item__column__figure-->
                        </div>
                        <!--/.c-item__column-->
                    </div>
                    <!--/.c-item-->
                    <div class="c-item c-item--03">
                        <div class="c-item__column">
                            <div class="c-item__column__figure">
                                <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                                alt=""></a></figure>
                            </div>
                            <!--/.c-item__column__figure-->
                        </div>
                        <!--/.c-item__column-->
                    </div>
                    <!--/.c-item-->
                    <div class="c-item c-item--03">
                        <div class="c-item__column">
                            <div class="c-item__column__figure">
                                <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                                alt=""></a></figure>
                            </div>
                            <!--/.c-item__column__figure-->
                        </div>
                        <!--/.c-item__column-->
                    </div>
                    <!--/.c-item-->
                    <div class="c-item c-item--03">
                        <div class="c-item__column">
                            <div class="c-item__column__figure">
                                <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                                alt=""></a></figure>
                            </div>
                            <!--/.c-item__column__figure-->
                        </div>
                        <!--/.c-item__column-->
                    </div>
                    <!--/.c-item-->
                    <div class="c-item c-item--03">
                        <div class="c-item__column">
                            <div class="c-item__column__figure">
                                <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                                alt=""></a></figure>
                            </div>
                            <!--/.c-item__column__figure-->
                        </div>
                        <!--/.c-item__column-->
                    </div>
                    <!--/.c-item-->
                </div>
                <!--/.c-items c-items--03-->
            </div>
        @endif
    </div>
    <!--/.l-content-->
    <div class="footer">
        <div class="footer__banner">
            <div class="l-wrapper">
                <ul class="footer__banner__list">
                    <li><a href="#"><img src="{{url('')}}/images/footer__banner-01@2x.png" alt="" width="254"></a></li>
                    <li><a href="#modal-user-signup" class="modal-sm"><img
                                    src="{{url('')}}/images/footer__banner-02@2x.png" alt="" width="254"></a></li>
                    <li><a href="#"><img src="{{url('')}}/images/footer__banner-03@2x.png" alt="" width="254"></a></li>
                </ul>
            </div>
            <!--/.l-wrapper-->
        </div>
        <!--/.footer__banner-->
        <div class="footer__nav">
            <div class="l-wrapper">
                <h2 class="footer__nav__hd" data-accordion="">{{ __('header.ブランド') }}</h2>
                <div class="footer__nav__list-wrap">
                    <ul class="footer__nav__list footer__nav__list--col04">
                        @foreach($brands as $brand)
                            <li><a href="#">{{$brand->brand_name}}</a></li>
                        @endforeach
                    </ul>
                </div>
                <div class="footer__nav__column">
                    <div class="footer__nav__column__col">
                        <h2 class="footer__nav__hd" data-accordion="">CATEGORY</h2>
                        <div class="footer__nav__list-wrap">
                            <ul class="footer__nav__list footer__nav__list--col02">
                                @foreach($maincategorys as $maincategory)
                                    @php
                                        $url = url('product/list').'/'.$tcategory->category_id.'/'.$maincategory->category_id;
                                        if(isset($mallname)){
                                            $url = url($mallname.'/good/list/'.$tcategory->category_id.'/'.$maincategory->category_id);
                                        }
                                    @endphp
                                    <li><a href="{{$url}}">{{$maincategory->category_name}}</a>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <!--/.footer__nav__column__col-->
                    <div class="footer__nav__column__col">
                        <h2 class="footer__nav__hd" data-accordion="">SUPPORT</h2>
                        <div class="footer__nav__list-wrap">
                            <ul class="footer__nav__list">
                                <li><a href="#">ご利用規約</a></li>
                                <li><a href="#">特定商取引法に基づく表記</a></li>
                                <li><a href="#">プライバシーポリシー</a></li>
                                <li><a href="#">ご利用ガイド</a></li>
                                <li><a href="#">サイズガイド</a></li>
                                <li><a href="#">お問い合わせ</a></li>
                            </ul>
                        </div>
                    </div>
                    <!--/.footer__nav__column__col-->
                    <div class="footer__nav__column__col">
                        <h2 class="footer__nav__hd" data-accordion="">CONTACT</h2>
                        <div class="footer__nav__list-wrap">
                            <ul class="footer__nav__list">
                                <li><a href="#">お問合わせ</a></li>
                            </ul>
                        </div>
                        <h2 class="footer__nav__hd">FOLLOW</h2>
                        <ul class="footer__nav__sns">
                            <li><a href="#"><i class="c-icon footer__nav__sns__icon--twitter"></i></a></li>
                            <li><a href="#"><i class="c-icon footer__nav__sns__icon--facebook"></i></a></li>
                            <li><a href="#"><i class="c-icon footer__nav__sns__icon--instagram"></i></a></li>
                            <li><a href="#"><i class="c-icon footer__nav__sns__icon--pinterest"></i></a></li>
                        </ul>
                    </div>
                    <!--/.footer__nav__column__col-->
                </div>
                <!--/.footer__nav__column-->
            </div>
            <!--/.l-wrapper-->
        </div>
        <!--/.footer__nav-->
        <div class="footer__copyrights">
            <p>&copy; fanaRtic INC. ALL RIGHTS RESERVED.</p>
        </div>
        <!--/.footer__copyrights-->
    </div>
    <!--/.footer-->
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
                            <p>パスワードを忘れた方</p>
                            <p>新規登録の方</p>

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
                        {!! Form::open(array('id' => 'user_form_signup','url'=>'user/signuppost', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
                        {{ Form::hidden('redirect', url()->current() ,array('id' => 'redirectup'))}}
                        <div class="c-box__content">
                            <div class="c-form__row c-form__row--min">
                                <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">お名前</div>
                                        <div class="c-form__row">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum"><input type="text" class="c-form__input"
                                                                                  name="name" value=""></div>
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
                                                                                  name="email" value=""></div>
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
                                                                                  name="password" value=""></div>
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
                                                                                  name="password" value=""></div>
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
                                        <input type="checkbox" name="address" value="check_rule"><i></i>登録することで以下に同意したものとみなされます。
                                        <a href="">利用規約</a>&emsp;<a href="">プライバシー＆クッキーポリシー</a>
                                    </label>
                                </div>
                            </div>
                            <!--/.c-form__row-->

                            <div class="c-form__row c-form__row--min">
                                <div class="c-form__checkswitch">
                                    <label class="c-form__checkbox">
                                        <input type="checkbox" name="address" value="check_rule"><i></i>セールへの先行アクセスや、お客様にぴったりの新着アイテム、トレンド情報や特別オファーをメールでお届けいたします。
                                        <a href="">詳細を見る</a>
                                    </label>
                                </div>
                            </div>
                            <!--/.c-form__row-->

                            <div class="l-button">
                                <button class="c-button c-button--submit">新規登録する</button>
                            </div>

                            <hr class="c-hr">

                            <div class="l-button">
                                <button class="c-button c-button--submit">Facebookで登録する</button>
                            </div>
                            {{ Form::close() }}
                        </div>
                        <!--/.c-box__content-->
                    </section>
                    <!--/.c-box-->
                </div>
            </div>
            <!--/.cart__column-->
        </div>
    </div>

    <script src="{{ asset('js/vendor/hiraku.min.js') }}"></script>
    <script src="{{ asset('js/vendor/modaal.min.js') }}"></script>
    <script src="{{ asset('js/plugins.js') }}"></script>
    <script src="{{ asset('js/script.js') }}"></script>
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
