@extends('layouts.customer_layout')
@section('content')
<h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--checkout"></i> 注文内容の確認</h1>
<div class="cart">
    <div class="cart__column">
    <div class="cart__column__content">
        <ol class="cart__checkout__flow">
        <li class="cart__checkout__flow__step--01"><i class="c-icon"></i>情報入力</li>
        <li class="cart__checkout__flow__step--02 is-curent"><i class="c-icon"></i>注文確認</li>
        <li class="cart__checkout__flow__step--03"><i class="c-icon"></i>注文完了</li>
        </ol>
        <!--/.cart__checkout__flow-->
        <hr class="c-hr">
        @foreach($cartitems as $item)
        <div class="l-column l-column--cart">
            <div class="l-column--cart__item">
                <div class="c-item c-item--01">
                <div class="c-item__column">
                    <div class="c-item__column__figure">
                            @php 
                                $pro_img  = $images[$item->cart_id];
                                $prod_path = url('').'/images/products/'.$pro_img;
                            @endphp
                    <figure class="c-item__figure"><a href="{{url('customer/product/detail/'.$item->product_id)}}"><img src="{{$prod_path}}" alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                    <div class="c-item__column__data">
                    <h3 class="c-item__name">{{$item->brand_name}}</h3>
                    <ul class="c-item__data">
                        <li>{{$item->product_name}}</li>
                        <li>カラー：{{$colorname[$item->cart_id]->color_name}}</li>
                        <li>サイズ：{{$sizename[$item->cart_id]->size_name}}</li>
                    </ul>
                    <div class="c-item__price u-sp"><strong>&yen;{{number_format($item->product_price_sale)}}</strong></div>
                    </div>
                    <!--/.c-item__column__data-->
                </div>
                <!--/.c-item__column-->
                </div>
                <!--/.c-item-->
            </div>
            <div class="l-column--cart__price u-pc">&yen;{{number_format($item->product_price_sale)}}</div>
            <div class="l-column--cart__button"><a href="{{url('user/cart')}}" class="c-button c-button--secondary">変更</a></div>
        </div>
        <!--/.l-column l-column--cart-->
        <hr class="c-hr">
        @endforeach
        <section class="c-box">
        <h3 class="c-box__hd">配送先住所</h3>
        <div class="c-box__content">
            <div class="l-column l-column--list l-column--top">
            <div class="l-column--list__name">{{$addrobj->address_name}}</div>
            <!--/.l-column--list__name-->
            <div class="l-column--list__data">〒{{$addrobj->address_postalcode}}<br>@php
                                if($addrobj->address_state == 1){
                                    echo $addrobj->address_province.$addrobj->address_county.$addrobj->address_address_jp;
                                } else {
                                    echo $addrobj->state_name.' '.$addrobj->address_city.' '.$addrobj->address_address_ex;
                                }
                            @endphp
                        <br>{{$addrobj->address_phone}}</div>
            <!--/.l-column--list__data-->
            <div class="l-column--list__button"><a href="{{url('user/address_edit/'.$addrobj->id)}}" class="c-button c-button--sub">配送先情報を編集</a></div>
            <!--/.l-column--list__button-->
            </div>
            <!--/.l-column l-column--list-->
        </div>
        <!--/.c-box__content-->
        </section>
        <!--/.c-box-->
        <section class="c-box">
        <h3 class="c-box__hd">お支払い方法</h3>
        <div class="c-box__content">
            <div class="l-column l-column--list l-column--top">
            <div class="l-column--list__data">カード番号：{{str_repeat('*', 12).$creditobj->card_token}}<br>有効期限：{{$creditobj->card_validdate}}</div>
            <!--/.l-column--list__data-->
            <div class="l-column--list__button"><a href="{{url('user/credit_edit/'.$creditobj->id)}}" class="c-button c-button--sub">支払い方法を編集</a></div>
            <!--/.l-column--list__button-->
            </div>
            <!--/.l-column l-column--list-->
        </div>
        <!--/.c-box__content-->
        </section>
        <!--/.c-box-->
    </div>
    <!--/.cart__column__content-->
    <div class="cart__column__shipping" data-js-sticky="">
        <div class="cart__shipping">
        <table class="cart__shipping__data">
            <tr>
            <td>商品合計</td>
            <td class="cart__shipping__data__price">￥{{number_format($total['sum'])}}</td>
            </tr>
            <tr>
            <td>送料</td>
            <td class="cart__shipping__data__price">￥0</td>
            </tr>
            <tr>
            <td>支払い手数料</td>
            <td class="cart__shipping__data__price">￥0</td>
            </tr>
        </table>
        <table class="cart__shipping__data cart__shipping__data--total">
            <tr>
            <td>合計</td>
            <td class="cart__shipping__data__price cart__shipping__price"><strong>￥{{number_format($total['sum'])}}</strong></td>
            </tr>
        </table>
        <div class="cart__shipping__button"><a href="{{url('user/confirm_order')}}" class="c-button c-button--submit c-button--full">注文を確定する</a></div>
        </div>
        <!--/.cart__shipping-->
    </div>
    <!--/.cart__column__shipping-->
    </div>
    <!--/.cart__column-->
</div>
<!--/.cart-->
@endsection