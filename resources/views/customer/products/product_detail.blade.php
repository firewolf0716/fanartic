@extends('layouts.customer_layout')

@section('content')
    <ul class="c-breadcrumbs">
        <li><a href="/">HOME</a></li>
        <li><a href="#">{{$product->brand->brand_name}}</a></li>
        <li>{{$product->product_name}}</li>
    </ul>
    <!--/.c-breadcrumbs-->
    <div class="product-detail">
        <div class="product-detail__column">
            <div class="product-detail__figure">
                <div class="product-detail__figure__slider" data-productdetailslider="">
                    @foreach($imagerec as $image)
                        @php
                            $pro_img = $image->master_image_name;
                            $prod_path = url('').'/images/products/'.$pro_img;
                        @endphp
                        <figure data-thumb="{{$prod_path}}"><img
                                    src="{{$prod_path}}" alt=""></figure>
                    @endforeach
                    <figure data-thumb="http://placehold.jp/120x154.png?text=1"><img
                                src="http://placehold.jp/1404x1334.png?text=1" alt=""></figure>
                    <figure data-thumb="http://placehold.jp/120x154.png?text=2"><img
                                src="http://placehold.jp/1404x1334.png?text=2" alt=""></figure>
                    <figure data-thumb="http://placehold.jp/120x154.png?text=3"><img
                                src="http://placehold.jp/1404x1334.png?text=3" alt=""></figure>
                    <figure data-thumb="http://placehold.jp/120x154.png?text=4"><img
                                src="http://placehold.jp/1404x1334.png?text=4" alt=""></figure>
                    <figure data-thumb="http://placehold.jp/120x154.png?text=5"><img
                                src="http://placehold.jp/1404x1334.png?text=5" alt=""></figure>
                    <figure data-thumb="http://placehold.jp/120x154.png?text=6"><img
                                src="http://placehold.jp/1404x1334.png?text=6" alt=""></figure>
                    <figure data-thumb="http://placehold.jp/120x154.png?text=7"><img
                                src="http://placehold.jp/1404x1334.png?text=7" alt=""></figure>
                    <figure data-thumb="http://placehold.jp/120x154.png?text=8"><img
                                src="http://placehold.jp/1404x1334.png?text=8" alt=""></figure>
                    <figure data-thumb="http://placehold.jp/120x154.png?text=9"><img
                                src="http://placehold.jp/1404x1334.png?text=9" alt=""></figure>
                    <figure data-thumb="http://placehold.jp/120x154.png?text=10"><img
                                src="http://placehold.jp/1404x1334.png?text=10" alt=""></figure>
                </div>
                <!--/.product-detail__figure__slider-->
            </div>
            <!--/.product-detail__figure-->

            <div class="product-detail__data">
                <h2 class="product-detail__data__brand">{{ __('header.ブランド') }}：<a href="#">{{$product->brand->brand_name}}</a></h2>
                <h1 class="product-detail__data__name">{{$product->product_name}}</h1>
                <div class="product-detail__data__price">
                    @if($price['min'] < $price['max'])
                        <strong>&yen;{{number_format($price['min'])}}-&yen;{{number_format($price['max'])}}</strong>
                    @else
                        <strong>&yen;{{number_format($price['min'])}}</strong>
                    @endif
                    @if($product->product_taxflag == 0)
                        税込
                    @endif
                </div>
                <ul class="product-detail__data__list">
                    <li><i class="c-icon product-detail__data__list__icon--point"></i>{{ __('customer.獲得スコア') }}：1000{{ __('customer.ポイント') }}</li>
                    <li><i class="c-icon product-detail__data__list__icon--wish"></i>{{ __('customer.お気に入りアイテム登録数') }}：2877{{ __('customer.人') }}</li>
                </ul>
<<<<<<< HEAD
                <div class="u-sp">
                    <span class="c-item__addcart product-detail__data__cart__item__list__addcart__button"
                                        data-productdetail__button="">
                        <i class="c-icon"></i>{{ __('customer.カートへ入れる') }}</span>
                </div>
=======
                <div class="u-sp"><span class="c-item__addcart product-detail__data__cart__item__list__addcart__button"
                                        data-productdetail__button=""><i class="c-icon"></i>{{ __('customer.カートへ入れる') }}</span></div>
