@extends('layouts.customer_layout')
@section('content')
    <style type="text/css">
      .l-content{
        padding: 0 !important;
      }
    </style>
    <div class="brandtop__visual">
        <h1 class="brandtop__visual__logo">
            <span>yoshiokubo<br>GROUNDFLOOR</span>
        </h1>
        <figure class="brandtop__visual__figure">
            <img src="{{url('images/brands/'.$brand->figure)}}" alt="" class="u-pc"> 
        </figure>
    </div>
    <div class="brandtop">
        <div class="brandtop__main">
            <div class="brandtop__main__text inview inview-fadeUp">
              <p>{{$brand->overview}}</p>
            </div>
            <!--/.brandtop__main__text-->
            <div class="brandtop__main__button inview inview-fadeUp"><a href="{{ Request::url() . '/item' }}" class="c-button c-button--submit">VIEW ALL ITEMS</a></div>
            <!--/.brandtop__main__button-->
        </div>
        <!--/.brandtop__main-->          
        <div class="brandtop__history">
            <h2 class="c-hd-02 inview inview-fadeUp">BRAND HISTORY<span>ブランドヒストリー</span></h2>
            <ul class="brandtop__history__items">   
                @foreach ($brand->histories as $history)
                <li class="brandtop__history__item inview inview-fadeUp">
                    <div class="brandtop__history__item__year">{{$history->year}}</div>
                    <div class="brandtop__history__item__data">
                      <figure class="brandtop__history__item__data__figure">
                        <img src="{{ url( 'images/history/'.$history->figure ) }}" alt="">
                      </figure>
                      <h3 class="brandtop__history__item__data__hd">{{$history->head}}</h3>
                      <div class="brandtop__history__item__data__text">
                        <p>{{$history->description}}</p>
                      </div>
                      <!--/.brandtop__history__item__data__text-->
                    </div>
                </li>
                <!--/.brandtop__history__list__item-->
                @endforeach
            </ul>
            <!--/.brandtop__history__list-->
        </div>
        <!--/.brandtop__history-->
        <div class="brandtop__designer">
            <h2 class="c-hd-02 inview inview-fadeUp">DESIGNERS<span>歴代デザイナー</span></h2>
            <ul class="brandtop__designer__items">
              @foreach ($brand->designers as $designer)
              <li class="brandtop__designer__item inview inview-fadeUp">
                <figure class="brandtop__designer__item__figure">
                  <img src="{{url( 'images/designer/'.$designer->figure )}}" alt=""></figure>
                <h3 class="brandtop__designer__item__name">{{$designer->designer}}</h3>
                <div class="brandtop__designer__item__text">{{$designer->period}}</div>
                <div class="brandtop__designer__item__text">{{$designer->birthplace}}</div>
              </li>
              @endforeach
            </ul>
            <!--/.brandtop__designer__items-->
        </div>
        <!--/.brandtop__designer-->
        <div class="brandtop__news">
            <h2 class="c-hd-02 inview inview-fadeUp">NEWS<span>新着情報</span></h2>
            <div class="c-news">
              <div class="c-news__items">
                @foreach ($brand->newses as $news) 
                <div class="c-news__item inview inview-fadeUp">
                  <figure class="c-news__item__figure">
                    <a href="#">
                      <img src="{{url( 'images/news/'.$news->figure )}}" alt="">
                    </a>
                  </figure>
                  <dl class="c-news__item__data"><dt class="c-news__item__data__date">{{$news->date}}</dt>
                    <dd class="c-news__item__data__text">{{$news->news}}</dd>
                  </dl>
                </div>
                <!--/.c-news__item-->
                @endforeach
              </div>
              <!--/.c-news__items-->
            </div>
            <!--/.c-news-->
        </div>
        <!--/.brandtop__news-->
    </div>
    <!--/.brandtop-->    
@endsection