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
        <h3 class="c-box__hd">メールマガジン設定</h3>
        {!! Form::open(array('id' => 'form_mmg','url'=>'user/magazine_post', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
        <div class="c-box__content">
            <div class="l-column l-column--row l-column--row--wide l-column--sp-single">
            <div class="l-column--row__label">登録中のメールアドレス</div>
            <div class="l-column--row__content">{{$email}}</div>
            </div>
            <!--/.l-column l-column--row-->
            <hr class="c-hr">
            <div class="l-column l-column--row l-column--row--wide l-column--sp-single">
            <div class="l-column--row__label">fanaRticメールマガジン
                <p class="c-text--note">セール情報やショップオープンなど最新情報を配信</p>
            </div>
            <div class="l-column--row__content">
                <label class="c-form__radio"><input type="radio" name="status" value="1" 
                    @if($mmg->magazine_status == 1) 
                        checked
                    @endif><i></i>購読</label> 
                <label class="c-form__radio c-text--attention"><input type="radio" name="status" value="0" 
                    @if($mmg->magazine_status == 0) 
                        checked
                    @endif><i></i>未購読</label></div>
            </div>
            <!--/.l-column l-column--row-->            
            <hr class="c-hr">
            <div class="l-button"><button class="c-button c-button--submit">購読内容を変更する</button></div>
            <!--/.l-button-->
        </div>
        {{ Form::close() }}
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
@endsection