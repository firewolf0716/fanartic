@extends('layouts.customer_layout')

@section('content')
    <ul class="c-breadcrumbs">
        <li><a href="/">HOME</a></li>
        <li>{{$top_category->category_name}}</li>
        @if(isset($main_category))
            <li>{{$main_category->category_name}}</li>
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
                @include("parts.product.list_item")
            @endforeach
            <!--/.c-item-->

            </div>
            <!--/.c-items c-items--04-->
        </div>
        <!--/.product-list__column__content-->
        <div class="product-list__column__nav" data-productfilter__content="">
            {!! Form::open(array('id' => 'form_product_list','url'=>'product/product_list_post', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
            {{ Form::hidden('tcategory_id', $top_category->category_id)}}
            {{ Form::hidden('cururl', Request::url())}}
            <h2 class="product-list__column__nav__hd u-sp">絞り込む</h2>
            <ul class="product-list__nav">
                <li>
                    <h3 class="product-list__nav__hd is-open" data-accordionproductlist="">カテゴリー</h3>
                    <div class="product-list__nav__item">
                        <ul class="product-list__nav__category u-pc">
                            @foreach($main_categorys as $maincategory)
                                <li class="is-hassub">
                                    @php
                                        $url = '/';
                                        if(isset($listtype)){
                                            if($listtype == 'mall_category'){
                                                $url = url('').'/'.$mallname.'/'.$top_id.'/'.str_replace('/', '-',
                                                $maincategory->category_name_en);
                                            } else if($listtype == 'mall_brands'){
                                                $url = url('').'/'.$mallname.'/'.$top_id.'/'.str_replace('/', '-', $maincategory->category_name_en);
                                            } else if($listtype == 'mall_brand_products'){
                                                $url = url('').'/'.$mallname.'/'.$brandname.'/men/'.str_replace('/', '-', $maincategory->category_name_en);
                                            } else if($listtype == 'brand_products'){
                                                $url = url('').'/brands/'.$brandid.'/men/'.str_replace('/', '-', $maincategory->category_name_en);
                                            }
                                        }
                                    @endphp
                                    <a href="{{$url}}">{{$maincategory->category_name}}</a>
                                    <ul class="product-list__nav__category__sub">
                                        @foreach($maincategory->sub as $subcategory)
                                            <li>
                                                <a href="{{$url.'/'.str_replace('/', '-', $subcategory->category_name_en)}}">{{$subcategory->category_name}}</a>
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
                                    <li><a class="product-list__nav__button product-list__nav__button--size sizebutton"
                                           onClick="onSizeChange(this, {{$size->size_id}})"
                                           value="{{$size->size_id}}">{{$size->size_name}}</a></li>
                                @endforeach
                                <li><a class="product-list__nav__button product-list__nav__button--size"
                                       onClick="onSizeChange('')">すべて</a></li>
                            @endif
                        </ul>
                    </div>
                    <!--/.product-list__nav__item-->

                    {{ Form::hidden('size_id', '' ,array('id' => 'size_val'))}}

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
                                    <a
                                            class="product-list__nav__button_color colorbutton"
                                            onClick="onColorChange(this, {{$color->color_id}})"
                                            style="background-color:{{$color->color_value}};"
                                            value='{{$color->color_id}}'>
                                        {{$color->color_name}}
                                    </a>
                                    <label class="product-list__nav__button product-list__nav__button--color product-list__nav__button--color--yellow u-sp">
                                        <input type="radio" name="color" value="{{$color->color_id}}"
                                               data-productfiltermodal__radio='{"label":"イエロー","key":"yellow"}'>
                                        <span>イエロー</span>
                                    </label>
                                </li>
                            @endforeach
                            <li><a class="product-list__nav__button product-list__nav__button--size"
                                   onClick="onColorChange('')">すべて</a></li>
                        </ul>

                    {{ Form::hidden('color_id', '' ,array('id' => 'color_val'))}}

                    <!--/.l-column l-column--half-->
                    </div>
                    <!--/.product-list__nav__item-->
                    <div class="c-select c-select--filter c-select--modal u-sp u-sp__full"
                         data-productfiltermodal__open=""><span class="c-select__box u-sp__full"><span
                                    class="c-select__box__inner" data-productfiltermodal__value__label="">カラーを選択</span> <input
                                    type="hidden" value="カラーを選択" data-productfiltermodal__value__key=""></span>
                    </div>
                </li>
                {{ Form::hidden('range_min', '' ,array('id' => 'rangemin_val'))}}
                {{ Form::hidden('range_max', '' ,array('id' => 'rangemax_val'))}}
                <li data-productfiltermodal="">
                    <h3 id="cash_range" class="product-list__nav__hd" data-accordionproductlist="">価格</h3>
                    <div class="product-list__nav__item" data-productfiltermodal__content="" data-productlistprice="">
                        <h2 class="product-list__column__nav__hd u-sp">価格を選択</h2>
                        <div class="product-list__nav__price">
                            @php
                                $rangemin = 0; $rangemax = 500000;
                                if(isset($_GET['rangemin']))
                                    $rangemin = $_GET['rangemin'];
                                if(isset($_GET['rangemax']))
                                    $rangemax = $_GET['rangemax'];
                            @endphp
                            <input type="range" name="rangemin" id="rangemin" min="0" max="50000" value="{{$rangemin}}"
                                   data-productlistprice__min="">

                            <input type="range" name="rangemax" id="rangemax" min="0" max="50000" value="{{$rangemax}}"
                                   data-productlistprice__max="">
                            <!--/.product-list__nav__price__buttons-->
                            <script src="{{url('')}}/js/vendor/mm-jsr.js"></script>
                            <script>
                                minTarget = '[data-productListPrice__min]'
                                maxTarget = '[data-productListPrice__max]'
                                const productListPriceRange = new JSR([minTarget, maxTarget], {
                                    sliders: 2,
                                    min: $(minTarget).attr('min'),
                                    max: $(maxTarget).attr('max'),
                                    values: ['{{$rangemin / 10}}', '{{$rangemax / 10}}'],
                                    limit: {
                                        show: false
                                    },
                                    grid: false,
                                    labels: {
                                        minMax: false,
                                        formatter: function (value) {
                                            if (value == "500000")
                                                return '<span class="jsr_label__yen">￥</span>' + value.toString().replace(/(\d)(?=(\d{3})+$)/g, '$1,') + "+";
                                            else
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
                <li>
                    <div class="product-list__nav__price__buttons u-pc">
                        <a class="product-list__nav__price__button" onClick="onClear()">リセット</a>
                        <a class="product-list__nav__price__button" onClick="onFilter()">検索</a>
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
    <!--/.l-content-->
    <script>
        var hexDigits = new Array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f");

        //Function to convert rgb color to hex format
        function rgb2hex(rgb) {
            rgb = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
            return "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]);
        }

        function hex(x) {
            return isNaN(x) ? "00" : hexDigits[(x - x % 16) / 16] + hexDigits[x % 16];
        }

        $(function () {
            var colors = Array();
            @if(isset($_GET['colorid']))
                colors = '{{$_GET['colorid']}}'.split(',');
            @endif
            $('.colorbutton').each(function (i, obj) {
                var backcolor = rgb2hex($(obj).css('background-color'));
                // alert(backcolor);
                var color = invertColor(backcolor, true);
                $(obj).css('color', color);
                var colorid = $(obj).attr('value');
                for (var i = 0; i < colors.length; i++) {
                    if (colors[i] == colorid) {
                        $(obj).removeClass('product-list__nav__button_color');
                        $(obj).addClass('product-list__nav__button_color-selected');
                    }
                }
            });
            var sizes = Array();
                    @if(isset($_GET['sizeid']))
            var sizestr = '{{$_GET['sizeid']}}';
            sizes = sizestr.split(',');
            @endif
            $('.sizebutton').each(function (i, obj) {
                var sizeid = $(obj).attr('value');
                for (var i = 0; i < sizes.length; i++) {
                    if (sizes[i] == sizeid) {
                        $(obj).removeClass('product-list__nav__button');
                        $(obj).addClass('product-list__nav__button-selected');
                    }
                }
            });
            @if(isset($_GET['rangemin']) && $_GET['rangemin'] != '')
            $('#cash_range').addClass('is-open');
            @endif
        });

        function onSizeChange(obj, sizeid) {
            if ($(obj).hasClass('product-list__nav__button')) {
                $(obj).removeClass('product-list__nav__button');
                $(obj).addClass('product-list__nav__button-selected');
            } else {
                $(obj).addClass('product-list__nav__button');
                $(obj).removeClass('product-list__nav__button-selected');
            }
        }

        function onColorChange(obj, colorid) {
            if ($(obj).hasClass('product-list__nav__button_color')) {
                $(obj).removeClass('product-list__nav__button_color');
                $(obj).addClass('product-list__nav__button_color-selected');
            } else {
                $(obj).addClass('product-list__nav__button_color');
                $(obj).removeClass('product-list__nav__button_color-selected');
            }
        }

        function onFilter() {
            var colors = '';
            $('.colorbutton').each(function (i, obj) {
                if ($(obj).hasClass('product-list__nav__button_color-selected')) {
                    colors = colors + $(obj).attr('value') + ',';
                }
            });
            // alert(colors);
            $('#color_val').val(colors);
            var sizes = '';
            $('.sizebutton').each(function (i, obj) {
                if ($(obj).hasClass('product-list__nav__button-selected')) {
                    sizes = sizes + $(obj).attr('value') + ',';
                }
            });
            // alert(sizes);
            $('#size_val').val(sizes);
            $('#rangemin_val').val($('#rangemin').attr('value'));
            $('#rangemax_val').val($('#rangemax').attr('value'));
            // alert($('#rangemin').attr('value'));
            $('#form_product_list').submit();
        }

        function onClear() {
            $('.colorbutton').each(function (i, obj) {
                $(obj).addClass('product-list__nav__button_color');
                $(obj).removeClass('product-list__nav__button_color-selected');
            });
            $('.sizebutton').each(function (i, obj) {
                $(obj).addClass('product-list__nav__button');
                $(obj).removeClass('product-list__nav__button-selected');
            });
            productListPriceRange.refresh(config = {
                values: [0, 1000000]
            });
        }

        function padZero(str, len) {
            len = len || 2;
            var zeros = new Array(len).join('0');
            return (zeros + str).slice(-len);
        }

        function invertColor(hex, bw) {
            if (hex.indexOf('#') === 0) {
                hex = hex.slice(1);
            }
            // convert 3-digit hex to 6-digits.
            if (hex.length === 3) {
                hex = hex[0] + hex[0] + hex[1] + hex[1] + hex[2] + hex[2];
            }
            if (hex.length !== 6) {
                throw new Error('Invalid HEX color.');
            }
            var r = parseInt(hex.slice(0, 2), 16),
                g = parseInt(hex.slice(2, 4), 16),
                b = parseInt(hex.slice(4, 6), 16);
            if (bw) {
                // http://stackoverflow.com/a/3943023/112731
                return (r * 0.299 + g * 0.587 + b * 0.114) > 186
                    ? '#000000'
                    : '#FFFFFF';
            }
            // invert color components
            r = (255 - r).toString(16);
            g = (255 - g).toString(16);
            b = (255 - b).toString(16);
            // pad each with zeros and return
            return "#" + padZero(r) + padZero(g) + padZero(b);
        }
    </script>
@endsection