>>>>>>> feature/order
                <div class="product-detail__data__cart" data-productdetail__content="">
                    <h3 class="product-detail__data__cart__hd u-sp">{{ __('customer.カートへ入れる') }}</h3>
                    @foreach($skucolor as $color)
                        <div class="product-detail__data__cart__item">
                            @php
                                $color_image = $skuimages[$imagerec[0]->master_image_id][$color->sku_id];
                                $prod_path = url('').'/images/products/'.$color_image->image_name;
                            @endphp
                            <div class="product-detail__data__cart__item__figure"><img src="{{$prod_path}}"
                                                                                       alt="">{{$color->color_name}}
                            </div>
                            <ul class="product-detail__data__cart__item__list">
                                @foreach($skusize as $size)
                                    <li>
                                        @if($skuinfo[$color->sku_id][$size->sku_id]['count'] > 0)
                                            <div class="product-detail__data__cart__item__list__size">
                                                {{$size->size_name}}
                                                <span class="u-pc">&nbsp;/&nbsp;</span>
                                                <br class="u-sp">{{ __('customer.在庫あり') }}
                                            </div>
                                            <div class="product-detail__data__cart__item__list__size">
                                                <div class="l-column--cart__quantity">
                                                    <label class="c-select c-select--quantity">
                                                        <div class="c-select__box">
                                                            <select name=""
                                                                    id="{{$color->sku_id.'_'.$size->sku_id}}_count">
                                                                @for($i = 1; $i <= $skuinfo[$color->sku_id][$size->sku_id]['count']; $i++)
                                                                    <option value="{{ $i }}"
                                                                            @if($i == 1)selected @endif>{{$i}}</option>
                                                                @endfor
                                                            </select>
                                                        </div>
                                                    </label>
                                                </div>
                                                <input id='{{$color->sku_id.'_'.$size->sku_id}}_price' type="hidden"
                                                       value="{{$skuinfo[$color->sku_id][$size->sku_id]['price']}}"/>
                                            </div>
                                            <div class="product-detail__data__cart__item__list__addcart">
                                                <button id='{{$color->sku_id.'_'.$size->sku_id}}_btn'
                                                        class="c-item__addcart product-detail__data__cart__item__list__addcart__button"
                                                        onClick="onCart('{{$color->sku_id.'_'.$size->sku_id}}', '{{$skuinfo[$color->sku_id][$size->sku_id]['count']}}')">
                                                    <i class="c-icon u-pc"></i>{{ __('customer.カートへ入れる') }}</button>
                                            </div>
                                            <div class="product-detail__data__cart__item__list__wish">
                                                <i class="c-icon" onClick="onFavorite('{{$product->product_id}}',
                                                        '{{$color->sku_id}}', '{{$size->sku_id}}')"></i>
                                                <span>お気に入りアイテム</span>
                                            </div>
                                        @else
                                            <div class="product-detail__data__cart__item__list__size">
                                                {{$size->size_name}}
                                                <span class="u-pc">&nbsp;/&nbsp;</span>
                                                <br class="u-sp">在庫なし
                                            </div>
                                            <div class="product-detail__data__cart__item__list__size">

                                            </div>
                                            <div class="product-detail__data__cart__item__list__addcart">完売しました</div>
                                            <div class="product-detail__data__cart__item__list__wish"><i
                                                        class="c-icon"></i>
                                                <span>お気に入りアイテム</span></div>
                                        @endif
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                        <!--/.product-detail__data__cart__item-->
                    @endforeach
                </div>
                <!--/.product-detail__data__cart-->
            </div>
            <!--/.product-detail__data-->
        </div>
        <!--/.product-detail__column-->
        <div class="product-detail__text" data-tab="">
            <ul class="product-detail__text__index" data-tab__list="">
                <li><a href="#detail01" class="is-current">{{ __('customer.アイテム説明') }}</a></li>
                <li><a href="#detail02">{{ __('customer.サイズ・詳細') }}</a></li>
                <li><a href="#detail03">{{ __('customer.配送＆返品') }}</a></li>
            </ul>
            <ul class="product-detail__text__content" data-tab__content="">
                <li id="detail01">
                    <p>{{$product->product_memo}}</p>
                    <dl class="c-dl">
                        <dt>{{ __('customer.カラー') }}</dt>
                        <dd>&nbsp;{{$product->color_name}}</dd>
                        <dt>{{ __('customer.カテゴリー') }}</dt>
<<<<<<< HEAD
                        <dd>
                            &nbsp;
                            {{$product->category->parent->parent->category_name}} >
                            {{$product->category->parent->category_name}} >
                            {{$product->category->category_name}}
                        </dd>
=======
                        <dd>&nbsp;{{$top_category->category_name}}･{{$mcategory->category_name}}
                            ･{{$scategory->category_name}}</dd>
