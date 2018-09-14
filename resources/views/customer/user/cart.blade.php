@extends('layouts.customer_layout')
@section('content')
    <h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--cart"></i> ショッピングカート</h1>
    <div class="cart">
        <div class="cart__column">
            <div class="cart__column__content">
                <hr class="c-hr">
                @if(count($cartitems) > 0)
                <form action="{{ route('cart.remove') }}" method="post" id="form_cart_list">
                    @csrf
                    <input type="hidden" name="remove_id" value="" id="remove_id">
                    @foreach($cartitems as $item)
                        <div class="l-column l-column--cart">
                            <div class="l-column--cart__item">
                                <div class="c-item c-item--01">
                                    <div class="c-item__column">
                                        <div class="c-item__column__figure">
                                            @php
                                                $pro_img  = $images[$item->id];
                                                $prod_path = url('').'/images/products/'.$pro_img;
                                            @endphp
                                            <figure class="c-item__figure"><a href=""><img src="{{$prod_path}}" alt=""></a>
                                            </figure>
                                        </div>
                                        <!--/.c-item__column__figure-->
                                        <div class="c-item__column__data">
                                            <h3 class="c-item__name">{{$item->brand_name}}</h3>
                                            <ul class="c-item__data">
                                                <li>{{$item->product_name}}</li>
                                                <li>カラー：{{$colorname[$item->id]->color_name}}</li>
                                                <li>サイズ：{{$sizename[$item->id]->size_name}}</li>
                                            </ul>
                                            <div class="c-item__price u-sp">
                                                <strong>&yen;{{number_format($item->product_price_sale)}}</strong></div>
                                        </div>
                                        <!--/.c-item__column__data-->
                                    </div>
                                    <!--/.c-item__column-->
                                </div>
                                <!--/.c-item-->
                            </div>
                            <div class="l-column--cart__price u-pc">
                                &yen;{{number_format($item->product_price_sale)}}
                            </div>
                            <div class="l-column--cart__quantity">
                                <label class="c-select c-select--quantity">
                                    <div class="c-select__box">
                                        <select name="item_{{ $item->id }}" onChange="onChangeCount(this,
                                        {{$item->product_count}})">
                                            @for($i = 1; $i <= $item->product_count; $i++)
                                                <option value="{{ $i }}" @if($i == $item->cart_amount) selected
                                                        @endif>{{
                                                    $i }}</option>
                                            @endfor
                                        </select>
                                    </div>
                                </label>
                            </div>
                            <div class="l-column--cart__button">
                                <a class="c-button c-button--secondary"
                                   onClick="onRemove('{{$item->id}}')">削除</a></div>
                        </div>
                        <!--/.l-column l-column--cart-->
                        <hr class="c-hr">
                    @endforeach
                </form>
                <dl class="cart__total">
                    <dt>商品合計（{{number_format($count)}}点）</dt>
                    <dd><strong>¥{{number_format($sum)}}</strong></dd>
                </dl>
                <!--/.cart__total-->
                @else
                    <p>カートに商品がありません</p>
                @endif
            </div>
            <!--/.cart__column__content-->
            <div class="cart__column__shipping">
                <div class="cart__shipping">
                    @if(count($cartitems) > 0)
                        {{--<p class="cart__shipping__delivery">送料無料でお届けします。</p>--}}
                        <p class="cart__shipping__quantity">商品合計（{{number_format($count)}}点）</p>
                        <p class="cart__shipping__price"><strong>¥{{number_format($sum)}}</strong></p>
                        <p class="cart__shipping__point">獲得ポイント：2,000ポイント</p>
                        <div class="cart__shipping__button">
                            <a href="{{url('user/checkflowinfo')}}" class="c-button c-button--submit c-button--full">
                                レジへ進む</a>
                        </div>
                    @else
                        <div class="cart__shipping__button">
                            <a href="" class="c-button c-button--submit c-button--full">
                                商品をさがしましょう
                            </a>
                        </div>
                    @endif

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
        function onRemove(id) {
            if (confirm("削除しますか？")) {
                $('#remove_id').val(id);
                $('#form_cart_list').submit();
            }
        }

        function onChangeCount(obj, max) {
            console.log($(obj).val());
            if ($(obj).val() > max) {
                alert('在庫が足りません');
                $(obj).val(max);
            }
        }
    </script>
@endsection
