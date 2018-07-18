@extends('layouts.customer_layout')
@section('content')
<h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--checkout"></i> 配送方法・お支払い方法</h1>
<div class="cart">
    <div class="cart__column">
    <div class="cart__column__content">
        <ol class="cart__checkout__flow">
        <li class="cart__checkout__flow__step--01 is-curent"><i class="c-icon"></i>情報入力</li>
        <li class="cart__checkout__flow__step--02"><i class="c-icon"></i>注文確認</li>
        <li class="cart__checkout__flow__step--03"><i class="c-icon"></i>注文完了</li>
        </ol>
        <!--/.cart__checkout__flow-->
        <section class="c-box">
        <h3 class="c-box__hd">配送先住所を選択</h3>
            {!! Form::open(array('id' => 'form_flow','url'=>'customer/user/flow_post_ac', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
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
                    <div class="l-column--list__button"><a href="{{url('customer/user/address_edit/'.$address->id)}}" class="c-button c-button--sub">配送先情報を編集</a></div>
                    <!--/.l-column--list__button-->
                    </div>
                    <!--/.l-column l-column--list-->
                </div>
                <!--/.c-form__row-->
                @endforeach
                <div data-checkopen__list="address">
                    <div class="c-form__row">
                    <div class="c-form__checkswitch"><label class="c-form__radio c-form__checkswitch__label" data-checkopen__list__radio="address"><input type="radio" name="address" value="addressNew"><i></i>別の住所を登録</label></div>
                    </div>
                    <!--/.c-form__row-->
                    <div data-checkopen__list__content="address">
                    <div class="c-form__row c-form__row--min">
                        <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                        <div class="l-column--half__col">
                            <div class="c-form__label">お名前</div>
                            <div class="c-form__row">
                            <div class="c-form__row__input">
                                <div class="c-form__colum"><input type="text" class="c-form__input" name="address_name" value=""></div>
                            </div>
                            </div>
                            <!--/.c-form__row-->
                        </div>
                        <!--/.l-column--half__col-->
                        <div class="l-column--half__col">
                            <div class="c-form__label">お名前（カナ）</div>
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
                            <div class="c-form__label">郵便番号</div>
                            <div class="c-form__row">
                            <div class="c-form__row__input"><input type="text" class="c-form__input c-form__input--address" name="zipcode" value=""> <button class="c-button c-button--sub">住所自動入力</button></div>
                            </div>
                            <!--/.c-form__row-->
                        </div>
                        <!--/.l-column--half__col-->
                        <div class="l-column--half__col">
                            <div class="c-form__label">都道府県</div>
                            <div class="c-form__row">
                            <div class="c-form__row__input"><input type="text" class="c-form__input" name="province" value=""></div>
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
                            <div class="c-form__label">市町区村</div>
                            <div class="c-form__row">
                            <div class="c-form__row__input"><input type="text" class="c-form__input" name="county" value=""></div>
                            </div>
                            <!--/.c-form__row-->
                        </div>
                        <!--/.l-column--half__col-->
                        <div class="l-column--half__col">
                            <div class="c-form__label">番地</div>
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
                            <div class="c-form__label">電話番号</div>
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
            <h3 class="c-box__hd">お支払い方法を選択</h3>
            <div class="c-box__content" data-checkopen="payment">
                <div class="c-form__row" data-checkopen__list="payment">
                <div class="c-form__checkswitch"><label class="c-form__radio c-form__checkswitch__label" data-checkopen__list__radio="payment"><input type="radio" name="payment" value="credit" checked=""><i></i>クレジットカード</label>
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
                        <div class="l-column--list-left__col">{{str_repeat('*', 12).$card->card_token}}</div>
                        <div class="l-column--list-left__col">{{$card->card_validdate}}</div>
                        </div>
                        <!--/.l-column l-column--list-left-->
                    </div>
                    <!--/.c-form__row-->
                    @endforeach
                    <div data-checkopen__list="credit">
                        <div class="c-form__row">
                            <div class="c-form__checkswitch">
                                <label class="c-form__radio c-form__checkswitch__label" data-checkopen__list__radio="credit">
                                    <input type="radio" name="paymentCredit" value="creditnew"><i></i>別のカードを追加
                                </label>
                            </div>
                        </div>
                        <!--/.c-form__row-->
                        <div data-checkopen__list__content="credit">
                        <div class="c-form__row">
                            <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                            <div class="l-column--half__col">
                                <div class="c-form__label">カード番号</div>
                                <div class="c-form__row"><input type="text" class="c-form__input" name="card_no" value=""></div>
                                <!--/.c-form__row-->
                            </div>
                            <div class="l-column--half__col">
                                <div class="c-form__label">カード名義</div>
                                <div class="c-form__row"><input type="text" class="c-form__input" name="card_name" value=""></div>
                                <!--/.c-form__row-->
                            </div>
                            </div>
                            <!--/.l-column l-column--half-->
                        </div>
                        <!--/.c-form__row-->
                        <div class="c-form__row">
                            <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                            <div class="l-column--half__col">
                                <div class="c-form__label">有効期限</div>
                                <div class="c-form__row">
                                    <div class="c-form__row__input">
                                        <label class="c-form__select c-form__select--birthday--year">
                                            <span class="c-form__select__box">
                                                <select name="card_year" id="">
                                                    <option value="">----</option>
                                                </select>
                                            </span>
                                            <span class="u-pc">年</span>
                                        </label> 
                                        <label class="c-form__select c-form__select--birthday--month02">
                                            <span class="c-form__select__box">
                                                <select name="card_month" id="">
                                                    <option value="">----</option>
                                                </select>
                                            </span>
                                            <span class="u-pc">月</span>
                                        </label>
                                    </div>
                                </div>
                                <!--/.c-form__row-->
                            </div>
                            <div class="l-column--half__col">
                                <div class="c-form__label">セキュリティ番号</div>
                                <div class="c-form__row"><input type="text" class="c-form__input c-form__input--tel" name="card_token" value=""></div>
                                <!--/.c-form__row-->
                            </div>
                            </div>
                            <!--/.l-column l-column--half-->
                        </div>
                        <!--/.c-form__row-->
                        </div>
                        <!--/data-checkopen__list-->
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
                        <input type="radio" name="paymentCredit" value="paypal"><i></i>
                        <img src="../common/images/checkout__payment--paypal.png" alt="PayPal" width="135"></label></div>
                </div>
                <!--/.c-form__row-->
            </div>
            <!--/.c-box__content-->
            {{ Form::close() }}
        </section>
        <!--/.c-box-->
    </div>
    <!--/.cart__column__content-->
    <div class="cart__column__shipping" data-js-sticky="">
        <div class="cart__shipping">
        <table class="cart__shipping__data">
            <tr>
            <td>商品合計</td>
            <td class="cart__shipping__data__price">￥{{$total['sum']}}</td>
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
            <td class="cart__shipping__data__price cart__shipping__price"><strong>¥{{$total['sum']}}</strong></td>
            </tr>
        </table>
        <div class="cart__shipping__button"><a class="c-button c-button--submit c-button--full" onClick="onSubmit()">次へ進む</a></div>
        </div>
        <!--/.cart__shipping-->
    </div>
    <!--/.cart__column__shipping-->
    </div>
    <!--/.cart__column-->
</div>
<!--/.cart-->
<script>
    function onSubmit(){
        $('#form_flow').submit();
    }
</script>
@endsection