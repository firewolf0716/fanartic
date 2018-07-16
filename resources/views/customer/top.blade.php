@extends('layouts.customer_layout')

@section('content')
<div class="product-list__column">
    <div class="product-list__column__content" style="flex-basis:1920px">
      <!--/.l-column l-column--control-->
      <div class="c-items c-items--04">
        @foreach($malls as $mall)
        <div class="c-item c-item--02">
          <div class="c-item__column">
            <div class="c-item__column__figure">
              <figure class="c-item__figure"><a href="{{url($mall->mall_name_en)}}"><img src="http://placehold.jp/340x440.png" alt=""></a></figure>
            </div>
            <!--/.c-item__column__figure-->
            <div class="c-item__column__data">
              <h3 class="c-item__name">{{$mall->mall_name}}</h3>
            </div>
            <!--/.c-item__column__data-->
          </div>
          <!--/.c-item__column-->
        </div>
        @endforeach
        <!--/.c-item-->
      </div>
      <!--/.c-items c-items--04-->
    </div>
    <!--/.product-list__column-->
  </div>
  <!--/.product-list-->
@endsection