<!doctype html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <title>or Not__ | 探しているアイテム</title>
    <meta name="viewport" content="width=device-width">
    <meta name="format-detection" content="telephone=no">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link href="{{url('')}}/css/hiraku.min.css" rel="stylesheet">
    <link href="{{url('')}}/css/modaal.min.css" rel="stylesheet">
    <link href="{{url('')}}/css/style.css" rel="stylesheet">
    <script src="{{url('')}}/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="{{url('')}}/gvendor/parsleyjs/dist/parsley.min.js"></script>
</head>

<body>
<div class="l-body">
    <header class="header">
        <div class="header__inner">
            <div class="header__button" data-header-button></div>
            <div class="header__button-search" data-header-search-button><i
                        class="c-icon header__button-search__icon"></i></div>
            <div class="header__sitename"><a href="{{url('')}}">or Not__</a></div>
            <div class="header__nav-primary-wrap" data-header-primary>
                <ul class="header__nav-primary">
                    <li><span class="header__nav-primary__button" data-header-primary__button
                              id="top_women">WOMEN</span>
                        <div class="header__nav-primary__list">
                            <ul class="header__nav-primary__list__menu">
                                <li><a href="#">NEW</a></li>
                                <li><a href="{{url('brands')}}">BRAND</a></li>
                                @php $i=0; @endphp
                                @foreach($womencategories as $key => $womencategory)
                                @if($i < 5)
                                @php
                                    $url = '/';
                                    if(isset($listtype)){
                                        if($listtype == 'malls'){
                                            $url = url('').'/category/fanartic/women/'.str_replace('/', '-', $womencategory->category_name_en);
                                        } else if($listtype == 'mall_brands'){
                                            $url = url('').'/category/'.$mallname.'/women/'.str_replace('/', '-', $womencategory->category_name_en);
                                        } else if($listtype == 'mall_brand_products'){
                                            $url = url('').'/'.$mallname.'/'.$brandname.'/women/'.str_replace('/', '-', $womencategory->category_name_en);
                                        } else if($listtype == 'brand_products'){
                                            $url = url('').'/brands/'.$brandid.'/women/'.str_replace('/', '-', $womencategory->category_name_en);
                                        }
                                    }
                                    $i++;
                                @endphp
                                <li><a href="{{$url}}">{{$womencategory->category_name}}</a></li>
                                @endif
                                @endforeach
                                <li><a href="#">EDITORIAL</a></li>
                                <li><a href="#">SALE</a></li>
                                <span class="slide-line"></span>
                            </ul>
                        </div>
                    </li>
                    <li><span class="header__nav-primary__button" data-header-primary__button id="top_men">MEN</span>
                        <div class="header__nav-primary__list">
                            <ul class="header__nav-primary__list__menu">
                                <li><a href="#">NEW</a></li>
                                <li><a href="{{url('brands')}}">BRAND</a></li>
                                @php $i=0; @endphp
                                @foreach($mencategories as $key => $mencategory)
                                    @if($i < 5)
                                    @php
                                        $url = '/';
                                        if(isset($listtype)){
                                            if($listtype == 'malls'){
                                                $url = url('').'/category/fanartic/men/'.str_replace('/', '-', $mencategory->category_name_en);
                                            } else if($listtype == 'mall_brands'){
                                                $url = url('').'/category/'.$mallname.'/men/'.str_replace('/', '-', $mencategory->category_name_en);
                                            } else if($listtype == 'mall_brand_products'){
                                                $url = url('').'/'.$mallname.'/'.$brandname.'/men/'.str_replace('/', '-', $mencategory->category_name_en);
                                            } else if($listtype == 'brand_products'){
                                                $url = url('').'/brands/'.$brandid.'/men/'.str_replace('/', '-', $mencategory->category_name_en);
                                            }
                                        }
                                        $i++;
                                    @endphp
                                    <li><a href="{{$url}}">{{$mencategory->category_name}}</a></li>
                                    @endif
                                @endforeach
                                <li><a href="#">EDITORIAL</a></li>
                                <li><a href="#">SALE</a></li>
                                <span class="slide-line"></span>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
            <ul class="header__nav-secondary">
                <li data-header-dropdown>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        {{ Config::get('languages')[App::getLocale()] }}
                        <span class="caret"></span></a>

                    <div class="dropdown-wrapper">
                        <div class="dropdown-content">
                            <ul>
                                @foreach (Config::get('languages') as $lang => $language)
                                    @if ($lang != App::getLocale())
                                        <li>
                                            <a href="{{ route('lang.switch', $lang) }}">{{$language}}</a>
                                        </li>
                                    @endif
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </li>
                @if(!isset($customerid))
                {{--<a href="#modal-user-signin" class="modal-sm"><i class="c-icon header__nav-secondary__icon--user"></i></a></li>--}}
                <li><a href="#modal-user-signin" class="modal-sm">ログイン</a></li>
                @else
                <li data-header-dropdown>
                    <a href="{{url('user/profile')}}">アカウント</a>
                    <div class="dropdown-wrapper">
                        <div class="dropdown-content">
                            <ul>
                                <li><a href="{{url('user/profile')}}">会員情報変更</a></li>
                                <li><a href="{{url('user/address')}}">お届け先の変更・追加</a></li>
                                <li><a href="{{url('user/credit')}}">クレジットカード情報</a></li>
                                <li><a href="{{url('user/magazine')}}">メールマガジン</a></li>
                                <li><a href="{{url('user/signout')}}">ログアウト</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                @endif
                <li><a href="{{url('')}}/user/favourite"><i class="c-icon header__nav-secondary__icon--favorite"></i></a></li>
                <li><a href="{{url('')}}/user/cart?redirect={{url()->current()}}"><i class="c-icon header__nav-secondary__icon--wish"></i></a></li>
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
            <h2 class="c-hd">最近チェックしたアイテム</h2>
            <div class="c-items c-items--03">
                @if(isset($recent))
                @foreach($recent as $recentitem)
                <div class="c-item c-item--03">
                    <div class="c-item__column">
                    <div class="c-item__column__figure">
                        @php
                            $imageset = $recentimages[$recentitem->product_id];
                            
                            $file_get_path_0 = $imageset[0]->master_image_name;                                    
                            $prod_path = url('').'/images/products/'.$file_get_path_0;
                            
                            $prod_path02 = NULL;
                            $file_get_path_1 = '';
                            try{
                                $file_get_path_1 = $imageset[1]->master_image_name;                                    
                                if (isset($file_get_path_1)) {
                                    $prod_path02 = url('').'/images/products/'.$file_get_path_1;
                                }
                            } catch(\Exception $ex){
                                
                            }
                        @endphp
                        <figure class="c-item__figure"><a href="{{url('brands/'.$recentitem->brand_name_en.'/goods/'.$recentitem->product_id)}}"><img style="width:440px; height:150px;" src="{{$prod_path}}" alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                    </div>
                    <!--/.c-item__column-->
                </div>
                @endforeach
                @endif
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
                    <li><a href="#modal-user-signup" class="modal-sm"><img src="{{url('')}}/images/footer__banner-02@2x.png" alt="" width="254"></a></li>
                    <li><a href="#"><img src="{{url('')}}/images/footer__banner-03@2x.png" alt="" width="254"></a></li>
                </ul>
            </div>
            <!--/.l-wrapper-->
        </div>
        <!--/.footer__banner-->
        <div class="footer__nav">
            <div class="l-wrapper">
                <h2 class="footer__nav__hd" data-accordion="">BRAND</h2>
                <div class="footer__nav__list-wrap">
                    <ul class="footer__nav__list footer__nav__list--col04">
                        @foreach($brands as $brand)
                            <li><a href="{{url('').'/brands/'.$brand->brand_name_en}}">{{$brand->brand_name}}</a></li>
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
                                        if(isset($listtype)){
                                            if($listtype == 'malls'){
                                                $url = url('').'/category/fanartic/men/'.str_replace('/', '-', $maincategory->category_name_en);
                                            } else if($listtype == 'mall_brands'){
                                                $url = url('').'/category/'.$mallname.'/men/'.str_replace('/', '-', $maincategory->category_name_en);
                                            } else if($listtype == 'mall_brand_products'){
                                                $url = url('').'/'.$mallname.'/'.$brandname.'/men/'.str_replace('/', '-', $maincategory->category_name_en);
                                            } else if($listtype == 'brand_products'){
                                                $url = url('').'/brands/'.$brandid.'/men/'.str_replace('/', '-', $maincategory->category_name_en);
                                            }
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
            <p>&copy; or Not__ INC. ALL RIGHTS RESERVED.</p>
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
                                                <div class="c-form__colum"><input type="email" class="c-form__input" name="username" value=""></div>
                                            </div>
                                        </div>
                                        <!--/.c-form__row-->
                                    </div>
                                    <!--/.l-column--half__col-->
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">パスワード</div>
                                        <div class="c-form__row">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum"><input type="password" class="c-form__input" name="password" value=""></div>
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
                                                <div class="c-form__colum"><input type="text" class="c-form__input" name="name" id="username_up" value=""></div>
                                            </div>
                                        </div>
                                        <!--/.c-form__row-->
                                    </div>
                                    <!--/.l-column--half__col-->
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">メールアドレス</div>
                                        <div class="c-form__row">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum"><input type="email" class="c-form__input" name="email" id="email_up" value=""></div>
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
                                                <div class="c-form__colum"><input type="password" class="c-form__input" name="password" id="password_up" value=""></div>
                                            </div>
                                        </div>
                                        <!--/.c-form__row-->
                                    </div>
                                    <!--/.l-column--half__col-->
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">パスワード（確認）</div>
                                        <div class="c-form__row">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum"><input type="password" class="c-form__input" name="password_confirm" id="password_confirm" value=""></div>
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
                                        <input type="checkbox" name="checkagree1" id="checkagree1" value="check_rule"><i></i>登録することで以下に同意したものとみなされます。
                                        <a href="">利用規約</a>&emsp;<a href="">プライバシー＆クッキーポリシー</a>
                                    </label>
                                </div>
                            </div>
                            <!--/.c-form__row-->

                            <div class="c-form__row c-form__row--min">
                                <div class="c-form__checkswitch">
                                    <label class="c-form__checkbox">
                                        <input type="checkbox" name="checkagree2" id="checkagree2" value="check_rule"><i></i>セールへの先行アクセスや、お客様にぴったりの新着アイテム、トレンド情報や特別オファーをメールでお届けいたします。
                                        <a href="">詳細を見る</a>
                                    </label>
                                </div>
                            </div>
                            <!--/.c-form__row-->

                            <div class="l-button">
                                <button type="button" class="c-button c-button--submit" onClick="onSignup()">新規登録する</button>
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
    <script src="{{url('')}}/js/vendor/hiraku.min.js"></script>
    <script src="{{url('')}}/js/vendor/modaal.min.js"></script>
    <script src="{{url('')}}/js/plugins.js"></script>
    <script src="{{url('')}}/js/script.js"></script>
    <script>
        $(function(){
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
        function onSignup(){
            if($('#username_up').val() == '' || $('#email_up').val() == ''){
                return;
            }
            if(!$('#checkagree1').is(':checked')){
                return;
            }
            if(!$('#checkagree2').is(':checked')){
                return;
            }
            if($('#password_up').val() != $('#password_confirm').val()){
                alert('Please confirm your password');
                return;
            }
            if($('#password_up').val().length < 8){
                alert('Please input password more than 8 characters');
                return;
            }
            $.ajax( {
                type: 'post',
                data: {
                    name        : $('#username_up').val(),
                    password    : $('#password_up').val(),
                    email       : $('#email_up').val(),
                    _token      : $('#token_layout').val()
                },
                url: "{{url('user/signuppost')}}",
                success: function(data){
                    alert(data);
                }
            });
        }
    </script>
</div>
</body>

</html>
<!--/.l-body-->