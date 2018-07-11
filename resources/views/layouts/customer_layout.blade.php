<!doctype html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <title>fanaRtic | 探しているアイテム</title>
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
            <div class="header__sitename"><a href="/">fanaRtic</a></div>
            <div class="header__nav-primary-wrap" data-header-primary>
                <ul class="header__nav-primary">
                    <li><span class="header__nav-primary__button" data-header-primary__button
                              id="top_women">WOMEN</span>
                        <div class="header__nav-primary__list">
                            <ul class="header__nav-primary__list__menu">
                                <li><a href="#">NEW</a></li>
                                <li><a href="#">BRAND</a></li>
                                @foreach($womencategories as $key => $womencategory)
                                @if($key < 5)
                                <li><a href="{{url('customer/product/list').'/2/'.$womencategory->category_id}}">
                                    {{$womencategory->category_name}}
                                    </a>
                                </li>
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
                                <li>
                                    <a href="#">BRAND</a>
                                    {{--                                    <ul class="header__nav-primary__list__dropdown" data-dropdown-area="" style="display: none;">
                                                                            <li><a href="">PRADA</a></li>
                                                                        </ul>--}}
                                </li>
                                @foreach($mencategories as $key => $mencategory)
                                @if($key < 5)
                                <li><a href="{{url('customer/product/list').'/1/'.$mencategory->category_id}}">
                                    {{$mencategory->category_name}}
                                </a></li>
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
                <li><a href="{{url('customer/user')}}"><i class="c-icon header__nav-secondary__icon--user"></i></a></li>
                <li><a href="{{url('')}}/customer/user/favourite"><i class="c-icon header__nav-secondary__icon--favorite"></i></a></li>
                <li><a href="{{url('')}}/customer/user/cart"><i class="c-icon header__nav-secondary__icon--wish"></i></a></li>
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
    </div>
    <!--/.l-content-->
    <div class="footer">
        <div class="footer__banner">
            <div class="l-wrapper">
                <ul class="footer__banner__list">
                    <li><a href="#"><img src="{{url('')}}/images/footer__banner-01@2x.png" alt="" width="254"></a></li>
                    <li><a href="{{url('')}}/customer/user/signup"><img src="{{url('')}}/images/footer__banner-02@2x.png" alt="" width="254"></a></li>
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
                                    <li><a href="{{url('customer/product/list').'/'.$tcategory->category_id.'/'.$mencategory->category_id}}">{{$maincategory->category_name}}</a></li>
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
    </script>
</div>
</body>

</html>
<!--/.l-body-->