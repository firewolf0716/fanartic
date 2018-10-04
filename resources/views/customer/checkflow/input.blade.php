@extends('layouts.customer_layout')
@section('content')
<script src="https://checkout.stripe.com/checkout.js"></script>
<script src="https://www.paypalobjects.com/api/checkout.js"></script>
<h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--checkout"></i> {{ __('customer.配送方法・お支払い方法') }}</h1>
<div class="cart">
    <div class="cart__column">
    <div class="cart__column__content">
        <ol class="cart__checkout__flow">
        <li class="cart__checkout__flow__step--01 is-curent"><i class="c-icon"></i>{{ __('customer.情報入力') }}</li>
        <li class="cart__checkout__flow__step--02"><i class="c-icon"></i>{{ __('customer.注文確認') }}</li>
        <li class="cart__checkout__flow__step--03"><i class="c-icon"></i>{{ __('customer.注文完了') }}</li>
        </ol>
        <!--/.cart__checkout__flow-->
        <section class="c-box">
        <h3 class="c-box__hd">{{ __('customer.配送先住所を選択') }}</h3>
            {!! Form::open(array('id' => 'form_flow','url'=>'user/checkflowinfoPost', 'novalidate')) !!}
            <div class="c-box__content">
                <div data-checkopen="address">
                @foreach($addresses as $address)
                <div class="c-form__row">
                    <div class="l-column l-column--list l-column--top" data-checkopen__list="address">
                    <div class="l-column--list__name">
                        <div class="c-form__checkswitch">
                            <label class="c-form__radio c-form__checkswitch__label" data-checkopen__list__radio="address">
                                <input type="radio" name="address" value="{{$address->id}}"
                                @if($address->address_default == 1)
                                    checked=""
                                @endif
                                ><i></i>{{$address->address_name}}
                            </label>
                        </div>
                    </div>
                    <!--/.l-column--list__name-->
                    <div class="l-column--list__data">〒{{$address->address_postalcode}}
                        <br>@php
                                if($address->address_state == 1){
                                    echo $address->address_province.$address->address_county.$address->address_address_jp;
                                } else {
                                    echo $address->state_name.' '.$address->address_city.' '.$address->address_address_ex;
                                }
                            @endphp
                        <br>{{$address->address_phone}}</div>
                    <!--/.l-column--list__data-->
                    </div>
                    <!--/.l-column l-column--list-->
                </div>
                <!--/.c-form__row-->
                @endforeach
                <div data-checkopen__list="address">
                    <div class="c-form__row">
                    <div class="c-form__checkswitch"><label class="c-form__radio c-form__checkswitch__label" data-checkopen__list__radio="address"><input type="radio" name="address" value="addressNew"><i></i>{{ __('customer.別の住所を登録') }}</label></div>
                    </div>
                    <!--/.c-form__row-->
                    <div data-checkopen__list__content="address">
                    <div class="c-form__row c-form__row--min">
                        <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                        <div class="l-column--half__col">
                            <div class="c-form__label">{{ __('customer.お名前') }}</div>
                            <div class="c-form__row">
                            <div class="c-form__row__input">
                                <div class="c-form__colum"><input type="text" class="c-form__input" name="address_name" value=""></div>
                            </div>
                            </div>
                            <!--/.c-form__row-->
                        </div>
                        <!--/.l-column--half__col-->
                        <div class="l-column--half__col">
                            <div class="c-form__label">{{ __('customer.お名前（カナ）') }}</div>
                            <div class="c-form__row">
                            <div class="c-form__row__input">
                                <div class="c-form__colum"><input type="text" class="c-form__input" name="address_name_kana" value=""></div>
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
                            <div class="c-form__label">{{ __('customer.郵便番号') }}</div>
                            <div class="c-form__row">
                            <div class="c-form__row__input"><input type="text" class="c-form__input c-form__input--address" name="zipcode" id="zipcode" value=""> <button type="button" class="c-button c-button--sub" onClick="getAddress()">{{ __('customer.住所自動入力') }}</button></div>
                            </div>
                            <!--/.c-form__row-->
                        </div>
                        <!--/.l-column--half__col-->
                        <div class="l-column--half__col">
                            <div class="c-form__label">{{ __('customer.都道府県') }}</div>
                            <div class="c-form__row">
                            <div class="c-form__row__input"><input type="text" class="c-form__input" name="province" id="province" value=""></div>
                            </div>
                            <!--/.c-form__row-->
                        </div>
                        <!--/.l-column--half__col-->
                        </div>
                        <!--/.l-column l-column--half-->
                    </div>
                    <!--/.c-form__row-->
                    <div class="c-form__row">
                        <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                        <div class="l-column--half__col">
                            <div class="c-form__label">{{ __('customer.市町区村') }}</div>
                            <div class="c-form__row">
                            <div class="c-form__row__input"><input type="text" class="c-form__input" name="county" id="county" value=""></div>
                            </div>
                            <!--/.c-form__row-->
                        </div>
                        <!--/.l-column--half__col-->
                        <div class="l-column--half__col">
                            <div class="c-form__label">{{ __('customer.番地') }}</div>
                            <div class="c-form__row">
                            <div class="c-form__row__input"><input type="text" class="c-form__input" name="address_ex" value=""></div>
                            </div>
                            <!--/.c-form__row-->
                        </div>
                        <!--/.l-column--half__col-->
                        </div>
                        <!--/.l-column l-column--half-->
                    </div>
                    <!--/.c-form__row-->
                    <div class="c-form__row c-form__row--min">
                        <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                        <div class="l-column--half__col">
                            <div class="c-form__label">{{ __('customer.電話番号') }}</div>
                            <div class="c-form__row"><input type="tel" class="c-form__input c-form__input--tel" name="tel1" value="">
                                <input type="tel" class="c-form__input c-form__input--tel" name="tel2" value="">
                                <input type="tel" class="c-form__input c-form__input--tel" name="tel3" value=""></div>
                            <!--/.c-form__row-->
                        </div>
                        <!--/.l-column l-column--half-->
                        </div>
                        <!--/.l-column-->
                    </div>
                    <!--/.c-form__row-->
                    </div>
                    <!--/data-checkopen__list__content-->
                </div>
                <!--/data-checkopen__list-->
                </div>
                <!--/data-checkopen-->
            </div>
            <!--/.c-box__content-->
            </section>
            <!--/.c-box-->
            <section class="c-box">
            <h3 class="c-box__hd">{{ __('customer.お支払い方法を選択') }}</h3>
            <div class="c-box__content" data-checkopen="payment">
                <div class="c-form__row" data-checkopen__list="payment">
                    <div class="c-form__checkswitch">
                        <label class="c-form__radio c-form__checkswitch__label" data-checkopen__list__radio="payment">
                            <input type="radio" name="payment" value="credit" checked=""><i></i>{{ __('customer.クレジットカード') }}
                        </label>
                        <div class="c-form__checkswitch__inner" data-checkopen__list__content="payment" data-checkopen="credit">
                            @foreach($cards as $key => $card)
                            <div class="c-form__row" data-checkopen__list="credit">
                                <div class="l-column l-column--list-left">
                                <div class="l-column--list-left__col">
                                    <div class="c-form__checkswitch">
                                        <label class="c-form__radio c-form__checkswitch__label" data-checkopen__list__radio="credit">
                                            <input type="radio" name="paymentCredit" value="{{$card->id}}"
                                            @if($key == 0)
                                            checked
                                            @endif
                                            ><i></i>{{$card->card_owner}}
                                        </label>
                                    </div>
                                </div>
                                <div class="l-column--list-left__col">{{str_repeat('*', 12).$card->card_no}}</div>
                                <div class="l-column--list-left__col">{{$card->card_validdate}}</div>
                                </div>
                                <!--/.l-column l-column--list-left-->
                            </div>
                            <!--/.c-form__row-->
                            @endforeach
                            <div data-checkopen__list="credit">
                                    <div class="c-form__checkswitch">
                                        <label class="c-form__radio c-form__checkswitch__label" data-checkopen__list__radio="credit">
                                            <input type="radio" name="paymentCredit" value="creditnew" id="other_card"><i></i>{{ __('customer.別のカードを追加') }}
                                        </label>
                                        <div class="c-form__checkswitch__inner" data-checkopen__list__content="credit"
                                             data-checkopen="credit">

                                            <div class="c-form__row">
                                                <div class="c-form__row__label">{{ __('customer.カード番号') }}<span class="c-form__require">{{ __('customer.必須') }}</span></div>
                                                <div class="c-form__row__input">
                                                    <div class="c-form__colum">
                                                        <div class="c-form__colum__col"><input type="text" class="c-form__input" name="no" value="" required></div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="c-form__row">
                                                <div class="c-form__row__label">{{ __('customer.カード名義') }}<span class="c-form__require">{{ __('customer.必須') }}</span></div>
                                                <div class="c-form__row__input">
                                                    <div class="c-form__colum">
                                                        <div class="c-form__colum__col"><input type="text" class="c-form__input" name="owner" value="" required></div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="c-form__row">
                                                <div class="c-form__row__label">{{ __('customer.セキュリティ番号') }}<span class="c-form__require">{{ __('customer.必須') }}</span></div>
                                                <div class="c-form__row__input">
                                                    <div class="c-form__colum">
                                                        <div class="c-form__colum__col"><input type="text" class="c-form__input c-form__input--tel" name="token" value="" maxlength="4" required></div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="c-form__row">
                                                <div class="c-form__row__label">{{ __('customer.有効期限') }}<span class="c-form__require">{{ __('customer.必須') }}</span></div>
                                                <div class="c-form__row__input">
                                                    <label class="c-form__select c-form__select--birthday--year">
                    <span class="c-form__select__box">
                        <select name="year" id="year" required>
                            @for($i = 2018; $i <= 2022; $i++)
                                <option value="{{$i}}">{{$i}}</option>
                            @endfor
                        </select>
                    </span>
                        <span class="u-pc">{{ __('customer.年') }}</span></label>
                    <label class="c-form__select c-form__select--birthday--month">
                    <span class="c-form__select__box">
                        <select name="month" id="month" required>
                            @for($i = 1; $i <= 12; $i++)
                                <option value="{{$i}}">{{$i}}</option>
                            @endfor
                        </select>
                    </span><span class="u-pc">{{ __('customer.月') }}</span></label>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                            </div>
                        <!--/data-checkopen-->
                        </div>
                        <!--/.c-form__checkswitch__inner-->
                    </div>
                </div>
                <!--/.c-form__row-->
                <div class="c-form__row" data-checkopen__list="payment">
                    <div class="c-form__checkswitch">
                        <label class="c-form__radio c-form__checkswitch__label" data-checkopen__list__radio="payment">
                            <input type="radio" name="payment" value="paypal"><i></i>
                            <img src="{{url('')}}/images/checkout__payment--paypal.png" alt="PayPal" width="135">
                        </label>
                    </div>
                </div>
                <!--/.c-form__row-->
            </div>
            <!--/.c-box__content-->
            {{ Form::hidden('card_token', '', array('id' => 'card_token'))}}
            {{ Form::close() }}
        </section>
        <!--/.c-box-->
    </div>
    <!--/.cart__column__content-->
    <div class="cart__column__shipping" data-js-sticky="">
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
            <tr>
            <td>{{ __('customer.支払い手数料') }}</td>
            <td class="cart__shipping__data__price">￥0</td>
            </tr>
        </table>
        <table class="cart__shipping__data cart__shipping__data--total">
            <tr>
            <td>{{ __('customer.合計') }}</td>
            <td class="cart__shipping__data__price cart__shipping__price"><strong>¥{{number_format($total['sum'])}}</strong></td>
            </tr>
        </table>
        <div class="cart__shipping__button"><a class="c-button c-button--submit c-button--full" onClick="onSubmit()">{{ __('customer.次へ進む') }}</a></div>
        <p class="cart__shipping__back"><a href="{{url('user/cart')}}">{{ __('customer.戻る') }}</a></p>
        </div>
        <!--/.cart__shipping-->
    </div>
    <!--/.cart__column__shipping-->
    </div>
    <!--/.cart__column-->
