@extends('layouts.customer_layout')

@section('content')
    <ul class="c-breadcrumbs">
        <li><a href="/">HOME</a></li>
        <li>{{$topcategory->category_name}}</li>
        @if(isset($mcategory))
            <li>{{$mcategory->category_name}}</li>
        @endif
        @if(isset($scategory))
            <li>{{$scategory->category_name}}</li>
        @endif
    </ul>
    <!--/.c-breadcrumbs-->
    <div class="product-list__column">
        <div class="product-list__column__content">
            <div class="l-column l-column--control is-nb">
                <div class="l-column--control__col u-sp"><span class="c-select c-select--sort u-sp__full"
                                                               data-productfilter__button=""><span
                                class="c-select__box u-sp__full"><span class="c-select__box__inner">絞り込む</span></span>
        </span>
                </div>
                <div class="l-column--control__col"><label class="c-select c-select--sort u-sp__full"><span
                                class="c-select__box u-sp__full"><select name="" id=""><option
                                        value="">並び替え</option></select></span></label></div>
            </div>
            <!--/.l-column l-column--control-->
            <div class="c-items c-items--04">
                @foreach($products as $product)
                    <div class="c-item c-item--02">
                        <div class="c-item__column">
                            <div class="c-item__column__figure">
                                @php
                                    $file_get  = $product->product_image;
                                    $file_get_path =  explode("/**/",$file_get,-1);
                                    $prod_path = url('').'/public/images/products/'.$file_get_path[0];
                                    $prod_path02 = NULL;
                                    if (!empty($file_get_path[1])) {
                                        $prod_path02 = url('').'/public/images/products/'.$file_get_path[1];
                                    }
                                @endphp
                                <figure class="c-item__figure">
                                    <a href="{{url('customer/product/detail').'/'.$product->product_id}}"
                                       class="image-block">
                                        @if (empty($file_get_path[0]))
                                            <img src="http://placehold.jp/340x440.png" alt="No Image">
                                        @elseif (empty($file_get_path[1]))
                                            <img style="height:300px; width:440px;" src="{{$prod_path}}" alt="">
                                        @else
                                            <img style="height:300px; width:440px;" src="{{$prod_path02}}" alt="">
                                            <span>
                                                <img style="height:300px; width:440px;" src="{{$prod_path}}" alt="">
                                            </span>
                                        @endif
                                    </a>
                                    <a href="#" class="fav-block"><i class="c-icon
                                    header__nav-secondary__icon--favorite"></i></a>
                                </figure>
                            </div>
                            <!--/.c-item__column__figure-->
                            <div class="c-item__column__data">
                                <a href="">
                                    <h3 class="c-item__name">{{$product->product_name}}</h3>
                                    <ul class="c-item__data">
                                        <li>{{$product->product_name_detail}}</li>
                                    </ul>
                                    <div class="c-item__price">
                                        <strong>&yen;{{number_format($product->product_price_sale)}}</strong></div>
                                </a>
                            </div>
                            <!--/.c-item__column__data-->
                        </div>
                        <!--/.c-item__column-->
                    </div>
            @endforeach
            <!--/.c-item-->

            </div>
            <!--/.c-items c-items--04-->
        </div>
        <!--/.product-list__column__content-->
        <div class="product-list__column__nav" data-productfilter__content="">
            {!! Form::open(array('id' => 'form_product_list','url'=>'customer/product/product_list_post', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
            {{ Form::hidden('tcategory_id', $topcategory->category_id)}}
            @if(isset($mcategory))
                {{ Form::hidden('mcategory_id', $mcategory->category_id)}}
            @endif
            @if(isset($scategory))
                {{ Form::hidden('scategory_id', $scategory->category_id)}}
            @endif
            <h2 class="product-list__column__nav__hd u-sp">絞り込む</h2>
            <ul class="product-list__nav">
                <li>
                    <h3 class="product-list__nav__hd is-open" data-accordionproductlist="">カテゴリー</h3>
                    <div class="product-list__nav__item">
                        <ul class="product-list__nav__category u-pc">
                            @foreach($maincategorys as $maincategory)
                                <li class="is-hassub">{{$maincategory->category_name}}
                                    <ul class="product-list__nav__category__sub">
                                        @foreach($subcategorys[$maincategory->category_id] as $subcategory)
                                            <li>
                                                <a href="{{url('customer/product/list').'/'.$topcategory->category_id.'/'.$maincategory->category_id.'/'.$subcategory->category_id}}">
                                                    {{$subcategory->category_name}}</a>
                                            </li>
                                        @endforeach
                                    </ul>
                                </li>
                            @endforeach
                        </ul>
                        <!--/.product-list__nav__item-->
                </li>
                <li>
                    @if(isset($_GET['sizeid']) && $_GET['sizeid'] != '')
                        <h3 class="product-list__nav__hd is-open" data-accordionproductlist="">サイズ</h3>
                    @else
                        <h3 class="product-list__nav__hd" data-accordionproductlist="">サイズ</h3>
                    @endif
                    <div class="product-list__nav__item">
                        <ul class="product-list__nav__column u-pc">
                            @if($sizes != null)
                                @foreach($sizes as $size)
                                    <li><a href="#" class="product-list__nav__button product-list__nav__button--size"
                                           onClick="onSizeChange({{$size->size_id}})">{{$size->size_name}}</a></li>
                                @endforeach
                                <li><a href="#" class="product-list__nav__button product-list__nav__button--size"
                                       onClick="onSizeChange('')">すべて</a></li>
                            @endif
                        </ul>
                    </div>
                    <!--/.product-list__nav__item-->
                    @if(isset($_GET['sizeid']))
                        {{ Form::hidden('size_id', $_GET['sizeid'] ,array('id' => 'size_val'))}}
                    @endif
                </li>
                <li data-productfiltermodal="">
                    @if(isset($_GET['colorid']) && $_GET['colorid'] != '')
                        <h3 class="product-list__nav__hd is-open" data-accordionproductlist="">カラー</h3>
                    @else
                        <h3 class="product-list__nav__hd" data-accordionproductlist="">カラー</h3>
                    @endif
                    <div class="product-list__nav__item" data-productfiltermodal__content="">
                        <h2 class="product-list__column__nav__hd u-sp">カラーを選択</h2>
                        <ul class="product-list__nav__column">
                            @foreach($colors as $color)
                                <li>
                                    <a href="#"
                                       class="product-list__nav__button product-list__nav__button--color product-list__nav__button--color--orange u-pc"
                                       onClick="onColorChange({{$color->color_id}})"
                                       style="background-color:{{$color->color_value}}">
                                        {{$color->color_name}}
                                    </a>
                                    <label class="product-list__nav__button product-list__nav__button--color product-list__nav__button--color--yellow u-sp"
                                           onClick="onColorChange({{$color->color_id}})">
                                        <input type="radio" name="color" value="{{$color->color_id}}"
                                               data-productfiltermodal__radio='{"label":"イエロー","key":"yellow"}'>
                                        <span>イエロー</span>
                                    </label>
                                </li>
                            @endforeach
                            <li><a href="#" class="product-list__nav__button product-list__nav__button--size"
                                   onClick="onColorChange('')">すべて</a></li>
                        </ul>
                    @if(isset($_GET['colorid']))
                        {{ Form::hidden('color_id', $_GET['colorid'] ,array('id' => 'color_val'))}}
                    @endif
                    <!--/.l-column l-column--half-->
                    </div>
                    <!--/.product-list__nav__item-->
                    <div class="c-select c-select--filter c-select--modal u-sp u-sp__full"
                         data-productfiltermodal__open=""><span class="c-select__box u-sp__full"><span
                                    class="c-select__box__inner" data-productfiltermodal__value__label="">カラーを選択</span> <input
                                    type="hidden" value="カラーを選択" data-productfiltermodal__value__key=""></span>
                    </div>
                </li>
                @php
                    $rangemin = '';
                    if(isset($_GET['rangemin']) && $_GET['rangemin'] != ''){
                        $rangemin = $_GET['rangemin'];
                    }
                    $rangemax = '';
                    if(isset($_GET['rangemax']) && $_GET['rangemax'] != ''){
                        $rangemax = $_GET['rangemax'];
                    }
                @endphp
                <li data-productfiltermodal="">
                    <h3 class="product-list__nav__hd" data-accordionproductlist="">価格</h3>
                    <div class="product-list__nav__item" data-productfiltermodal__content="" data-productlistprice="">
                        <h2 class="product-list__column__nav__hd u-sp">価格を選択</h2>
                        <div class="product-list__nav__price">
                            @if($rangemin == '')
                                <input type="range" name="rangemin" min="0" max="1000000" value="0"
                                       data-productlistprice__min="">
                            @else
                                <input type="range" name="rangemin" min="0" max="1000000" value="{{$rangemin}}"
                                       data-productlistprice__min="">
                            @endif
                            @if($rangemax == '')
                                <input type="range" name="rangemax" min="0" max="1000000" value="1000000"
                                       data-productlistprice__max="">
                            @else
                                <input type="range" name="rangemax" min="0" max="1000000" value="{{$rangemax}}"
                                       data-productlistprice__max="">
                            @endif
                            <div class="product-list__nav__price__buttons u-pc"><a href="#"
                                                                                   class="product-list__nav__price__button">削除</a>
                                <a href="#" class="product-list__nav__price__button" onClick="onPriceChange()">OK</a>
                            </div>
                            <!--/.product-list__nav__price__buttons-->
                            <script src="{{url('')}}/public/js/vendor/mm-jsr.js"></script>
                            <script>
                                minTarget = '[data-productListPrice__min]'
                                maxTarget = '[data-productListPrice__max]'
                                const productListPriceRange = new JSR([minTarget, maxTarget], {
                                    sliders: 2,
                                    min: $(minTarget).attr('min'),
                                    max: $(maxTarget).attr('max'),
                                    values: [$(minTarget).val(), $(maxTarget).val()],
                                    limit: {
                                        show: false
                                    },
                                    grid: false,
                                    labels: {
                                        minMax: false,
                                        formatter: function (value) {
                                            return '<span class="jsr_label__yen">￥</span>' + value.toString().replace(/(\d)(?=(\d{3})+$)/g, '$1,');
                                        }
                                    }
                                })
                                productListPriceRange.addEventListener('update', (input, value) => {
                                    if (input.dataset.productlistprice__max == "")
                                        $(maxTarget).attr('value', value)
                                    if (input.dataset.productlistprice__min == "")
                                        $(minTarget).attr('value', value)
                                });
                            </script>
                        </div>
                        <!--/.product-list__nav__price-->
                        <div class="l-column l-column--half u-sp">
                            <div class="l-column--half__col"><span class="c-button c-button--clear c-button--full"
                                                                   data-productfiltermodal__clear="">クリア</span></div>
                            <div class="l-column--half__col"><span class="c-button c-button--submit c-button--full"
                                                                   data-productfiltermodal__submit="">価格を選択</span></div>
                        </div>
                    </div>
                    <!--/.product-list__nav__item-->
                    <div class="c-select c-select--filter c-select--modal u-sp u-sp__full"
                         data-productfiltermodal__open=""><span class="c-select__box u-sp__full"><span
                                    class="c-select__box__inner" data-productfilterprice__label="">価格を選択</span></span>
                    </div>
                </li>
            </ul>
            <div class="l-column l-column--half u-sp">
                <div class="l-column--half__col"><input type="reset" class="c-button c-button--clear c-button--full"
                                                        data-productfilter__clear="" value="クリア"></div>
                <div class="l-column--half__col">
                    <button class="c-button c-button--submit c-button--full" data-productfilter__submit="">絞り込む</button>
                </div>
            </div>
            <!--/.l-column l-column--half-->
            {{ Form::close() }}
        </div>
        <!--/.product-list__column-->
    </div>
    <!--/.product-list-->
    <div class="l-column--sub">
        <h2 class="c-hd">最近チェックしたアイテム</h2>
        <div class="c-items c-items--03">
            <div class="c-item c-item--03">
                <div class="c-item__column">
                    <div class="c-item__column__figure">
                        <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                        alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                </div>
                <!--/.c-item__column-->
            </div>
            <!--/.c-item-->
            <div class="c-item c-item--03">
                <div class="c-item__column">
                    <div class="c-item__column__figure">
                        <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                        alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                </div>
                <!--/.c-item__column-->
            </div>
            <!--/.c-item-->
            <div class="c-item c-item--03">
                <div class="c-item__column">
                    <div class="c-item__column__figure">
                        <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                        alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                </div>
                <!--/.c-item__column-->
            </div>
            <!--/.c-item-->
            <div class="c-item c-item--03">
                <div class="c-item__column">
                    <div class="c-item__column__figure">
                        <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                        alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                </div>
                <!--/.c-item__column-->
            </div>
            <!--/.c-item-->
            <div class="c-item c-item--03">
                <div class="c-item__column">
                    <div class="c-item__column__figure">
                        <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                        alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                </div>
                <!--/.c-item__column-->
            </div>
            <!--/.c-item-->
            <div class="c-item c-item--03">
                <div class="c-item__column">
                    <div class="c-item__column__figure">
                        <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                        alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                </div>
                <!--/.c-item__column-->
            </div>
            <!--/.c-item-->
            <div class="c-item c-item--03">
                <div class="c-item__column">
                    <div class="c-item__column__figure">
                        <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                        alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                </div>
                <!--/.c-item__column-->
            </div>
            <!--/.c-item-->
            <div class="c-item c-item--03">
                <div class="c-item__column">
                    <div class="c-item__column__figure">
                        <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                        alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                </div>
                <!--/.c-item__column-->
            </div>
            <!--/.c-item-->
            <div class="c-item c-item--03">
                <div class="c-item__column">
                    <div class="c-item__column__figure">
                        <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                        alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                </div>
                <!--/.c-item__column-->
            </div>
            <!--/.c-item-->
            <div class="c-item c-item--03">
                <div class="c-item__column">
                    <div class="c-item__column__figure">
                        <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                        alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                </div>
                <!--/.c-item__column-->
            </div>
            <!--/.c-item-->
            <div class="c-item c-item--03">
                <div class="c-item__column">
                    <div class="c-item__column__figure">
                        <figure class="c-item__figure"><a href="#"><img src="http://placehold.jp/340x440.png"
                                                                        alt=""></a></figure>
                    </div>
                    <!--/.c-item__column__figure-->
                </div>
                <!--/.c-item__column-->
            </div>
            <!--/.c-item-->
        </div>
        <!--/.c-items c-items--03-->
    </div>
    <!--/.l-content-->
    <script>
        $('#top_women').click(function () {
            window.location = "{{url('customer/product/list/2')}}"
        });
        $('#top_men').click(function () {
            window.location = "{{url('customer/product/list/1')}}"
        });
        $(function () {
            var topcategory = "{{$topcategory->category_id}}";
            if (topcategory == '1') {
                $('#top_women').removeClass('is-current');
                $('#top_men').addClass('is-current');
            }
            else if (topcategory == '2') {
                $('#top_men').removeClass('is-current');
                $('#top_women').addClass('is-current');
            }
        });

        function onSizeChange(sizeid) {
            $('#size_val').val(sizeid);
            $('#form_product_list').submit();
        }

        function onColorChange(colorid) {
            $('#color_val').val(colorid);
            $('#form_product_list').submit();
        }

        function onPriceChange() {
            $('#form_product_list').submit();
        }
    </script>
@endsection