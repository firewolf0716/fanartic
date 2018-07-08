@extends('layouts.customer_layout')
@section('content')
    <ul class="c-breadcrumbs">
        <li><a href="/">HOME</a></li>
        <li>会員情報</li>
    </ul>
    <!--/.c-breadcrumbs-->
    <h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--history"></i> 会員加入</h1>
    {!! Form::open(array('id' => 'form_user','url'=>'customer/users/signuppost','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
    <div class="members" style="padding:10px">
        <div class="members__column">
        <div class="members__column__content">
            <section class="c-box">
            <h3 class="c-box__hd" style="margin-Left:1px">会員登録情報</h3>
            <div class="c-box__content">
                <div class="c-form__row">
                <div class="c-form__row__label">お名前<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input">
                    <div class="c-form__colum">
                    <div class="c-form__colum__col"><input type="text" class="c-form__input" name="" value="山田"></div>
                    <div class="c-form__colum__col"><input type="text" class="c-form__input" name="" value="太郎"></div>
                    </div>
                </div>
                </div>
                <!--/.c-form__row-->
                <div class="c-form__row">
                <div class="c-form__row__label">お名前（カナ）<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input">
                    <div class="c-form__colum">
                    <div class="c-form__colum__col"><input type="text" class="c-form__input" name="" value="ヤマダ"></div>
                    <div class="c-form__colum__col"><input type="text" class="c-form__input" name="" value="タロウ"></div>
                    </div>
                </div>
                </div>
                <!--/.c-form__row-->
                <div class="c-form__row">
                    <div class="c-form__row__label">性別</div>
                    <div class="c-form__row__input">
                        <label class="c-form__radio"><input type="radio" name="sex" value="01" checked><i></i>男性</label> 
                        <label class="c-form__radio"><input type="radio" name="sex" value="02"><i></i>女性</label> 
                        <label class="c-form__radio"><input type="radio" name="sex" value="03"><i></i>その他</label>
                    </div>
                </div>
                <!--/.c-form__row-->
                <div class="c-form__row">
                <div class="c-form__row__label">生年月日</div>
                <div class="c-form__row__input"><label class="c-form__select c-form__select--birthday--year"><span class="c-form__select__box"><select name="" id=""><option value="">1998</option><option value="">1999</option><option value="">2000</option></select></span><span class="u-pc">年</span></label> <label class="c-form__select c-form__select--birthday--month"><span class="c-form__select__box"><select name="" id=""><option value="">5</option><option value="">6</option><option value="">12</option></select></span><span class="u-pc">月</span></label> <label class="c-form__select c-form__select--birthday--day"><span class="c-form__select__box"><select name="" id=""><option value="">30</option><option value="">31</option></select></span><span class="u-pc">日</span></label></div>
                </div>
                <!--/.c-form__row-->
                <div class="c-form__row">
                <div class="c-form__row__label">郵便番号<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input"><input id="zipcode" type="text" class="c-form__input c-form__input--address" name="" value="140-0004"> 
                <button type="button" class="c-button c-button--primary" onClick="getAddress()">住所自動入力</button></div>
                </div>
                <!--/.c-form__row-->
                <div class="c-form__row">
                <div class="c-form__row__label">都道府県<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input">
                    <div class="c-form__colum">
                    <div class="c-form__colum__col"><input id="province" type="text" class="c-form__input" name="" value="東京"></div>
                    </div>
                </div>
                </div>
                <!--/.c-form__row-->
                <div class="c-form__row">
                <div class="c-form__row__label">市町区村<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input"><input id="county" type="text" class="c-form__input" name="" value="渋谷区円山町"></div>
                </div>
                <!--/.c-form__row-->
                <div class="c-form__row">
                <div class="c-form__row__label">番地<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input"><input id="address" type="text" class="c-form__input" name="" value="1-1-10"></div>
                </div>
                <!--/.c-form__row-->
                <div class="c-form__row">
                <div class="c-form__row__label">TEL<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input"><input type="tel" class="c-form__input c-form__input--tel" name="" value="080"> <input type="tel" class="c-form__input c-form__input--tel" name="" value="0000"> <input type="tel" class="c-form__input c-form__input--tel" name="" value="0000"></div>
                </div>
                <!--/.c-form__row-->
                <hr class="c-hr">
                <div class="c-form__row">
                <div class="c-form__row__label">メールアドレス<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input"><input type="email" class="c-form__input" name="" value="aaaaaaa@gmail.com"></div>
                </div>
                <!--/.c-form__row-->
                <div class="c-form__row c-form__row--top">
                <div class="c-form__row__label">パスワード<span class="c-form__require">必須</span></div>
                <div class="c-form__row__input">
                    <div class="c-form__row__input__block"><input type="password" class="c-form__input" name="" value="" placeholder="半角英数字8~12文字以上"></div>
                    <div class="c-form__row__input__block"><input type="password" class="c-form__input" name="" value="" placeholder="確認のため再度入力してください"></div>
                </div>
                </div>
                <!--/.c-form__row-->
                <hr class="c-hr">
                <div class="l-button"><button class="c-button c-button--submit">提出する</button></div>
                <!--/.l-button-->
            </div>
            <!--/.c-box__content-->
            </section>
            <!--/.c-box-->
        </div>
        <!--/.members__column__content-->

        <!--/.members__column__nav-->
        </div>
        <!--/.members__column-->
    </div>
    {{ Form::close() }}
    <!--/.members-->
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
    </script>
@endsection