<!doctype html>
<html lang="ja">

  <head>
    <meta charset="utf-8">
    <title>fanaRtic | {{ __('customer.探しているアイテム') }}</title>
    <meta name="viewport" content="width=device-width">
    <meta name="format-detection" content="telephone=no">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link href="{{url('')}}/css/hiraku.min.css" rel="stylesheet">
    <link href="{{url('')}}/css/style.css" rel="stylesheet">
    <script src="{{url('')}}/js/vendor/jquery-2.1.4.min.js"></script>
  </head>

  <body>
    <div class="l-body">
      <header class="header">
        <div class="header__inner">
          <div class="header__button" data-header-button></div>
          <div class="header__button-search" data-header-search-button><i class="c-icon header__button-search__icon"></i></div>
          <div class="header__sitename"><a href="/">fanaRtic</a></div>
          <div class="header__nav-primary-wrap" data-header-primary>
            <ul class="header__nav-primary">
              <li><span class="header__nav-primary__button" data-header-primary__button>WOMEN</span>
                <div class="header__nav-primary__list">
                  <ul class="header__nav-primary__list__menu">
                    <li><a href="#">{{ __('common.新規') }}</a></li>
                    <li><a href="#">BAG</a></li>
                    <li><a href="#">ACCESSORY</a></li>
                    <li><a href="#">{{ __('common.文学') }}</a></li>
                    <li><a href="#">{{ __('common.販売') }}</a></li>
                    <li><a href="#">{{ __('header.ブランド') }}</a></li>
                    <li><a href="#">APPAREL</a></li>
                    <li><a href="#">SHOES</a></li>
                    <li><a href="#">SNEAKER</a></li>
                  </ul>
                </div>
              </li>
              <li><span class="header__nav-primary__button is-current" data-header-primary__button>MEN</span>
                <div class="header__nav-primary__list">
                  <ul class="header__nav-primary__list__menu">
                    <li><a href="#">{{ __('common.新規') }}</a></li>
                    <li><a href="#">{{ __('header.ブランド') }}</a></li>
                    <li><a href="#">APPAREL</a></li>
                    <li><a href="#">SHOES</a></li>
                    <li><a href="#">SNEAKER</a></li>
                    <li><a href="#">BAG</a></li>
                    <li><a href="#">ACCESSORY</a></li>
                    <li><a href="#">{{ __('common.文学') }}</a></li>
                    <li><a href="#">{{ __('common.販売') }}</a></li>
                  </ul>
                </div>
              </li>
            </ul>
          </div>
          <ul class="header__nav-secondary">
            <li><a href="#"><i class="c-icon header__nav-secondary__icon--user"></i></a></li>
            <li><a href="#"><i class="c-icon header__nav-secondary__icon--favorite"></i></a></li>
            <li><a href="#"><i class="c-icon header__nav-secondary__icon--wish"></i></a></li>
          </ul>
          <div class="header__search" data-header-search><span class="header__search__close" data-header-search__close></span>
            <div class="header__search__input-wrapper">
              <form action="post"><input type="text" class="header__search__input" placeholder="商品名・ブランド名・フリーワードで検索"> <button class="header__search__submit"><i></i></button></form>
            </div>
            <!--/.header__search__input-wrapper-->
          </div>
          <!--/.header__search-->
        </div>
        <!--/.header__inner-->
      </header>
      <!--/.header-->
      <div class="l-content">
        <ul class="c-breadcrumbs">
          <li><a href="/">HOME</a></li>
          <li>探しているアイテム</li>
        </ul>
        <!--/.c-breadcrumbs-->
        <h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--search"></i> 探しているアイテム</h1>
        <div class="members">
          <div class="members__column">
            <div class="members__column__content">
              <div class="c-items c-items--02">
                <div class="c-item c-item--02">
                  <div class="c-item__column">
                    <div class="c-item__column__figure">
                      <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png" alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                    <div class="c-item__column__data">
                      <ul class="c-item__data">
                        <li>graphic print sweatshirt</li>
                      </ul>
                      <div class="c-item__price"><strong>&yen;11,000</strong></div><button class="c-item__delete"><i class="c-icon c-item__delete__icon"></i>削除</button></div>
                    <!--/.c-item__column__data-->
                  </div>
                  <!--/.c-item__column-->
                </div>
                <!--/.c-item-->
                <div class="c-item c-item--02">
                  <div class="c-item__column">
                    <div class="c-item__column__figure">
                      <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png" alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                    <div class="c-item__column__data">
                      <ul class="c-item__data">
                        <li>graphic print sweatshirt</li>
                      </ul>
                      <div class="c-item__price"><strong>&yen;11,000</strong></div><button class="c-item__delete"><i class="c-icon c-item__delete__icon"></i>削除</button></div>
                    <!--/.c-item__column__data-->
                  </div>
                  <!--/.c-item__column-->
                </div>
                <!--/.c-item-->
                <div class="c-item c-item--02">
                  <div class="c-item__column">
                    <div class="c-item__column__figure">
                      <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png" alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                    <div class="c-item__column__data">
                      <ul class="c-item__data">
                        <li>graphic print sweatshirt</li>
                      </ul>
                      <div class="c-item__price"><strong>&yen;11,000</strong></div><button class="c-item__delete"><i class="c-icon c-item__delete__icon"></i>削除</button></div>
                    <!--/.c-item__column__data-->
                  </div>
                  <!--/.c-item__column-->
                </div>
                <!--/.c-item-->
                <div class="c-item c-item--02">
                  <div class="c-item__column">
                    <div class="c-item__column__figure">
                      <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png" alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                    <div class="c-item__column__data">
                      <ul class="c-item__data">
                        <li>graphic print sweatshirt</li>
                      </ul>
                      <div class="c-item__price"><strong>&yen;11,000</strong></div><button class="c-item__delete"><i class="c-icon c-item__delete__icon"></i>削除</button></div>
                    <!--/.c-item__column__data-->
                  </div>
                  <!--/.c-item__column-->
                </div>
                <!--/.c-item-->
                <div class="c-item c-item--02">
                  <div class="c-item__column">
                    <div class="c-item__column__figure">
                      <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png" alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                    <div class="c-item__column__data">
                      <ul class="c-item__data">
                        <li>graphic print sweatshirt</li>
                      </ul>
                      <div class="c-item__price"><strong>&yen;11,000</strong></div><button class="c-item__delete"><i class="c-icon c-item__delete__icon"></i>削除</button></div>
                    <!--/.c-item__column__data-->
                  </div>
                  <!--/.c-item__column-->
                </div>
                <!--/.c-item-->
                <div class="c-item c-item--02">
                  <div class="c-item__column">
                    <div class="c-item__column__figure">
                      <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png" alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                    <div class="c-item__column__data">
                      <ul class="c-item__data">
                        <li>graphic print sweatshirt</li>
                      </ul>
                      <div class="c-item__price"><strong>&yen;11,000</strong></div><button class="c-item__delete"><i class="c-icon c-item__delete__icon"></i>削除</button></div>
                    <!--/.c-item__column__data-->
                  </div>
                  <!--/.c-item__column-->
                </div>
                <!--/.c-item-->
                <div class="c-item c-item--02">
                  <div class="c-item__column">
                    <div class="c-item__column__figure">
                      <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png" alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                    <div class="c-item__column__data">
                      <ul class="c-item__data">
                        <li>graphic print sweatshirt</li>
                      </ul>
                      <div class="c-item__price"><strong>&yen;11,000</strong></div><button class="c-item__delete"><i class="c-icon c-item__delete__icon"></i>削除</button></div>
                    <!--/.c-item__column__data-->
                  </div>
                  <!--/.c-item__column-->
                </div>
                <!--/.c-item-->
                <div class="c-item c-item--02">
                  <div class="c-item__column">
                    <div class="c-item__column__figure">
                      <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png" alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                    <div class="c-item__column__data">
                      <ul class="c-item__data">
                        <li>graphic print sweatshirt</li>
                      </ul>
                      <div class="c-item__price"><strong>&yen;11,000</strong></div><button class="c-item__delete"><i class="c-icon c-item__delete__icon"></i>削除</button></div>
                    <!--/.c-item__column__data-->
                  </div>
                  <!--/.c-item__column-->
                </div>
                <!--/.c-item-->
              </div>
              <!--/.c-items c-items--02-->
              <hr class="c-hr">
              <div class="l-button"><a href="#" class="c-button c-button--submit">アイテムを追加する</a></div>
              <!--/.l-button-->
            </div>
            <!--/.members__column__content-->
            <div class="members__column__nav">
              <ul class="members__nav">
                <li><a href="#">お気に入りアイテム</a></li>
                <li><a href="#">探しているアイテム</a></li>
                <li><a href="#">注文履歴</a></li>
                <li><a href="#">ポイント</a></li>
                <li><a href="#">会員情報</a>
                  <ul class="members__nav__sub">
                    <li><a href="#">会員情報変更</a></li>
                    <li><a href="#">お届け先の変更・追加</a></li>
                    <li><a href="#">クレジットカード情報</a></li>
                    <li><a href="#">メールマガジン</a></li>
                    <li><a href="#">退会手続き</a></li>
                  </ul>
                </li>
              </ul>
            </div>
            <!--/.members__column__nav-->
          </div>
          <!--/.members__column-->
        </div>
        <!--/.members-->
      </div>
      <!--/.l-content-->
      <div class="footer">
        <div class="footer__banner">
          <div class="l-wrapper">
            <ul class="footer__banner__list">
              <li><a href="#"><img src="{{url('')}}/images/footer__banner-01@2x.png" alt="" width="254"></a></li>
              <li><a href="#"><img src="{{url('')}}/images/footer__banner-02@2x.png" alt="" width="254"></a></li>
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
                <li><a href="#">berg</a></li>
                <li><a href="#">Icosae</a></li>
                <li><a href="#">Ih Nom Uh Nit</a></li>
                <li><a href="#">Iiuvo</a></li>
                <li><a href="#">Ileana Makri</a></li>
                <li><a href="#">Ill.I</a></li>
                <li><a href="#">Illesteva</a></li>
                <li><a href="#">Incarnation</a></li>
                <li><a href="#">ian Belts</a></li>
                <li><a href="#">Ivo Scunzani</a></li>
                <li><a href="#">Incotex</a></li>
                <li><a href="#">Individual Sentimen</a></li>
                <li><a href="#">Inês Torcato</a></li>
                <li><a href="#">Ink</a></li>
                <li><a href="#">Instrmnt</a></li>
                <li><a href="#">Intoxicated</a></li>
                <li><a href="#">Invicta</a></li>
                <li><a href="#">Iris Von Arnim</a></li>
                <li><a href="#">Irresistor</a></li>
                <li><a href="#">Isaac Reina</a></li>
                <li><a href="#">berg</a></li>
                <li><a href="#">Icosae</a></li>
                <li><a href="#">Ih Nom Uh Nit</a></li>
                <li><a href="#">Iiuvo</a></li>
                <li><a href="#">Ileana Makri</a></li>
                <li><a href="#">Ill.I</a></li>
                <li><a href="#">Illesteva</a></li>
                <li><a href="#">Incarnation</a></li>
                <li><a href="#">ian Belts</a></li>
                <li><a href="#">Ivo Scunzani</a></li>
                <li><a href="#">berg</a></li>
                <li><a href="#">Icosae</a></li>
                <li><a href="#">Ih Nom Uh Nit</a></li>
                <li><a href="#">Iiuvo</a></li>
                <li><a href="#">Ileana Makri</a></li>
                <li><a href="#">Ill.I</a></li>
                <li><a href="#">Illesteva</a></li>
                <li><a href="#">Incarnation</a></li>
                <li><a href="#">ian Belts</a></li>
                <li><a href="#">Ivo Scunzani</a></li>
              </ul>
            </div>
            <div class="footer__nav__column">
              <div class="footer__nav__column__col">
                <h2 class="footer__nav__hd" data-accordion="">CATEGORY</h2>
                <div class="footer__nav__list-wrap">
                  <ul class="footer__nav__list footer__nav__list--col02">
                    <li><a href="#">Hoodies & Sweatshirts</a></li>
                    <li><a href="#">Jackets & Coats</a></li>
                    <li><a href="#">Jeans</a></li>
                    <li><a href="#">Jumpers & Cardigans</a></li>
                    <li><a href="#">Loungewear</a></li>
                    <li><a href="#">Multipacks</a></li>
                    <li><a href="#">Polo shirts</a></li>
                    <li><a href="#">Socks</a></li>
                    <li><a href="#">Suits</a></li>
                    <li><a href="#">Swimwear</a></li>
                    <li><a href="#">T-Shirts & Vests</a></li>
                    <li><a href="#">Tracksuits</a></li>
                    <li><a href="#">Trousers & Chinos</a></li>
                    <li><a href="#">Underwear</a></li>
                    <li><a href="#">Shirts</a></li>
                    <li><a href="#">Shorts</a></li>
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
      <script src="{{url('')}}/js/plugins.js"></script>
      <script src="{{url('')}}/js/script.js"></script>
    </div>
  </body>

</html>
<!--/.l-body-->
