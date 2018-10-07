@extends('layouts.customer_layout')
@section('content')
    <ul class="c-breadcrumbs">
        <li><a href="/">HOME</a></li>
        <li>{{ __('customer.会員情報') }}</li>
    </ul>
    <!--/.c-breadcrumbs-->
    <h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--history"></i>{{ __('customer.会員加入') }}
    </h1>
    {!! Form::open(array('id' => 'form_user','url'=>'user/profilepost','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
    <div class="members">
        <div class="members__column">
            @include('customer.include.sidebar')
            <div class="members__column__content">
                <section class="c-box">
                    <h3 class="c-box__hd" style="margin-Left:1px">{{ __('customer.会員登録情報') }}</h3>
                    <div class="c-box__content">
                        <div class="c-form__row @if($errors->has('customer_name_first') || $errors->has
                        ('customer_name_second')) has-error @endif">
                            <div class="c-form__row__label">{{ __('customer.お名前') }}<span
                                        class="c-form__require">{{ __('customer.必須') }}</span></div>
                            <div class="c-form__row__input">
                                <div class="c-form__colum">
                                    <div class="c-form__colum__col"><input type="text" class="c-form__input"
                                                                           name="customer_name_first"
                                                                           value="{{$customer->customer_name_first}}"
                                                                           required></div>
                                    <div class="c-form__colum__col"><input type="text" class="c-form__input"
                                                                           name="customer_name_second"
                                                                           value="{{$customer->customer_name_second}}"
                                                                           required></div>
                                </div>
                                @if ($errors->has('customer_name_first'))
                                    <span class="help-block">{{ $errors->first('customer_name_first')}}</span>
                                @endif
                                @if ($errors->has('customer_name_second'))
                                    <span class="help-block">{{ $errors->first('customer_name_second')}}</span>
                                @endif
                            </div>
                        </div>
                        <!--/.c-form__row-->
                        <div class="c-form__row">
                            <div class="c-form__row__label">{{ __('customer.性別') }}</div>
                            <div class="c-form__row__input">
                                <label class="c-form__radio"><input type="radio" name="sex" value="01"
                                                                    @if($customer->customer_gender == 01)
                                                                    checked
                                            @endif
                                    ><i></i>{{ __('header.メンズ') }}</label>
                                <label class="c-form__radio"><input type="radio" name="sex" value="02"
                                                                    @if($customer->customer_gender == 02)
                                                                    checked
                                            @endif><i></i>{{ __('header.レディース') }}</label>
                            </div>
                        </div>
                        <!--/.c-form__row-->
                        <div class="c-form__row">
                            <div class="c-form__row__label">{{ __('customer.生年月日') }}</div>
                            <div class="c-form__row__input">
                                <label class="c-form__select c-form__select--birthday--year">
                                    <div class="c-form__select__box">
                                        <select name="birthday_year" id="birthday_year" required>
                                            @for($i = 1960; $i <= 2010; $i++)
                                                <option value="{{$i}}" @if(old('birthday_year', $birth[0])==$i)
                                                selected @endif>{{$i}}</option>
                                            @endfor
                                        </select>
                                    </div>
                                    <span class="u-pc">{{ __('customer.年') }}</span></label>
                                <label class="c-form__select c-form__select--birthday--month">
                                    <div class="c-form__select__box">
                                        <select name="birthday_month" id="birthday_month" required>
                                            @for($i = 1; $i <= 12; $i++)
                                                <option value="{{$i}}" @if(old('birthday_month', $birth[1])==$i)
                                                selected @endif>{{$i}}</option>
                                            @endfor
                                        </select>
                                    </div>
                                    <span class="u-pc">{{ __('customer.月') }}</span></label>
                                <label class="c-form__select c-form__select--birthday--day">
                                    <div class="c-form__select__box">
                                        <select name="birthday_day" id="birthday_day" required>
                                            @for($i = 1; $i <= 31; $i++)
                                                <option value="{{$i}}" @if(old('birthday_day', $birth[2])==$i)
                                                selected @endif>{{$i}}</option>
                                            @endfor
                                        </select>
                                    </div>
                                    <span class="u-pc">{{ __('customer.日') }}</span></label></div>
                        </div>
                        <!--/.c-form__row-->
                        <hr class="c-hr">
                        <div class="c-form__row">
                            <div class="c-form__row__label">{{ __('auth.メールアドレス') }}<span
                                        class="c-form__require">{{ __('customer.必須') }}</span></div>
                            <div class="c-form__row__input">
                                <div class="c-form__row__input__block">
                                    <input type="email" class="c-form__input" name="email"
                                           value="{{$customer->email}}" disabled>
                                </div>
                            </div>
                        </div>
                        <!--/.c-form__row-->
                        {{--                        <div class="c-form__row c-form__row--top">
                                                    <div class="c-form__row__label">{{ __('auth.パスワード') }}<span class="c-form__require">{{ __('customer.必須') }}</span></div>
                                                    <div class="c-form__row__input">
                                                        <p class="c-form__row__input__block">{{ __('customer.新しいパスワード') }}</p>
                                                        <div class="c-form__row__input__block"><input id='password' type="password"
                                                                                                      class="c-form__input" name="password"
                                                                                                      value="" placeholder="{{ __('customer.半角英数字') }}8~12{{ __('customer.文字以上') }}">
                                                        </div>
                                                        <div class="c-form__row__input__block"><input id='passwordc' type="password"
                                                                                                      class="c-form__input" name="" value=""
                                                                                                      placeholder="{{ __('customer.確認のため再度入力してください') }}"></div>
                                                    </div>
                                                </div>
                                                <!--/.c-form__row-->--}}
                        <hr class="c-hr">
                        <div class="l-button">
                            <button type="submit" class="c-button c-button--submit">{{ __('customer.変更する') }}</button>
                        </div>
                        <!--/.l-button-->
                    </div>
                    <!--/.c-box__content-->
                </section>
                <!--/.c-box-->
            </div>
            <!--/.members__column__content-->
        </div>
        <!--/.members__column-->
    </div>
    {{ Form::close() }}
    <!--/.members-->
    </div>
@endsection
