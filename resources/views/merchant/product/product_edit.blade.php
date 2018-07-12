@extends('layouts.admindefault')

@section('title', 'Merchant Product Edit|fanaRtic')

@section('content')
<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>Home / Edit Product</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            {!! Form::open(array('id' => 'form_product_add','url'=>'merchant/product/editpost','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
            {{ Form::hidden('product_id', $product->product_id)}}
            {{ Form::hidden('merchant_id', $merchant->merchant_id)}}
                <div class="x_panel">
                    <div class="x_title">
                        <h4>Edit Product</h4>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">販売方法<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <select id="product_salemethod" name="product_salemethod" class="form-control" required>
                                    <option value="">--Select Sale Type--</option>
                                    <option value="1">通常販売</option>
                                    <option value="2">商品ごとの期間限定販売</option>
                                    <option value="3">CLOSED販売</option>
                                    <option value="4">抽選販売</option>
                                    <option value="5">受注販売</option>
                                    <option value="6">ASK</option>
                                    <option value="7">オークション</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">販売期間<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="control-group">
                                    <div class="controls">
                                        <div class="input-prepend input-group">
                                            <span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                                            <input type="text" name="product_salerange" id="reservation" class="form-control" value="{{$product->product_salerange}}" required/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">ブランド<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <select class="form-control" name="product_brand" id="product_brand">
                                    <option value="">--Select Brand--</option>
                                    @foreach($brands as $brand)
                                    <option value="{{$brand->brand_id}}">{{$brand->brand_name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">トップ カテゴリ</label>
                            <div class=" a col-md-4 col-sm-6 col-xs-12">
                                <select id="top_category" name="top_category" class="form-control" required>
                                    <option value="">--トップ カテゴリ 選択--</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">メイン カテゴリ</label>
                            <div class=" a col-md-4 col-sm-6 col-xs-12">
                                <select id="main_category" name="main_category" class="form-control" required>
                                    <option value="">--メイン カテゴリ 選択--</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">サブ カテゴリ</label>
                            <div class=" a col-md-4 col-sm-6 col-xs-12">
                                <select id="sub_category" name="sub_category" class="form-control" required>
                                    <option value="">--サブ カテゴリ 選択--</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">親商品<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <select class="form-control" name="product_parent" id="product_parent">
                                    <option value="">--Select Parent Product--</option>
                                    @foreach($product_parents as $product_parent)
                                    @if($product_parent->product_id != $product->product_id)
                                    <option value="{{$product_parent->product_id}}">{{$product_parent->product_name}}</option>
                                    @endif
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">イベント<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <select class="form-control" name="product_event" id="product_event">
                                    <option value="">--Select Event--</option>
                                    @foreach($events as $event)
                                    <option value="{{$event->event_id}}">{{$event->event_title}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">商品コード<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="number" id="product_code" name="product_code" required="required" class="form-control col-md-7 col-xs-12" value="{{$product->product_code}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">商品名<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="text" id="product_name" name="product_name" required="required" class="form-control col-md-7 col-xs-12" value="{{$product->product_name}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">商品名カナ<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="text" id="product_name_kana" name="product_name_kana" required="required" class="form-control col-md-7 col-xs-12" value="{{$product->product_name_kana}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">内容詳細名<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="text" id="product_name_detail" name="product_name_detail" required="required" class="form-control col-md-7 col-xs-12" value="{{$product->product_name_detail}}">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">送料の有無<span class="required">*</span></label>
                            <div class="radio1 col-md-4 col-sm-6 col-xs-12">
                                <label><input type="radio" value="0" name="postage_type" id="postage_type" checked>有料</label>
                                <label><input type="radio" value="1" name="postage_type" id="postage_type">無料</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">送料<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="number" id="postage" name="postage" class="form-control col-md-7 col-xs-12" required>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">納期 ID<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="number" id="delivery_id" name="delivery_id" class="form-control col-md-7 col-xs-12" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">配送 ID<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="number" id="shipping_id" name="shipping_id" class="form-control col-md-7 col-xs-12" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">在庫管理<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <select class="form-control" name="stock_type" id="stock_type">
                                    <option value="1">項目別在庫</option>
                                    <option value="2" selected>通常在庫</option>
                                    <option value="3">無限</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">最大注文数<span class="required"></span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="number" id="max_order_count" name="max_order_count" class="form-control col-md-7 col-xs-12">
                            </div>
                        </div>



                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">販売価格<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="number" id="product_price_sale" name="product_price_sale" required="required" class="form-control col-md-7 col-xs-12" value="{{$product->product_price_sale}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">参考価格<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="number" id="product_price_ref" name="product_price_ref" required="required" class="form-control col-md-7 col-xs-12" value="{{$product->product_price_ref}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">参考価格<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="text" id="product_price_law" name="product_price_law" required="required" class="form-control col-md-7 col-xs-12" value="{{$product->product_price_law}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">消費税フラグ<span class="required">*</span></label>
                            <div class="radio col-md-4 col-sm-6 col-xs-12">
                                @if($product->product_taxflag == 0)
                                    <label><input type="radio" value="0" name="product_taxflag" checked>税込</label>
                                    <label><input type="radio" value="1" name="product_taxflag">税別</label>
                                @else
                                    <label><input type="radio" value="0" name="product_taxflag">税込</label>
                                    <label><input type="radio" value="1" name="product_taxflag" checked>税別</label>
                                @endif
                            </div>
                        </div>
                        <div id="div_images">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">画像<span class="required">*</span></label>

                                <div class="col-md-4 col-sm-6 col-xs-12">
                                @php 
                                    $file_get  = $product->product_image; 
                                    $file_get_path =  explode("/**/",$file_get,-1); 
                                    $img_count = count($file_get_path);
                                @endphp
                                @for($j=0 ; $j< $img_count; $j++)
                                    @if($file_get_path[$j] !='')
                                        @php $pro_img = $file_get_path[$j]; @endphp
                                        @php $prod_path = url('').'/images/products/'.$pro_img; @endphp
                                        <div style="float:left; max-width:219px; margin-right: 10px;">
                                            <img style="height:70px; width:70px;" src="{{$prod_path}}" id="{{'existing_img_'.$j}}">
                                            <br>
                                            <button class="btn-small" type="button" id="{{'existing_btn_'.$j}}" onClick="onRemoveImg('{{$j}}')">Remove</button>
                                        </div>
                                        {{ Form::hidden('existing_img_'.$j, $pro_img)}}
                                    @endif
                                @endfor
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12"></span></label>
                                <div class="col-md-3 col-sm-6 col-xs-12" id="div-product-image">
                                    <input type="file" name="product_img_1" class="form-control">
                                </div>
                                <div class="col-md-2 col-sm-6 col-xs-12">
                                    <button class="btn" type="button" id="btnProductImage">Add</button>
                                </div>
                            </div>
                            {{ Form::hidden('proimg_ct', $img_count, array('id' => 'proimg_ct'))}}
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">商品状態<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <select class="form-control" name="product_old_status" id="product_old_status">
                                    <option value="">--Select Product Status--</option>
                                    @foreach($productstates as $productstate)
                                    <option value="{{$productstate->productstate_id}}">{{ $productstate->productstate_name.' : '.$productstate->productstate_details }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">カラー<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <!-- <select class="form-control" name="product_color" id="product_color"> -->
                                <select class="form-control" name="product_color[]" id="product_color" multiple="multiple" required>
                                    @foreach($colors as $color)
                                        <?php $selected = false; ?>
                                        @foreach($selectedColors as $selectedColor)
                                            @if($color->color_id == $selectedColor)
                                                <?php $selected = true; ?>
                                                @break
                                            @endif
                                        @endforeach
                                        @if($selected == true)
                                            <option value="{{$color->color_id}}" style="background:{{ $color->color_value }}" selected>{{$color->color_name}}</option>
                                        @else
                                            <option value="{{$color->color_id}}" style="background:{{ $color->color_value }}">{{$color->color_name}}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">サイズカテゴリ<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <select class="form-control" name="product_sizeCategory" id="product_sizeCategory" required>
                                    <option value="">--Select Size Category--</option>
                                    @foreach($sizeCategorys as $sizeCategory)
                                    <option value="{{$sizeCategory->sizecategory_id}}">{{$sizeCategory->sizecategory_name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">商品重量<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="number" id="product_weight" name="product_weight" required="required" class="form-control col-md-7 col-xs-12" value="{{$product->product_weight}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">シーズン<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="text" id="product_season" name="product_season" required="required" class="form-control col-md-7 col-xs-12" value="{{$product->product_season}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">生産地<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="text" id="product_place" name="product_place" required="required" class="form-control col-md-7 col-xs-12" value="{{$product->product_place}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">素材<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="text" id="product_material" name="product_material" required="required" class="form-control col-md-7 col-xs-12" value="{{$product->product_material}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">メモ<span class="required">*</span></label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="text" id="product_memo" name="product_memo" required="required" class="form-control col-md-7 col-xs-12" value="{{$product->product_memo}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">在庫管理<span class="required">*</span></label>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">ステータス<span class="required">*</span></label>
                            <div class="radio col-md-4 col-sm-6 col-xs-12">
                                @if($product->product_status == 1)
                                <label><input type="radio" value="1" name="product_status" checked>有効</label>
                                <label><input type="radio" value="0" name="product_status">無効</label>
                                @else
                                <label><input type="radio" value="1" name="product_status">有効</label>
                                <label><input type="radio" value="0" name="product_status" checked>無効</label>
                                @endif
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">登録日時</label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="text" id="create_date" name="create_date" class="form-control col-md-7 col-xs-12" readonly value="{{$product->product_create}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">変更日時</label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="text" id="update_date" name="update_date" class="form-control col-md-7 col-xs-12" readonly value="{{$product->product_update}}">
                            </div>
                        </div>

                        <div class="ln_solid"></div>
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <button id="btnSubmit" type="submit" class="btn btn-warning">Edit Product</button>
                                <button id="btnReset" type="button" class="btn btn-primary">Reset</button>
                            </div>
                        </div>
                    </div>
                </div>
            {{ Form::close() }}
        </div>
    </div>
</div>
{{ Form::hidden('merchant_id', $merchant_id, array('id' => 'merchant_id'))}}
    <!-- jQuery -->
    <script src="{{ url('')}}/gvendor/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="{{ URL::asset('gvendor/bootstrap/dist/js/bootstrap.min.js') }}"></script>
    <!-- FastClick -->
    <script src="{{ URL::asset('gvendor/fastclick/lib/fastclick.js') }}"></script>
    <!-- NProgress -->
    <script src="{{ URL::asset('gvendor/nprogress/nprogress.js') }}"></script>
    <!-- Chart.js -->
    <script src="{{ URL::asset('gvendor/Chart.js/dist/Chart.min.js') }}"></script>
    <!-- jQuery Sparklines -->
    <script src="{{ URL::asset('gvendor/jquery-sparkline/dist/jquery.sparkline.min.js') }}"></script>
    <!-- Flot -->
    <script src="{{ URL::asset('gvendor/Flot/jquery.flot.js') }}"></script>
    <script src="{{ URL::asset('gvendor/Flot/jquery.flot.pie.js') }}"></script>
    <script src="{{ URL::asset('gvendor/Flot/jquery.flot.time.js') }}"></script>
    <script src="{{ URL::asset('gvendor/Flot/jquery.flot.stack.js') }}"></script>
    <script src="{{ URL::asset('gvendor/Flot/jquery.flot.resize.js') }}"></script>
    <!-- Flot plugins -->
    <script src="{{ URL::asset('gvendor/flot.orderbars/js/jquery.flot.orderBars.js') }}"></script>
    <script src="{{ URL::asset('gvendor/flot-spline/js/jquery.flot.spline.min.js') }}"></script>
    <script src="{{ URL::asset('gvendor/flot.curvedlines/curvedLines.js') }}"></script>
    <!-- DateJS -->
    <script src="{{ URL::asset('gvendor/DateJS/build/date.js') }}"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="{{ URL::asset('gvendor/moment/min/moment.min.js') }}"></script>
    <script src="{{ URL::asset('gvendor/bootstrap-daterangepicker/daterangepicker.js') }}"></script>

    <!-- Custom Theme Scripts -->


    <script src="{{ URL::asset('gvendor/validator/validator.js') }}"></script>
    <!-- Parsley -->
    <script src="{{ URL::asset('gvendor/parsleyjs/dist/parsley.min.js') }}"></script>
    <!-- starrr -->
    <script src="{{ URL::asset('gvendor/starrr/dist/starrr.js') }}"></script>
    <!-- Select2 -->
    <script src="{{ URL::asset('gvendor/select2/dist/js/select2.full.min.js') }}"></script>
    <!-- jQuery Tags Input -->
    <script src="{{ URL::asset('gvendor/jquery.tagsinput/src/jquery.tagsinput.js') }}"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="{{ URL::asset('gvendor/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js') }}"></script>
    <script src="{{ URL::asset('gvendor/jquery.hotkeys/jquery.hotkeys.js') }}"></script>
    <script src="{{ URL::asset('gvendor/google-code-prettify/src/prettify.js') }}"></script>
    <!-- Dropzone.js -->
    <script src="{{ URL::asset('gvendor/dropzone/dist/min/dropzone.min.js') }}"></script>
    <!-- Bootstrap Colorpicker -->
    <script src="{{ URL::asset('gvendor/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js') }}"></script>
    <!-- Custom Theme Scripts -->
    <script src="{{ URL::asset('js/custom.js') }}"></script>

    <script src="{{ url('') }}/js/multi_select_dropdown.js"></script>
    <script type="text/javascript">
    <script src="{{ url('') }}/js/multi_select_dropdown.js"></script>
    
</script>
<script>
    $(function(){
        $('#product_salemethod').val("{{$product->product_salemethod}}");
        $('#product_brand').val("{{$product->product_brand_id}}");
        $('#product_event').val("{{$product->product_event}}");
        $('#product_old_status').val("{{$product->product_old_status}}");
        $('#product_color').val("{{$product->product_color}}");
        $('#product_parent').val("{{$product->product_parent_id}}");
        $('#product_sizeCategory').val("{{$product->product_size_category_id}}");
        addTopCategorys(true);
        addSizes(true);
    });
    
    $('#btnProductImage').click(function(){
        var imgct = Number($('#proimg_ct').val()) + 1;
        if(imgct >= 10) return;
        $ctrl = '<div class="form-group"> <label class="control-label col-md-3 col-sm-3 col-xs-12"></label> <div class="radio col-md-3 col-sm-6 col-xs-12" id="div-product-image">';
        $ctrl = $ctrl + '<input type="file"/ name="product_img_'+imgct+'" class="form-control"></div></div>';
        $('#div_images').append($ctrl);
        $('#proimg_ct').val(imgct);
    });
    $('#btnSubmit').click(function(){
        $('#form_product_add').parsley();
    });

    function onRemoveImg(id){
        $('#existing_img_' + id).remove();
        $('#existing_btn_' + id).remove();
    }

    function addTopCategorys(isInit) {
        $.ajax( {
            type: 'get',
            url: '{{url('admin/category/get-top-categorys')}}',
            success: function(data){
                $('#top_category').find('option').remove().end().append('<option value="">--トップ カテゴリ 選択--</option>');
                for(var i = 0; i < data.length; i++){
                    var item = data[i];
                    var opt = document.createElement('option');
                    opt.value = item.category_id;
                    opt.innerHTML = item.category_name;
                    document.getElementById('top_category').appendChild(opt);
                }

                if (isInit) {
                    $('#top_category').val("{{$top_category_id}}");
                    addMainCategorys(isInit);
                }
            }
        });
    }
    function addMainCategorys(isInit) {
        var top = $('#top_category').val();
        $('#main_category').find('option').remove().end().append('<option value="">--メイン カテゴリ 選択--</option>');
        $('#main_category').find('option').remove().end().append('<option value="">--サブ カテゴリ 選択--</option>');

        if(top != ""){
            $.ajax( {
                type: 'get',
                url: '{{url('admin/category/get-main-categorys')}}' + "/" + top,
                success: function(data) {
                    for(var i = 0; i < data.length; i++){
                        var item = data[i];
                        var opt = document.createElement('option');
                        opt.value = item.category_id;
                        opt.innerHTML = item.category_name;
                        document.getElementById('main_category').appendChild(opt);
                    }

                    if (isInit) {
                        $('#main_category').val("{{$main_category_id}}");
                        addSubCategorys(isInit);
                    }
                }
            });
        }
    }
    function addSubCategorys(isInit) {
        var top = $('#top_category').val();
        var main = $('#main_category').val();

        $('#sub_category').find('option').remove().end().append('<option value="">--サブ カテゴリ 選択--</option>');

        if(top != ""){
            $.ajax( {
                type: 'get',
                url: '{{url('admin/category/get-sub-categorys')}}' + "/" + main,
                success: function(data) {
                    for(var i = 0; i < data.length; i++){
                        var item = data[i];
                        var opt = document.createElement('option');
                        opt.value = item.category_id;
                        opt.innerHTML = item.category_name;
                        document.getElementById('sub_category').appendChild(opt);
                    }
                    if (isInit) {
                        $('#sub_category').val("{{$categoryinfo->category_id}}");
                    }
                }
            });
        }
    }

    $('#top_category').change(function() {
        addMainCategorys(false);
    });
    $('#main_category').change(function() {
        addSubCategorys(false);
    });
    $('#sub_category').change(function() {
        updateParentProduct();
    });
    $('#product_brand').change(function() {
        updateParentProduct();
    });
    function updateParentProduct() {
        $('#product_parent').find('option').remove().end().append('<option value="">--Select Parent Product--</option>');

        var category = $('#sub_category').val();
        var brand = $('#product_brand').val();
        if (category == "" || brand == "") {
            return;
        }
        if(top != ""){
            $.ajax( {
                type: 'get',
                url: '{{url('merchant/product/getparentprefers')}}' + "/" + category + "/" + brand,
                success: function(data){
                    for(var i = 0; i < data.length; i++){
                        var item = data[i];
                        var opt = document.createElement('option');
                        opt.value = item.product_id;
                        opt.innerHTML = item.product_name;
                        document.getElementById('product_parent').appendChild(opt);
                    }
                }
            });
        }
    }
    $('#product_color').multiselect({
        includeSelectAllOption: true
    });

    $('input[type=radio][name=postage_type]').change(function() {
        if (this.value == "0") {
            $('#postage').prop('required', true);
        } else {
            $('#postage').prop('required', false);
        }
    });
    $('#stock_type').change(function(){
        $isEnable = false;
        if ($('#stock_type').val() == 1) {
            $isEnable = true;
        } else {
            $isEnable = false;
        }

        $('#product_price_sale').prop('disabled', !$isEnable);
        $('#product_price_ref').prop('disabled', !$isEnable);
        $('#product_price_law').prop('disabled', !$isEnable);

        $('#product_price_sale').prop('required', $isEnable);
        $('#product_price_ref').prop('required', $isEnable);
        $('#product_price_law').prop('required', $isEnable);
    });
</script>
@endsection