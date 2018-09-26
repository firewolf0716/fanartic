@extends('layouts.customer_top')
@section('content')
    <ul class="c-breadcrumbs">
        <li><a href="/">HOME</a></li>
        <li>お気に入りアイテム</li>
    </ul>
    <!--/.c-breadcrumbs-->
    <h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--member"></i> お気に入りアイテム</h1>
    <div class="members">
        <div class="members__column">
            <div class="members__column__content">
                <div class="l-column l-column--control">
                    <div class="l-column--control__col">
                        <label class="c-select c-select--sort u-sp__full">
                            <span class="c-select__box u-sp__full">
                                <select name="" id="">
                                    <option value="">すべてのカテゴリ</option>
                                </select>
                            </span>
                        </label>
                    </div>
                    <div class="l-column--control__col">
                        <label class="c-select c-select--sort u-sp__full">
                            <span class="c-select__box u-sp__full">
                                <select name="" id="">
                                    <option value="">すべて</option>
                                </select>
                            </span>
                        </label>
                    </div>
                </div>
                <!--/.l-column l-column--control-->
                {!! Form::open(array('id' => 'form_fav_list','route'=>'favorite.action')) !!}
                {{ Form::hidden('action_id', '',array('id' => 'action_id'))}}
                {{ Form::hidden('action_type', '',array('id' => 'action_type'))}}
                <div class="c-items c-items--02">
                    @foreach($favs as $fav)
                        <div class="c-item c-item--02">
                            <div class="c-item__column">
                                <div class="c-item__column__figure">
                                    @php
                                        $pro_img  = $images[$fav->id];
                                        $prod_path = url('').'/images/products/'.$pro_img;
                                    @endphp
                                    <figure class="c-item__figure"><a
                                                href="{{url('customer/product/detail/'.$fav->fav_pro_id)}}"><img
                                                    src="{{$prod_path}}" alt=""></a></figure>
                                </div>
                                <!--/.c-item__column__figure-->
                                <div class="c-item__column__data">
                                    <h3 class="c-item__name">{{$fav->brand_name}}</h3>
                                    <ul class="c-item__data">
                                        <li>{{$fav->product_name}}</li>
                                        <li>カラー：{{$colorname[$fav->id]->color_name}}</li>
                                    </ul>
                                    <div class="c-item__price">
                                        <strong>&yen;{{number_format($fav->product_price_sale)}}</strong></div>
                                    <button class="c-item__addcart" onClick="onCart({{$fav->id}})"><i
                                                class="c-icon c-item__addcart__icon"></i>カートへ入れる
                                    </button>
                                    <button type="button" class="c-item__delete" onClick="onRemove({{$fav->id}})"><i
                                                class="c-icon c-item__delete__icon"></i>削除
                                    </button>
                                </div>
                                <!--/.c-item__column__data-->
                            </div>
                            <!--/.c-item__column-->
                        </div>
                    @endforeach
                    {{ Form::close() }}
                </div>
                <!--/.c-items c-items--02-->
            </div>
            <!--/.members__column__content-->
            @include('customer.include.sidebar')
        </div>
        <!--/.members__column-->
    </div>
    <!--/.members-->
    <script>
        function onCart(id) {
            $('#action_id').val(id);
            $('#action_type').val('cart');
            $('#form_fav_list').submit();
        }

        function onRemove(id) {
            $('#action_id').val(id);
            $('#action_type').val('remove');
            $('#form_fav_list').submit();
        }
    </script>
@endsection