</div>
<!--/.cart-->
<script>
    var handler = StripeCheckout.configure({
        key: 'pk_test_XXbN9QSy1TgyoQHe2i5l4JsK',
        image: 'https://stripe.com/img/documentation/checkout/marketplace.png',
        locale: 'auto',
        token: function(token) {
            // You can access the token ID with `token.id`.
            // Get the token ID to your server-side code for use.
            $('#card_token').val(token.id);
            $('#form_flow').submit();
        }
    });

    function onSubmit(){
        // $('#form_flow').submit();
        if($('#other_card').is(':checked')){
            handler.open({
                name: 'Fanartic',
                email:"{{$email}}",
                allowRememberMe: false
            });
        } else {
            $('#form_flow').submit();
        }
    }
    function getAddress(){
        var postalCode = $('#zipcode').val();
        var purl = 'http://dev.virtualearth.net/REST/v1/Locations?countryRegion=JP&postalCode='
                    + postalCode
                    + '&o=json&key=AoyhuvvuNi0LJYoJhgs0NIl4sTLl_aB_ew7NZr3bPhw6yLk1bIXywCbRVwhEIPfB&c=ja';
        $.ajax({
            type:"get",
            url: purl,
            success: function(result){
                var res = result.resourceSets[0].resources[0].name;
                if(res.length < 8){
                    alert('{{ __('customer.郵便番号が間違っている.') }}');
                    return;
                }
                $('#province').val(result.resourceSets[0].resources[0].address.adminDistrict);
                $('#county').val(res.substring($('#zipcode').val().length + $('#province').val().length + 1));
                $('#address').val('');
            }
        });
    }

    // Close Checkout on page navigation:
    window.addEventListener('popstate', function() {
        handler.close();
    });

        // Render the PayPal button

   </script>
@endsection
