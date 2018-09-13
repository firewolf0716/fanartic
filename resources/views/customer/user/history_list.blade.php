@extends('layouts.customer_layout')
@section('content')
    <ul class="c-breadcrumbs">
        <li><a href="/">HOME</a></li>
        <li>注文履歴</li>
    </ul>
    <!--/.c-breadcrumbs-->
    <h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--history"></i> 注文履歴</h1>
    <div class="members">
        <div class="members__column">
            <div class="members__column__content">
                @if(count($groups) > 0)
                    @foreach($groups as $group)
                        <section class="c-box">
                            <h3 class="c-box__hd">
                                @if($group->history_status == 2)
                                    未発送
                                @elseif($group->history_status == 3)
                                    発送
                                @elseif($group->history_status == 1)
                                    拒否
                                @endif
                                <small>
                                    発送予定日：&nbsp;&nbsp;&nbsp;&nbsp;注文日：{{implode('.', explode('/', substr($group->history_date, 0, 10)))}}</small>
                            </h3>
                            <div class="c-box__content">
                                <div class="c-item c-item-01">
                                    @foreach($subitems[$group->history_group] as $subitem)
                                        <div class="c-item c-item--01">
                                            <div class="c-item__column">
                                                <div class="c-item__column__figure">
                                                    @php
                                                        $pro_img  = $images[$subitem->id];
                                                        $prod_path = url('').'/images/products/'.$pro_img;
                                                    @endphp
                                                    <figure class="c-item__figure"><a href="#"><img src="{{$prod_path}}"
                                                                                                    alt=""></a></figure>
                                                </div>
                                                <!--/.c-item__column__figure-->
                                                <div class="c-item__column__data">
                                                    @if($subitem->history_status == 2)
                                                        <a href="#">ステータス:未発送</a>
                                                    @elseif($subitem->history_status == 3)
                                                        <a href="{{url('user/history/receive/'.$subitem->id)}}">ステータス:発送</a>
                                                    @elseif($subitem->history_status == 1)
                                                        <a href="#">ステータス:拒否</a>
                                                    @elseif($subitem->history_status == 4)
                                                        <a href="#">ステータス:完了</a>
                                                    @endif
                                                    <h3 class="c-item__name">{{$subitem->brand_name}}</h3>
                                                    <ul class="c-item__data">
                                                        <li>{{$subitem->product_name}}</li>
                                                        <li>カラー：{{$colorname[$subitem->id]->color_name}}</li>
                                                        <li>サイズ：{{$sizename[$subitem->id]->size_name}}</li>
                                                        <li>数量：{{number_format($subitem->history_amount)}}</li>
                                                    </ul>
                                                    <div class="c-item__price">
                                                        <strong>&yen;{{number_format($subitem->history_price)}}</strong>
                                                    </div>
                                                </div>
                                                <!--/.c-item__column__data-->
                                            </div>
                                            <!--/.c-item__column-->
                                        </div>
                                @endforeach
                                <!--/.c-item-->
                                </div>
                                <!--/.c-item c-item-01-->
                                <div class="c-box-detail">
                                    <div class="c-item">
                                        <ul class="c-item__data">
                                            <li>ご注文番号：</li>
                                            <li>支払い方法： クレジット(一括)</li>
                                            <li>支払い金額：<span
                                                        class="c-item__price"><strong>&yen;{{number_format($total[$group->history_group])}}</strong></span>
                                            </li>
                                        </ul>
                                        <a href="{{url('user/historydetail/'.$group->history_group)}}"
                                           class="c-button c-button--primary c-button--full">注文内容の詳細</a></div>
                                </div>
                                <!--/.c-box-detail-->
                            </div>
                            <!--/.c-box__content-->
                        </section>
                        <!--/.c-box-->
                    @endforeach
                @else
                    <p>まだ購入履歴がありません</p>
                @endif
            </div>
            <!--/.members__column__content-->
            @include('customer.include.sidebar')
        </div>
        <!--/.members__column-->
    </div>
    <!--/.members-->
@endsection