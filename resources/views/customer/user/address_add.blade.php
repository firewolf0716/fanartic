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
            {!! Form::open(array('id' => 'form_address','url'=>'user/address_add_post')) !!}
            <div class="c-form__row{{ $errors->has('name') ? ' has-error' : '' }}">
                <div class="c-form__row__label">名前<span class="c-form__require">必須</span></div>
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
                <div class="c-form__row__label">電話番号<span class="c-form__require">必須</span></div>
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
                <div class="c-form__row__label">国<span class="c-form__require">必須</span></div>
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
                    <div class="c-form__row__label">都市<span class="c-form__require">必須</span></div>
                    <div class="c-form__colum">
                    <div class="c-form__row__input"><input type="text" class="c-form__input" name="city" value="{{ old('city') }}"></div>
                    </div>
                    @if ($errors->has('city'))
                        <span class="help-block">{{ $errors->first('city')}}</span>
                    @endif
                </div>
                <!--/.c-form__row-->
                <div class="c-form__row{{ $errors->has('address_ex') ? ' has-error' : '' }}">
                    <div class="c-form__row__label">以降の住所<span class="c-form__require">必須</span></div>
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
                    <div class="c-form__row__label">都道府県<span class="c-form__require">必須</span></div>
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
                    <div class="c-form__row__label">市町区村<span class="c-form__require">必須</span></div>
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
                    <div class="c-form__row__label">番地<span class="c-form__require">必須</span></div>
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
            <hr class="c-hr">
            <div class="l-button"><button type="button" class="c-button c-button--submit" onClick="onSubmit()">お届け先を追加する</button></div>
            <!--/.l-button-->
            {{ Form::close() }}
        </div>
        <!--/.c-box__content-->
        </section>
        <!--/.c-box-->
    </div>
    <!--/.members__column__content-->
        @include('customer.include.sidebar')
    </div>
    <!--/.members__column-->
</div>
<!--/.members-->
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
                    alert('郵便番号が間違っています。');
                    return;
                }
                $('#province_jp').val(result.resourceSets[0].resources[0].address.adminDistrict);
                $('#city_jp').val(res.substring($('#zipcode').val().length + $('#province_jp').val().length + 1));
                $('#address_jp').val('');
            }
        });
    }
</script>
@endsection
