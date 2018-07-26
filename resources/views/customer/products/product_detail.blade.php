@extends('layouts.customer_layout')

@section('content')
    <ul class="c-breadcrumbs">
        <li><a href="/">HOME</a></li>
        <li>アイテム詳細</li>
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
                <figure data-thumb="{{$prod_path}}"><img src="{{$prod_path}}" alt="" style="width:1200px; height:600px"></figure>
            @endforeach
            </div>
            <!--/.product-detail__figure__slider-->
        </div>
        <!--/.product-detail__figure-->
        <div class="product-detail__data">
            <h2 class="product-detail__data__brand">ブランド：<a href="#">{{$product->brand_name}}</a></h2>
            <h1 class="product-detail__data__name">{{$product->product_name}}</h1>
            <div class="product-detail__data__price">
                @if($price['min'] < $price['max'])
                    <strong>&yen;{{$price['min']}}-&yen;{{$price['max']}}</strong>
                @else
                    <strong>&yen;{{$price['min']}}</strong>
                @endif
                @if($product->product_taxflag == 0)
                    税込
                @endif
            </div>
            <ul class="product-detail__data__list">
            <li><i class="c-icon product-detail__data__list__icon--point"></i>獲得ポイント：1000ポイント</li>
            <li><i class="c-icon product-detail__data__list__icon--wish"></i>お気に入りアイテム登録数：2877人</li>
            </ul>
            <div class="u-sp"><span class="c-item__addcart product-detail__data__cart__item__list__addcart__button" data-productdetail__button=""><i class="c-icon"></i>カートへ入れる</span></div>
            <div class="product-detail__data__cart" data-productdetail__content="">
            <h3 class="product-detail__data__cart__hd u-sp">カートに入れる</h3>
            @foreach($skucolor as $color)
            <div class="product-detail__data__cart__item">
                @php
                    $color_image = $skuimages[$imagerec[0]->master_image_id][$color->sku_id];
                    $prod_path = url('').'/images/products/'.$color_image->image_name;
                @endphp
                <div class="product-detail__data__cart__item__figure"><img src="{{$prod_path}}" alt="">{{$color->color_name}}</div>
                <ul class="product-detail__data__cart__item__list">
                @foreach($skusize as $size)
                    <li>
                        @if($skuinfo[$color->sku_id][$size->sku_id]['count'] > 0)
                            <div class="product-detail__data__cart__item__list__size">
                                {{$size->size_name}}
                                <span class="u-pc">&nbsp;/&nbsp;</span>
                                <br class="u-sp">在庫あり
                            </div>
                            <div class="product-detail__data__cart__item__list__size">
                                <input id='{{$color->sku_id.'_'.$size->sku_id}}_count' type="number" style="width:70px; margin-left:20px" class="c-form__input" value='0' min='0' max='{{$skuinfo[$color->sku_id][$size->sku_id]['count']}}'/>
                                <input id='{{$color->sku_id.'_'.$size->sku_id}}_price' type="hidden" value="{{$skuinfo[$color->sku_id][$size->sku_id]['price']}}"/>
                            </div>
                            <div class="product-detail__data__cart__item__list__addcart">
                                <button id='{{$color->sku_id.'_'.$size->sku_id}}_btn' class="c-item__addcart product-detail__data__cart__item__list__addcart__button" 
                                    onClick="onCart('{{$color->sku_id.'_'.$size->sku_id}}', '{{$skuinfo[$color->sku_id][$size->sku_id]['count']}}')">
                                    <i class="c-icon u-pc"></i>カートへ入れる
                                </button>
                            </div>
                            <div class="product-detail__data__cart__item__list__wish"><i class="c-icon" onClick="onFavourite({{$product->product_id}}, {{$color->sku_id}}, {{$size->sku_id}})"></i><span>お気に入りアイテム</span></div>
                        @else
                            <div class="product-detail__data__cart__item__list__size">
                                {{$size->size_name}}
                                <span class="u-pc">&nbsp;/&nbsp;</span>
                                <br class="u-sp">在庫なし
                            </div>
                            <div class="product-detail__data__cart__item__list__size">
                                
                            </div>
                            <div class="product-detail__data__cart__item__list__addcart">完売しました</div>
                            <div class="product-detail__data__cart__item__list__wish"><i class="c-icon"></i>
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
            <li><a href="#detail01" class="is-current">アイテム説明</a></li>
            <li><a href="#detail02">サイズ・詳細</a></li>
            <li><a href="#detail03">配送＆返品</a></li>
        </ul>
        <ul class="product-detail__text__content" data-tab__content="">
            <li id="detail01">
            <p>{{$product->product_memo}}</p>
            <dl class="c-dl">
                <dt>カラー</dt><dd>{{$product->color_name}}</dd>
                <dt>カテゴリ</dt><dd>{{$tcategory->category_name}}･{{$mcategory->category_name}}･{{$scategory->category_name}}</dd>
                <dt>素材</dt><dd>{{$product->product_material}}</dd>
                <dt>生産国</dt><dd>{{$product->product_place}}</dd>
                <dt>取扱い</dt><dd>取扱い</dd>
                <dt>商品番号</dt><dd>{{$product->product_code}}</dd>
            </dl>
            <ul class="product-detail__text__content__sns">
                <li><a href="#"><i class="c-icon product-detail__text__content__sns--twitter"></i><span>twitter</span></a></li>
                <li><a href="#"><i class="c-icon product-detail__text__content__sns--facebook"></i><span>facebook</span></a></li>
            </ul>
            </li>
            <li id="detail02">
            <table class="c-table">
                <thead>
                <tr>
                    <th>アイテム説明</th>
                    <th>肩幅</th>
                    <th>身幅</th>
                    <th>着丈</th>
                    <th>袖丈</th>
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
            <h4 class="product-detail__text__content__hd">配送先情報</h4>
            <p>こちらのアイテムは次の国/地域から発送されます： ポーランド</p>
            <p>複数のロケーション＆注文でも送料定額<br>いくつ注文しても、世界のどこから注文しても、送料は一定料金となります。</p>
            <p>新サービスのクリック＆コレクト（店舗受取サービス）をご利用いただけます。詳細はこちら</p>
            <h4 class="product-detail__text__content__hd">返品無料引き取りサービス</h4>
            <p>返品無料引き取りサービスを実施しています。</p>
            <p>返品手続きは商品受領日より14日以内にお願い致します。返品可能期間に受理されるよう、商品受領日より7日以内に当サイトにて返品無料引き取りサービスをご予約いただくことをお薦めします。</p>
            <p>返品ポリシーに関する詳細はこちらをクリックしてください。</p>
            <h4 class="product-detail__text__content__hd">輸入関税に関する情報</h4>
            <p>お買い物を安心してお楽しみいただくため、以下をご確認ください。</p>
            <p>EU圏内および、アメリカ合衆国、カナダ、中国、オーストラリア、ニュージーランド、イスラエル、プエルトリコ、スイス、シンガポール、韓国、クウェート、メキシコ、カタール、インド、ノルウェー、サウジアラビア、台湾、タイ、アラブ首長国連邦、日本、ブラジル、ガーンジー、マン島、ジャージー、サンマリノへの配送の場合、輸入関税手数は商品価格に含まれています。そのため、表示価格以外に輸入関税手数料を請求されることはありません。</p>
            <p>その他の国や地域への配送における輸入関税手数料は商品価格には含まれておりません。そのため、商品受領の際に輸入関税手数料の支払いが発生する場合がございますので、あらかじめご了承ください。</p>
            </li>
        </ul>
        </div>
        <!--/.product-detail__text-->
    </div>
    <input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">
    <!--/.product-detail-->
    <script>
        function onCart(id, max){
            var colorid = id.split('_')[0];
            var sizeid = id.split('_')[1];
            var count = $('#' + id + '_count').val();
            var price = $('#' + id + '_price').val();
            if(count <= 0){
                alert('Please enter the amount of product');
                return;
            }
            if(count > max){
                alert('More than the maximum amount');
                return;
            }
            $.ajax( {
                type: 'post',
                data: {
                    product : '{{$product->product_id}}',
                    color   : colorid,
                    size    : sizeid,
                    count   : count,
                    price   : price,
                    _token  : $('#token').val()
                },
                url: "{{url('user/addtocart')}}",
                success: function(data){
                    if(data == "Successed"){
                        window.location = "{{url('user/cart')}}";
                    } else if(data == "Login"){
                        alert('Please log in first');
                    }
                }
            });
        }
        function onFavourite(proid, colorid, sizeid){
            count = $('#' + colorid + "_" + sizeid + "_count").val();
            $.ajax({
                type: 'POST',
                data: {
                    product : proid,
                    color   : colorid,
                    size    : sizeid,
                    brand   : {{$product->product_brand_id}},
                    count   : count,
                    _token  : $('#token').val()
                },
                url : "{{url('user/addFavourite')}}",
                success : function(data){
                    alert(data);
                }
            });
        }
    </script>
@endsection