@extends('layouts.customer_layout')
@section('content')
<script src="https://www.paypalobjects.com/api/checkout.js"></script>
<h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--checkout"></i> {{ __('customer.注文内容の確認') }}</h1>
<div class="cart">
    <div class="cart__column">
    <div class="cart__column__content">
        <ol class="cart__checkout__flow">
        <li class="cart__checkout__flow__step--01"><i class="c-icon"></i>{{ __('customer.情報入力') }}</li>
        <li class="cart__checkout__flow__step--02 is-curent"><i class="c-icon"></i>{{ __('customer.注文確認') }}</li>
        <li class="cart__checkout__flow__step--03"><i class="c-icon"></i>{{ __('customer.注文完了') }}</li>
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
                                $pro_img  = $images[$item->id];
                                $prod_path = url('').'/images/products/'.$pro_img;
                            @endphp
                    <figure class="c-item__figure"><a href="{{url('product/detail/'.$item->product_id)}}"><img src="{{$prod_path}}" alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                    <div class="c-item__column__data">
                    <h3 class="c-item__name">{{$item->brand_name}}</h3>
                    <ul class="c-item__data">
                        <li>{{$item->product_name}}</li>
                        <li>{{ __('customer.カラー') }}：{{$colorname[$item->id]->color_name}}</li>
                        <li>{{ __('customer.サイズ') }}：{{$sizename[$item->id]->size_name}}</li>
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
        </div>
        <!--/.l-column l-column--cart-->
        <hr class="c-hr">
        @endforeach
        <section class="c-box">
        <h3 class="c-box__hd">{{ __('customer.配送先住所') }}</h3>
        <div class="c-box__content">
            @if ($addrobj)
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
            </div>
            <!--/.l-column l-column--list-->
            @endif
        </div>
        <!--/.c-box__content-->
        </section>
        <!--/.c-box-->
        <section class="c-box">
        <h3 class="c-box__hd">{{ __('customer.お支払い方法') }}</h3>
        <div class="c-box__content">
            <div class="l-column l-column--list l-column--top">
            <div class="l-column--list__data">
                @if($creditobj == 'paypal')
                @elseif ($creditobj)
                    カード番号：{{str_repeat('*', 12).$creditobj->card_no}}<br>有効期限：{{$creditobj->card_validdate}}
                @endif
            </div>
            <!--/.l-column--list__data-->
            </div>
            <!--/.l-column l-column--list-->
        </div>
        <!--/.c-box__content-->
        </section>
        <!--/.c-box-->
    </div>
    <!--/.cart__column__content-->
    <div class="cart__column__shipping">
        <div class="cart__shipping">
        <table class="cart__shipping__data">
            <tr>
            <td>{{ __('customer.商品合計') }}</td>
            <td class="cart__shipping__data__price">￥{{number_format($total['sum'])}}</td>
            </tr>
            <tr>
            <td>{{ __('customer.送料') }}</td>
            <td class="cart__shipping__data__price">￥0</td>
            </tr>
        </table>
        <table class="cart__shipping__data cart__shipping__data--total">
            <tr>
            <td>{{ __('customer.合計') }}</td>
            <td class="cart__shipping__data__price cart__shipping__price"><strong>￥{{number_format($total['sum'])}}</strong></td>
            </tr>
        </table>
        <div class="cart__shipping__button">
            @if($creditobj == 'paypal')
                <div id="paypal-button-container"></div>
            @elseif ($creditobj)
                <a id="a_next" href="{{url('user/confirm_order')}}"
                   class="c-button c-button--submit c-button--full">{{ __('customer.注文を確定する') }}</a>
            @endif
        </div>
        <p class="cart__shipping__back"><a href="{{url('user/checkflowinfo')}}">{{ __('customer.戻る') }}</a></p>
        </div>
        <!--/.cart__shipping-->
    </div>
    <!--/.cart__column__shipping-->
    </div>
    <!--/.cart__column-->
</div>
<script>
    paypal.Button.render({
        env: 'sandbox', // sandbox | production
        style: {
            label: 'paypal',
            size:  'medium',    // small | medium | large | responsive
            shape: 'rect',     // pill | rect
            color: 'blue',     // gold | blue | silver | black
            tagline: false
        },

        // PayPal Client IDs - replace with your own
        // Create a PayPal app: https://developer.paypal.com/developer/applications/create
        client: {
            sandbox:    'AZDxjDScFpQtjWTOUtWKbyN_bDt4OgqaF4eYXlewfBP4-8aqX3PiV8e1GWU6liB2CUXlkA59kJXE7M6R',
            production: '<insert production client id>'
        },

        // Show the buyer a 'Pay Now' button in the checkout flow
        commit: true,

        // payment() is called when the button is clicked
        payment: function(data, actions) {

            // Make a call to the REST api to create the payment
            return actions.payment.create({
                payment: {
                    transactions: [
                        {
                            amount: { total: "{{$total['sum']}}", currency: 'JPY' }
                        }
                    ]
                }
            });
        },

        // onAuthorize() is called when the buyer approves the payment
        onAuthorize: function(data, actions) {

            // Make a call to the REST api to execute the payment
            return actions.payment.execute().then(function() {
                window.alert('Payment Complete!');
                $('#a_next').prop('href', "{{url('user/confirm_order')}}");
            });
        }

    }, '#paypal-button-container');
</script>
<!--/.cart-->
@endsection
