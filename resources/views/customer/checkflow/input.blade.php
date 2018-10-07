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
                                @if($address->is_default == 1)
                                    checked
                                @endif
                                ><i></i>{{$address->name}}
                            </label>
                        </div>
                    </div>
                    <!--/.l-column--list__name-->
                    <div class="l-column--list__data">
                        @php
                            if($address->country == 'JP'){
                                echo "〒".$address->zipcode."\n";
                                echo $address->province_jp.$address->city_jp.$address->address_jp;
                            } else {
                                echo $countries[$address->country].' '.$address->city.' '.$address->address_ex;
                            }
                        @endphp
                        <br>{{$address->phone}}</div>
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
                        <div class="c-form__row{{ $errors->has('name') ? ' has-error' : '' }}">
                            <div class="c-form__row__label">{{ __('customer.名前') }}<span class="c-form__require">{{ __('customer.必須') }}</span></div>
                            <div class="c-form__row__input">
                                <div class="c-form__colum">
                                    <div class="c-form__colum__col"><input type="text" class="c-form__input" name="name"
                                                                           value="{{ old('name') }}"></div>
                                </div>
                                @if ($errors->has('name'))
                                    <span class="help-block">{{ $errors->first('name')}}</span>
                                @endif
                            </div>
                        </div>
                        <!--/.c-form__row-->
                        <div class="c-form__row{{ $errors->has('phone') ? ' has-error' : '' }}">
                            <div class="c-form__row__label">{{ __('customer.電話番号') }}<span class="c-form__require">{{ __('customer.必須') }}</span></div>
                            <div class="c-form__row__input">
                                <input type="tel" class="c-form__input c-form__input--tel" name="tel1" value="{{ old('tel1') }}">
                                <input type="tel" class="c-form__input c-form__input--tel" name="tel2" value="{{ old('tel2') }}">
                                <input type="tel" class="c-form__input c-form__input--tel" name="tel3" value="{{ old('tel3') }}">
                            </div>
                            @if ($errors->has('phone'))
                                <span class="help-block">{{ $errors->first('phone')}}</span>
                            @endif
                        </div>
                        <!--/.c-form__row-->
                        <div class="c-form__row{{ $errors->has('country') ? ' has-error' : '' }}">
                            <div class="c-form__row__label">{{ __('customer.国') }}<span class="c-form__require">{{ __('customer.必須') }}</span></div>
                            <div class="c-form__row__input">
                                <div class="c-form__row__input">
                                    <label class="c-form__select c-form__select--birthday--year">
                        <span class="c-form__select__box">
                            <select name="country" id="country" onChange="onCountryChanged()">
                                @foreach($countries as $code => $country)
                                    <option value="{{ $code }}" @if($code == old('country', 'JP')) selected @endif>{{
                                    $country }}</option>
                                @endforeach
                            </select>
                        </span>
                                    </label>
                                </div>
                            </div>
                            @if ($errors->has('country'))
                                <span class="help-block">{{ $errors->first('country')}}</span>
                            @endif
                        </div>
                        <div id="address_abroad" style="display:none">
                            <div class="c-form__row{{ $errors->has('city') ? ' has-error' : '' }}">
                                <div class="c-form__row__label">{{ __('customer.都市') }}<span class="c-form__require">{{ __('customer.必須') }}</span></div>
                                <div class="c-form__colum">
                                    <div class="c-form__row__input"><input type="text" class="c-form__input" name="city" value="{{ old('city') }}"></div>
                                </div>
                                @if ($errors->has('city'))
                                    <span class="help-block">{{ $errors->first('city')}}</span>
                                @endif
                            </div>
                            <!--/.c-form__row-->
                            <div class="c-form__row{{ $errors->has('address_ex') ? ' has-error' : '' }}">
                                <div class="c-form__row__label">{{ __('customer.以降の住所') }}<span class="c-form__require">{{ __('customer.必須') }}</span></div>
                                <div class="c-form__row__input">
                                    <div class="c-form__colum">
                                        <input type="text" class="c-form__input" name="address_ex" value="{{ old('address_ex') }}">
                                    </div>
                                </div>
                                @if ($errors->has('address_ex'))
                                    <span class="help-block">{{ $errors->first('address_ex')}}</span>
                                @endif
                            </div>
                            <!--/.c-form__row-->
                        </div>
                        <!--/.c-form__row-->
                        <div id="address_home" style="display:block">
                            <div class="c-form__row{{ $errors->has('zipcode') ? ' has-error' : '' }}">
                                <div class="c-form__row__label">郵便番号<span class="c-form__require">必須</span></div>
                                <div class="c-form__row__input">
                                    <div class="c-form__colum">
                                        <input type="text" class="c-form__input c-form__input--address" id="zipcode"
                                               name="zipcode" value="{{ old('zipcode') }}">
                                        <button type="button" class="c-button c-button--primary" onClick="getAddress()">住所自動入力</button>
                                    </div>
                                </div>
                                @if ($errors->has('zipcode'))
                                    <span class="help-block">{{ $errors->first('zipcode')}}</span>
                                @endif
                            </div>
                            <!--/.c-form__row-->
                            <div class="c-form__row{{ $errors->has('province_jp') ? ' has-error' : '' }}">
                                <div class="c-form__row__label">{{ __('customer.都道府県') }}<span class="c-form__require">{{ __('customer.必須') }}</span></div>
                                <div class="c-form__colum">
                                    <div class="c-form__row__input">
                                        <div class="c-form__colum__col"><input type="text" class="c-form__input" name="province_jp" id="province_jp" value="{{ old('province_jp') }}"></div>
                                    </div>
                                </div>
                                @if ($errors->has('province_jp'))
                                    <span class="help-block">{{ $errors->first('province_jp')}}</span>
                                @endif
                            </div>
                            <!--/.c-form__row-->
                            <div class="c-form__row{{ $errors->has('city_jp') ? ' has-error' : '' }}">
                                <div class="c-form__row__label">{{ __('customer.市町区村') }}<span class="c-form__require">{{ __('customer.必須') }}</span></div>
                                <div class="c-form__row__input">
                                    <div class="c-form__colum">
                                        <input type="text" class="c-form__input" name="city_jp" id="city_jp" value="{{ old('city_jp') }}"></div>
                                </div>
                                @if ($errors->has('city_jp'))
                                    <span class="help-block">{{ $errors->first('city_jp')}}</span>
                                @endif
                            </div>
                            <!--/.c-form__row-->
                            <div class="c-form__row{{ $errors->has('address_jp') ? ' has-error' : '' }}">
                                <div class="c-form__row__label">{{ __('customer.番地') }}<span class="c-form__require">{{ __('customer.必須') }}</span></div>
                                <div class="c-form__row__input">
                                    <div class="c-form__colum">
                                        <input type="text" class="c-form__input" name="address_jp" value="{{ old('address_jp') }}"></div>
                                </div>
                                @if ($errors->has('address_jp'))
                                    <span class="help-block">{{ $errors->first('address_jp')}}</span>
                                @endif
                            </div>
                            <!--/.c-form__row-->
                        </div>
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
    function onCountryChanged(){
        var country = $('#country').val();
        if(country == 'JP'){
            $('#address_home').css('display', 'block');
            $('#address_abroad').css('display', 'none');
        } else {
            $('#address_abroad').css('display', 'block');
            $('#address_home').css('display', 'none');
        }
    }
    function onSubmit(){
        // $('#form_address').parsley();
        $('#form_address').submit();
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
                $('#province_jp').val(result.resourceSets[0].resources[0].address.adminDistrict);
                $('#city_jp').val(res.substring($('#zipcode').val().length + $('#province_jp').val().length + 1));
                $('#address_jp').val('');
            }
        });
    }
</script>
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

    // Close Checkout on page navigation:
    window.addEventListener('popstate', function() {
        handler.close();
    });

        // Render the PayPal button

   </script>
@endsection
