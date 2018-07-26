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
            {!! Form::open(array('id' => 'form_address','url'=>'user/address_edit_post', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
            {{ Form::hidden('address_id', $address->id)}}
            <div class="c-form__row">
                <div class="c-form__row__label">名前<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input">
                    <div class="c-form__colum">
                        <div class="c-form__colum__col"><input type="text" class="c-form__input" name="name" value="{{$address->address_name}}" required></div>
                    </div>
                </div>
            </div>
            <!--/.c-form__row-->
            <div class="c-form__row">
                <div class="c-form__row__label">電話番号<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input">
                <input type="tel" class="c-form__input c-form__input--tel" name="tel1" value="{{$phone[0]}}" required> 
                <input type="tel" class="c-form__input c-form__input--tel" name="tel2" value="{{$phone[1]}}" required> 
                <input type="tel" class="c-form__input c-form__input--tel" name="tel3" value="{{$phone[2]}}" required></div>
            </div>
            <!--/.c-form__row-->
            <div class="c-form__row">
                <div class="c-form__row__label">郵便番号<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input"><input type="text" class="c-form__input c-form__input--address" name="zipcode" id="zipcode" value="{{$address->address_postalcode}}" required> 
                    <button type="button" class="c-button c-button--primary" onClick="getAddress()">住所自動入力</button>
                </div>
            </div>
            <!--/.c-form__row-->
            <div class="c-form__row">
                <div class="c-form__row__label">国<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input">
                    <label class="c-form__select c-form__select--birthday--year">
                        <span class="c-form__select__box">
                            <select name="state" id="state" onChange="onStateChanged()" required>
                                @foreach($states as $state)
                                <option value="{{$state->state_id}}"
                                    @if($address->address_state == $state->state_id)
                                        selected
                                    @endif
                                    >
                                    {{$state->state_code}}
                                </option>
                                @endforeach
                            </select>
                        </span>
                    </label>
                </div>
            </div>
            <div id="address_abroad" style="display:none">
                <div class="c-form__row">
                    <div class="c-form__row__label">都市<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input"><input type="text" class="c-form__input" name="city" value="{{$address->address_city}}" required></div>
                </div>
                <!--/.c-form__row-->
                <div class="c-form__row">
                    <div class="c-form__row__label">以降の住所<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input"><input type="text" class="c-form__input" name="address_ex" value="{{$address->address_address_ex}}" required></div>
                </div>
                <!--/.c-form__row-->
            </div>
            <!--/.c-form__row-->
            <div id="address_home" style="display:block">
                <div class="c-form__row">
                    <div class="c-form__row__label">都道府県<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input">
                        <div class="c-form__colum">
                            <div class="c-form__colum__col"><input type="text" class="c-form__input" name="province" id="province" value="{{$address->address_province}}" required></div>
                        </div>
                    </div>
                </div>
                <!--/.c-form__row-->
                <div class="c-form__row">
                    <div class="c-form__row__label">市町区村<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input"><input type="text" class="c-form__input" name="county" id="county" value="{{$address->address_county}}" required></div>
                </div>
                <!--/.c-form__row-->
                <div class="c-form__row">
                    <div class="c-form__row__label">番地<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input"><input type="text" class="c-form__input" name="address_jp" value="{{$address->address_address_jp}}" required></div>
                </div>
                <!--/.c-form__row-->
            </div>
            <hr class="c-hr">
            <div class="l-button"><button type="button" class="c-button c-button--submit" onClick="onSubmit()">お届け先を編集する</button></div>
            <!--/.l-button-->
            {{ Form::close() }}            
        </div>
        <!--/.c-box__content-->
        </section>
        <!--/.c-box-->
    </div>
    <!--/.members__column__content-->
    <div class="members__column__nav">
        <ul class="members__nav">
        <li><a href="{{url('user/favourite')}}">お気に入りアイテム</a></li>
        <li><a href="{{url('user/wish')}}">探しているアイテム</a></li>
        <li><a href="{{url('user/history')}}">注文履歴</a></li>
        <li><a href="{{url('user/score')}}">ポイント</a></li>
        <li><a href="#">会員情報</a>
            <ul class="members__nav__sub">
                <li><a href="{{url('user/profile')}}">会員情報変更</a></li>
                <li><a href="{{url('user/address')}}">お届け先の変更・追加</a></li>
                <li><a href="{{url('user/credit')}}">クレジットカード情報</a></li>
                <li><a href="{{url('user/magazine')}}">メールマガジン</a></li>
                <li><a href="{{url('user/signout')}}">退会手続き</a></li>
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
    $(function(){
        onStateChanged();
    });
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
                    alert('郵便番号が間違っている.');
                    return;
                }
                $('#province').val(result.resourceSets[0].resources[0].address.adminDistrict);
                $('#county').val(res.substring($('#zipcode').val().length + $('#province').val().length + 1));
                $('#address').val('');
            }
        });
    }
</script>
@endsection
