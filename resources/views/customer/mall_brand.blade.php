@extends('layouts.customer_top')

@section('content')
    <div class="top__visual">
        <div class="top__visual__inner">
            <h1 class="top__visual__logo"><img src="/images/top/top__visual__logo.png" alt="or Not Fill in the Blank">
            </h1>
            <div class="top__visual__text">熱狂的ファッション愛好家のための<br>ECプラットフォーム</div>
        </div>
        <!--/.top__visual__inner--><a href="#brand" class="top__visual__scroll"><span>scroll</span><i></i></a>
        <div class="top__visual__bg"
             data-topslider='[
             "/images/top/top__visual__bg.jpg",
             "http://placehold.jp/444566/444444/1500x670.png?text=bg02",
             "http://placehold.jp/444655/444444/1500x670.png?text=bg03"
             ]'></div>
    </div>
    <!--/.top__visual-->
    <div class="top">
        <div class="top__brand" id="brand">
            <h2 class="c-hd-02">BRANDS<span>ブランド一覧</span></h2>
            <div class="c-brand-list">
                <ul class="c-brand-list__items">
                    @foreach($brands as $brand)
                        <li class="c-brand-list__item inview">
                            <a href="{{Request::url().'/'.$brand->brand_name_en}}" class="c-brand-list__link">
                                <figure class="c-brand-list__item__figure"><img
                                            src="http://placehold.jp/466x660.png?text=" alt="visvim"></figure>
                                <div class="c-brand-list__item__name">{{$brand->brand_name}}</div>
                            </a>
                        </li>
                    @endforeach
                </ul>
                <!--/.c-brand-list__items-->
            </div>
            <!--/.c-brand-list-->
            <div class="l-button inview inview-fadeUp"><a href="#" class="c-button c-button--submit">VIEW ALL</a></div>
        </div>
        <!--/.top__brands-->
        <div class="c-cpn-list">
            <ul class="c-cpn-list__items">
                <li class="c-cpn-list__item inview">
                    <figure class="c-cpn-list__item__figure"><a href="#"><img src="/images/top/top__cpn--01.jpg" alt=""></a>
                    </figure>
                    <div class="c-cpn-list__item__button"><a href="#"
                                                             class="c-button c-button--submit c-button--color--01">VIEW
                            DETAIL</a></div>
                </li>
                <li class="c-cpn-list__item inview">
                    <figure class="c-cpn-list__item__figure"><a href="#"><img src="/images/top/top__cpn--02.jpg" alt=""></a>
                    </figure>
                    <div class="c-cpn-list__item__button"><a href="#"
                                                             class="c-button c-button--submit c-button--color--02">VIEW
                            DETAIL</a></div>
                </li>
                <li class="c-cpn-list__item inview">
                    <figure class="c-cpn-list__item__figure"><a href="#"><img src="/images/top/top__cpn--03.jpg" alt=""></a>
                    </figure>
                    <div class="c-cpn-list__item__button"><a href="#"
                                                             class="c-button c-button--submit c-button--color--03">VIEW
                            DETAIL</a></div>
                </li>
                <li class="c-cpn-list__item inview">
                    <figure class="c-cpn-list__item__figure"><a href="#"><img src="/images/top/top__cpn--04.jpg" alt=""></a>
                    </figure>
                    <div class="c-cpn-list__item__button"><a href="#"
                                                             class="c-button c-button--submit c-button--color--03">VIEW
                            DETAIL</a></div>
                </li>
                <li class="c-cpn-list__item inview">
                    <figure class="c-cpn-list__item__figure"><a href="#"><img src="/images/top/top__cpn--05.jpg" alt=""></a>
                    </figure>
                    <div class="c-cpn-list__item__button"><a href="#"
                                                             class="c-button c-button--submit c-button--color--03">VIEW
                            DETAIL</a></div>
                </li>
            </ul>
            <div class="l-button inview inview-fadeUp"><a href="#" class="c-button c-button--submit">VIEW ALL ITEMS</a>
            </div>
        </div>
        <!--/.c-cpn-list-->
    </div>
    <!--/.top__news__items-->
    </div>
    <!--/.top__news-->
    <!--/.top-->

@endsection