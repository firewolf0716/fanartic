@extends('layouts.customer_layout')
@section('content')
<ul class="c-breadcrumbs">
    <li><a href="/">HOME</a></li>
    <li>{{ __('customer.注文履歴') }}</li>
</ul>
<!--/.c-breadcrumbs-->
<h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--history"></i> {{ __('customer.注文履歴') }}</h1>
<div class="members">
    <div class="members__column">
    <div class="members__column__content">
        <section class="c-box">
        <h3 class="c-box__hd">{{ __('customer.注文内容の詳細') }}</h3>
        <div class="c-box__content">
            <div class="l-column l-column--row">
            <div class="l-column--row__label">{{ __('customer.注文番号') }}</div>
            <div class="l-column--row__content">{{$group->id}}</div>
            </div>
            <!--/.l-column l-column--row-->
            <div class="l-column l-column--row">
            <div class="l-column--row__label">{{ __('customer.注文日') }}</div>
            <div class="l-column--row__content">{{$group->history_date}}</div>
            </div>
            <!--/.l-column l-column--row-->
            <div class="l-column l-column--row">
            <div class="l-column--row__label">{{ __('customer.発送状況') }}</div>
            <div class="l-column--row__content"></div>
            </div>
            <!--/.l-column l-column--row-->
            <div class="l-column l-column--row">
            <div class="l-column--row__label">{{ __('customer.配達希望日時') }}</div>
            <div class="l-column--row__content"></div>
            </div>
            <!--/.l-column l-column--row-->
            <hr class="c-hr">
            <div class="l-column l-column--row">
            <div class="l-column--row__label">{{ __('customer.支払い方法') }}</div>
            <div class="l-column--row__content">{{ __('customer.クレジット（一括）') }}</div>
            </div>
            <!--/.l-column l-column--row-->
            <hr class="c-hr">
            <div class="l-column l-column--row">
            <div class="l-column--row__label">{{ __('customer.お届け先') }}</div>
            <div class="l-column--row__content">{{$group->address_name}}<br>〒{{$group->address_postalcode}}
                @php
                    if($group->address_state == 1){
                        echo $group->address_province.$group->address_county.$group->address_address_jp;
                    } else {
                        echo $group->state_name.' '.$group->address_city.' '.$group->address_address_ex;
                    }
                @endphp<br>{{$group->address_phone}}</div>
            </div>
            <!--/.l-column l-column--row-->
            <hr class="c-hr">
            <div class="l-column l-column--row l-column--sp-single">
            <div class="l-column--row__label">{{ __('customer.商品情報') }}</div>
            <div class="l-column--row__content">
                <div class="c-item c-item-01">
                    @foreach($items as $item)
                    <div class="c-item c-item--01">
                        <div class="c-item__column">
                        <div class="c-item__column__figure">
                            @php
                                $pro_img  = $images[$item->id];
                                $prod_path = url('').'/images/products/'.$pro_img;
                            @endphp
                            <figure class="c-item__figure"><a href="#"><img src="{{$prod_path}}" alt=""></a></figure>
                        </div>
                        <!--/.c-item__column__figure-->
                        <div class="c-item__column__data">
                            <h3 class="c-item__name">{{$item->brand_name}}</h3>
                            <ul class="c-item__data">
                            <li>{{$item->product_name}}</li>
                            <li>{{ __('customer.カラー') }}：{{$colorname[$item->id]->color_name}}</li>
                            <li>{{ __('customer.サイズ') }}：{{$sizename[$item->id]->size_name}}</li>
                            <li>{{ __('customer.数量') }}：{{$item->history_amount}}</li>
                            </ul>
                            <div class="c-item__price"><strong>&yen;{{number_format($item->history_price)}}</strong></div>
                        </div>
                        <!--/.c-item__column__data-->
                        </div>
                        <!--/.c-item__column-->
                    </div>
                    @endforeach
                    <!--/.c-item-->
                </div>
                <!--/.c-item c-item-01-->
            </div>
            </div>
            <!--/.l-column l-column--row-->
            <hr class="c-hr">
            <div class="l-column l-column--row">
            <div class="l-column--row__label">{{ __('customer.商品合計') }}</div>
            <div class="l-column--row__content">&yen;{{number_format($total['sum'])}}</div>
            </div>
            <!--/.l-column l-column--row-->
            <div class="l-column l-column--row">
            <div class="l-column--row__label">{{ __('customer.送料') }}</div>
            <div class="l-column--row__content">&yen;0</div>
            </div>
            <!--/.l-column l-column--row-->
            <div class="l-column l-column--row">
            <div class="l-column--row__label">{{ __('customer.取扱手数料') }}</div>
            <div class="l-column--row__content">&yen;0</div>
            </div>
            <!--/.l-column l-column--row-->
            <div class="l-column l-column--row">
            <div class="l-column--row__label">{{ __('customer.獲得ポイント') }}</div>
            <div class="l-column--row__content"></div>
            </div>
            <!--/.l-column l-column--row-->
            <div class="l-column l-column--row">
            <div class="l-column--row__label">{{ __('customer.支払い金額') }}</div>
            <div class="l-column--row__content"><strong>&yen;{{number_format($total['sum'])}}</strong></div>
            </div>
            <!--/.l-column l-column--row-->
        </div>
        <!--/.c-box__content-->
        </section>
        <!--/.c-box-->
        <div class="l-button"><a href="{{url('user/history')}}" class="c-button c-button--submit"><i class="c-icon c-button__icon c-button__icon--back"></i> 注文履歴へ戻る</a></div>
        <!--/.l-button-->
    </div>
    <!--/.members__column__content-->
        @include('customer.include.sidebar')
    </div>
    <!--/.members__column-->
</div>
<!--/.members-->
@endsection
