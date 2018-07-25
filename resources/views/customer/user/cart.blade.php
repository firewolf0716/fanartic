@extends('layouts.customer_layout')
@section('content')
<h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--cart"></i> ショッピングカート</h1>
<div class="cart">
    <div class="cart__column">
    <div class="cart__column__content">
        <hr class="c-hr">
        {!! Form::open(array('id' => 'form_cart_list','url'=>'user/cart_remove_item', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
        {{ Form::hidden('remove_id', '',array('id' => 'remove_id'))}}
        @foreach($cartitems as $item)
        <div class="l-column l-column--cart">
            <div class="l-column--cart__item">
                <div class="c-item c-item--01">
                    <div class="c-item__column">
                        <div class="c-item__column__figure">
                            @php 
                                $pro_img  = $images[$item->cart_id];
                                $prod_path = url('').'/images/products/'.$pro_img;
                            @endphp
                            <figure class="c-item__figure"><a href=""><img src="{{$prod_path}}" alt=""></a></figure>
                        </div>
                        <!--/.c-item__column__figure-->
                        <div class="c-item__column__data">
                            <h3 class="c-item__name">{{$item->brand_name}}</h3>
                            <ul class="c-item__data">
                                <li>{{$item->product_name}}</li>
                                <li>カラー：{{$colorname[$item->cart_id]->color_name}}</li>
                                <li>サイズ：{{$sizename[$item->cart_id]->size_name}}</li>
                            </ul>
                            <div class="c-item__price u-sp"><strong>&yen;{{number_format($item->product_price_sale)}}</strong></div>
                        </div>
                        <!--/.c-item__column__data-->
                    </div>
                    <!--/.c-item__column-->
                </div>
                <!--/.c-item-->
            </div>
            <div class="l-column--cart__price u-pc">&yen;{{number_format($item->product_price_sale)}}</div>
            <div class="l-column--cart__quantity">
                <input type="number" style="width:70px; margin-left:20px" class="c-form__input" value='{{$item->cart_amount}}' min='0' max='100'/>
            </div>
            <div class="l-column--cart__button"><a class="c-button c-button--secondary" onClick="onRemove('{{$item->cart_id}}')">削除</a></div>
        </div>
        <!--/.l-column l-column--cart-->
        <hr class="c-hr">
        @endforeach
        {{ Form::close() }}
        <dl class="cart__total"><dt>商品合計（{{number_format($count)}}点）</dt>
        <dd><strong>¥{{number_format($sum)}}</strong></dd>
        </dl>
        <!--/.cart__total-->
    </div>
    <!--/.cart__column__content-->
    <div class="cart__column__shipping">
        <div class="cart__shipping">
        <p class="cart__shipping__delivery">送料無料でお届けします。</p>
        <p class="cart__shipping__quantity">商品合計（{{number_format($count)}}点）</p>
        <p class="cart__shipping__price"><strong>¥{{number_format($sum)}}</strong></p>
        <p class="cart__shipping__point">獲得ポイント：2,000ポイント</p>
        <div class="cart__shipping__button"><a href="{{url('user/checkflowinfo')}}" class="c-button c-button--submit c-button--full">レジへ進む</a></div>
        <p class="cart__shipping__back"><a href="">ショッピングを続ける</a></p>
        </div>
        <!--/.cart__shipping-->
    </div>
    <!--/.cart__column__shipping-->
    </div>
    <!--/.cart__column-->
</div>
<!--/.cart-->
<script>
    function onRemove(id){
        if(confirm("Are you sure to delete this item?")){
            $('#remove_id').val(id);
            $('#form_cart_list').submit();    
        }
    }
</script>
@endsection
