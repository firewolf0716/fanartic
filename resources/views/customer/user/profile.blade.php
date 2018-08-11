@extends('layouts.customer_layout')
@section('content')
    <ul class="c-breadcrumbs">
        <li><a href="/">HOME</a></li>
        <li>会員情報</li>
    </ul>
    <!--/.c-breadcrumbs-->
    <h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--history"></i> 会員加入</h1>
    {!! Form::open(array('id' => 'form_user','url'=>'user/profilepost','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
    <div class="members">
        <div class="members__column">
            <div class="members__column__content">
                <section class="c-box">
                <h3 class="c-box__hd" style="margin-Left:1px">会員登録情報</h3>
                <div class="c-box__content">
                    <div class="c-form__row">
                    <div class="c-form__row__label">お名前<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input">
                        <div class="c-form__colum">
                        <div class="c-form__colum__col"><input type="text" class="c-form__input" name="first_name" value="{{$customer->customer_name_first}}" required></div>
                        <div class="c-form__colum__col"><input type="text" class="c-form__input" name="second_name" value="{{$customer->customer_name_second}}" required></div>
                        </div>
                    </div>
                    </div>
                    <!--/.c-form__row-->
                    <div class="c-form__row">
                    <div class="c-form__row__label">お名前（カナ）<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input">
                        <div class="c-form__colum">
                        <div class="c-form__colum__col"><input type="text" class="c-form__input" name="first_name_kana" value="{{$customer->customer_name_kana_first}}" required></div>
                        <div class="c-form__colum__col"><input type="text" class="c-form__input" name="second_name_kana" value="{{$customer->customer_name_kana_second}}" required></div>
                        </div>
                    </div>
                    </div>
                    <!--/.c-form__row-->
                    <div class="c-form__row">
                        <div class="c-form__row__label">性別</div>
                        <div class="c-form__row__input">
                            <label class="c-form__radio"><input type="radio" name="sex" value="01" 
                                @if($customer->customer_gender == 01)
                                    checked
                                @endif
                                ><i></i>男性</label> 
                            <label class="c-form__radio"><input type="radio" name="sex" value="02"
                                @if($customer->customer_gender == 02)
                                    checked
                                @endif><i></i>女性</label> 
                            <label class="c-form__radio"><input type="radio" name="sex" value="03"
                                @if($customer->customer_gender == 03)
                                    checked
                                @endif><i></i>その他</label>
                        </div>
                    </div>
                    <!--/.c-form__row-->
                    <div class="c-form__row">
                    <div class="c-form__row__label">生年月日</div>
                    <div class="c-form__row__input">
                        <label class="c-form__select c-form__select--birthday--year">
                        <span class="c-form__select__box">
                            <select name="birthday_year" id="birthday_year" required>
                                @for($i = 1960; $i <= 2010; $i++)
                                <option value="{{$i}}"
                                    @if($birth[0] == $i)
                                        selected
                                    @endif
                                    >{{$i}}</option>
                                @endfor
                            </select>
                        </span>
                        <span class="u-pc">年</span></label> 
                        <label class="c-form__select c-form__select--birthday--month">
                        <span class="c-form__select__box">
                            <select name="birthday_month" id="birthday_month" required>
                                @for($i = 1; $i <= 12; $i++)
                                <option value="{{$i}}"
                                    @if($birth[1] == $i)
                                        selected
                                    @endif>{{$i}}</option>
                                @endfor
                            </select>
                        </span><span class="u-pc">月</span></label> 
                        <label class="c-form__select c-form__select--birthday--day">
                        <span class="c-form__select__box">
                            <select name="birthday_day" id="birthday_day" required>
                                @for($i = 1; $i <= 31; $i++)
                                <option value="{{$i}}"
                                    @if($birth[2] == $i)
                                        selected
                                    @endif>{{$i}}</option>
                                @endfor
                            </select>
                        </span><span class="u-pc">日</span></label></div>
                    </div>
                    <!--/.c-form__row-->
                    <div class="c-form__row">
                    <div class="c-form__row__label">郵便番号<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input">
                        <input id="zipcode" type="text" class="c-form__input c-form__input--address" name="zipcode" value="{{$customer->customer_postalcode}}" required> 
                        <button type="button" class="c-button c-button--primary" onClick="getAddress()">住所自動入力</button></div>
                    </div>
                    <!--/.c-form__row-->
                    <div class="c-form__row">
                    <div class="c-form__row__label">都道府県<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input">
                        <div class="c-form__colum">
                        <div class="c-form__colum__col"><input id="province" type="text" class="c-form__input" name="province" value="{{$customer->customer_province}}" required></div>
                        </div>
                    </div>
                    </div>
                    <!--/.c-form__row-->
                    <div class="c-form__row">
                    <div class="c-form__row__label">市町区村<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input"><input id="county" type="text" class="c-form__input" name="county" value="{{$customer->customer_county}}" required></div>
                    </div>
                    <!--/.c-form__row-->
                    <div class="c-form__row">
                    <div class="c-form__row__label">番地<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input"><input id="address" type="text" class="c-form__input" name="address" value="{{$customer->customer_address_jp}}" required></div>
                    </div>
                    <!--/.c-form__row-->
                    <div class="c-form__row">
                    <div class="c-form__row__label">TEL<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input">
                        <input type="tel" class="c-form__input c-form__input--tel" name="tel1" value="{{$phone[0]}}" required> 
                        <input type="tel" class="c-form__input c-form__input--tel" name="tel2" value="{{$phone[1]}}" required> 
                        <input type="tel" class="c-form__input c-form__input--tel" name="tel3" value="{{$phone[2]}}" required></div>
                    </div>
                    <!--/.c-form__row-->
                    <hr class="c-hr">
                    <div class="c-form__row">
                    <div class="c-form__row__label">メールアドレス<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input">
                        <div class="c-form__row__input__block">
                            <input type="email" class="c-form__input" name="email"
                                   value="{{$customer->customer_email}}" disabled>
                        </div>
                        <p>メールアドレスは変更できません</p>
                    </div>
                    </div>
                    <!--/.c-form__row-->
                    <div class="c-form__row c-form__row--top">
                    <div class="c-form__row__label">パスワード<span class="c-form__require">必須</span></div>
                    <div class="c-form__row__input">
                        <p class="c-form__row__input__block">新しいパスワード</p>
                        <div class="c-form__row__input__block"><input id='password' type="password" class="c-form__input" name="password" value="" placeholder="半角英数字8~12文字以上"></div>
                        <div class="c-form__row__input__block"><input id='passwordc' type="password" class="c-form__input" name="" value="" placeholder="確認のため再度入力してください"></div>
                    </div>
                    </div>
                    <!--/.c-form__row-->
                    <hr class="c-hr">
                    <div class="l-button"><button type="button" class="c-button c-button--submit" onClick="onSubmit()">変更する</button></div>
                    <!--/.l-button-->
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
                <li><a>会員情報</a>
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
    {{ Form::close() }}
    <!--/.members-->
    </div>
    <script>
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
        function onSubmit(){
            $('#form_user').parsley();
            if($('#password').val() != $('#passwordc').val()){
                return;
            }
            $('#form_user').submit();
        }
    </script>
@endsection