>>>>>>> feature/order
                        <dt>{{ __('customer.素材') }}</dt>
                        <dd>&nbsp;{{$product->product_material}}</dd>
                        <dt>{{ __('customer.生産国') }}</dt>
                        <dd>&nbsp;{{$product->product_place}}</dd>
                        <dt>{{ __('customer.取扱い') }}</dt>
                        <dd>&nbsp;取扱い</dd>
                        <dt>{{ __('customer.商品番号') }}</dt>
                        <dd>&nbsp;{{$product->product_code}}</dd>
                    </dl>
                    <ul class="product-detail__text__content__sns">
                        <li><a href="#"><i
                                        class="c-icon product-detail__text__content__sns--twitter"></i><span>twitter</span></a>
                        </li>
                        <li><a href="#"><i class="c-icon product-detail__text__content__sns--facebook"></i><span>facebook</span></a>
                        </li>
                    </ul>
                </li>
                <li id="detail02">
                    <table class="c-table">
                        <thead>
                        <tr>
                            <th>{{ __('customer.アイテム説明') }}</th>
                            <th>{{ __('customer.肩幅') }}</th>
                            <th>{{ __('customer.身幅') }}</th>
                            <th>{{ __('customer.着丈') }}</th>
                            <th>{{ __('customer.袖丈') }}</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>M</th>
                            <td>48</td>
                            <td>51</td>
                            <td>73</td>
                            <td>18</td>
                        </tr>
                        <tr>
                            <th>L</th>
                            <td>52.5</td>
                            <td>54.5</td>
                            <td>76</td>
                            <td>19</td>
                        </tr>
                        <tr>
                            <th>XL</th>
                            <td>58</td>
                            <td>60</td>
                            <td>78</td>
                            <td>20</td>
                        </tr>
                        </tbody>
                    </table>
                </li>
                <li id="detail03">
                    <h4 class="product-detail__text__content__hd">{{ __('customer.配送先情報') }}</h4>
                    <p>{{ __('customer.こちらのアイテムは次の国/地域から発送されます') }}： {{ __('customer.ポーランド') }}</p>
                    <p>{{ __('customer.複数のロケーション＆注文でも送料定額') }}<br>{{ __('customer.いくつ注文しても、世界のどこから注文しても、送料は一定料金となります。') }}</p>
                    <p>{{ __('customer.新サービスのクリック＆コレクト（店舗受取サービス）をご利用いただけます。詳細はこちら') }}</p>
                    <h4 class="product-detail__text__content__hd">{{ __('customer.返品無料引き取りサービス') }}</h4>
                    <p>{{ __('customer.返品無料引き取りサービスを実施しています。') }}</p>
                    <p>{{ __('customer.返品手続きは商品受領日より14日以内にお願い致します。返品可能期間に受理されるよう、商品受領日より7日以内に当サイトにて返品無料引き取りサービスをご予約いただくことをお薦めします。') }}</p>
                    <p>{{ __('customer.返品ポリシーに関する詳細はこちらをクリックしてください。') }}</p>
                    <h4 class="product-detail__text__content__hd">{{ __('customer.輸入関税に関する情報') }}</h4>
                    <p>{{ __('customer.お買い物を安心してお楽しみいただくため、以下をご確認ください。') }}</p>
                    <p>
                        {{ __('customer.EU圏内および、アメリカ合衆国、カナダ、中国、オーストラリア、ニュージーランド、イスラエル、プエルトリコ、スイス、シンガポール、韓国、クウェート、メキシコ、カタール、インド、ノルウェー、サウジアラビア、台湾、タイ、アラブ首長国連邦、日本、ブラジル、ガーンジー、マン島、ジャージー、サンマリノへの配送の場合、輸入関税手数は商品価格に含まれています。そのため、表示価格以外に輸入関税手数料を請求されることはありません。') }}</p>
                    <p>{{ __('customer.その他の国や地域への配送における輸入関税手数料は商品価格には含まれておりません。そのため、商品受領の際に輸入関税手数料の支払いが発生する場合がございますので、あらかじめご了承ください。') }}</p>
                </li>
            </ul>
        </div>
        <!--/.product-detail__text-->
    </div>
    <input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">
    <!--/.product-detail-->
    <script>
        function onCart(id, max) {
            var colorid = id.split('_')[0];
            var sizeid = id.split('_')[1];
            var count = $('#' + id + '_count').val();
            var price = $('#' + id + '_price').val();
            if (count <= 0) {
                alert('Please enter the amount of product');
                return;
            }
            if (count > max) {
                alert('More than the maximum amount');
                return;
            }
            $.ajax({
                type: 'post',
                data: {
                    product: '{{$product->product_id}}',
                    color: colorid,
                    size: sizeid,
                    count: count,
                    price: price,
                    _token: $('#token').val()
                },
                url: "{{url('user/addtocart')}}",
                success: function (data) {
                    console.log(data);
                    if (data == "Successed") {
                        window.location = "{{url('user/cart')}}";
                    } else if (data == "Login") {
                        alert('Please log in first');
                    }
                }
            });
        }

        function onFavorite(proid, colorid, sizeid) {
            count = $('#' + colorid + "_" + sizeid + "_count").val();
            $.ajax({
                type: 'POST',
                data: {
                    product: proid,
                    color: colorid,
                    size: sizeid,
                    brand: '{{$product->product_brand_id}}',
                    count: count,
                    _token: $('#token').val()
                },
                url: "{{url('user/addFavorite')}}",
                success: function (data) {
                    $(count).addClass('is-wished');
                    // alert(data);
                }
            });
        }
    </script>
@endsection
