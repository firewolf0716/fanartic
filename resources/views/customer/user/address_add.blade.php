@extends('layouts.customer_layout')
@section('content')
<ul class="c-breadcrumbs">
    <li><a href="/">HOME</a></li>
    <li>会員情報</li>
</ul>
<!--/.c-breadcrumbs-->
<h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--member"></i> 会員情報</h1>
<div class="members">
    <div class="members__column">
    <div class="members__column__content">
        <section class="c-box">
        <h3 class="c-box__hd">お届け先住所 追加</h3>
        <div class="c-box__content">
            <div class="c-form__row">
                <div class="c-form__row__label">名前<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input">
                    <div class="c-form__colum">
                        <div class="c-form__colum__col"><input type="text" class="c-form__input" name="" value=""></div>
                    </div>
                </div>
            </div>
            <!--/.c-form__row-->
            <div class="c-form__row">
                <div class="c-form__row__label">電話番号<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input">
                <input type="tel" class="c-form__input c-form__input--tel" name="" value=""> 
                <input type="tel" class="c-form__input c-form__input--tel" name="" value=""> 
                <input type="tel" class="c-form__input c-form__input--tel" name="" value=""></div>
            </div>
            <!--/.c-form__row-->
            <div class="c-form__row">
                <div class="c-form__row__label">郵便番号<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input"><input type="text" class="c-form__input c-form__input--address" name="" value=""> <button class="c-button c-button--sub">住所自動入力</button></div>
            </div>
            <!--/.c-form__row-->
            <div class="c-form__row">
                <div class="c-form__row__label">国<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input">
                    <label class="c-form__select c-form__select--birthday--year">
                        <span class="c-form__select__box">
                            <select name="state" id="state" onChange="onStateChanged()">
                                @foreach($states as $state)
                                <option value="{{$state->state_id}}">{{$state->state_code}}</option>
                                @endforeach
                            </select>
                        </span>
                    </label>
                </div>
            </div>
            <div id="address_abroad" style="display:none">
                <div class="c-form__row">
                    <div class="c-form__row__label">都市<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input"><input type="text" class="c-form__input" name="" value=""></div>
                </div>
                <!--/.c-form__row-->
                <div class="c-form__row">
                    <div class="c-form__row__label">以降の住所<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input"><input type="text" class="c-form__input" name="" value=""></div>
                </div>
                <!--/.c-form__row-->
            </div>
            <!--/.c-form__row-->
            <div id="address_home" style="display:block">
                <div class="c-form__row">
                    <div class="c-form__row__label">都道府県<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input">
                        <div class="c-form__colum">
                            <div class="c-form__colum__col"><input type="text" class="c-form__input" name="" value=""></div>
                        </div>
                    </div>
                </div>
                <!--/.c-form__row-->
                <div class="c-form__row">
                    <div class="c-form__row__label">市町区村<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input"><input type="text" class="c-form__input" name="" value=""></div>
                </div>
                <!--/.c-form__row-->
                <div class="c-form__row">
                    <div class="c-form__row__label">番地<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input"><input type="text" class="c-form__input" name="" value=""></div>
                </div>
                <!--/.c-form__row-->
            </div>
            <div class="c-form__row">
                <div class="c-form__row__label">デフォルト<span class="c-form__require">必須</span></div>
                <label class="c-form__checkbox"><input type="checkbox" name="magazine" value="off"><i></i>デフォルト</label>
            </div>
            <hr class="c-hr">
            <div class="l-button"><a href="#" class="c-button c-button--submit">お届け先を追加する</a></div>
            <!--/.l-button-->
        </div>
        <!--/.c-box__content-->
        </section>
        <!--/.c-box-->
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
<script>
    function onStateChanged(){
        var stateid = $('#state').val();
        if(stateid == 1){
            $('#address_home').css('display', 'block');
            $('#address_abroad').css('display', 'none');            
        } else {
            $('#address_abroad').css('display', 'block');
            $('#address_home').css('display', 'none');
        }
    }
</script>
@endsection
