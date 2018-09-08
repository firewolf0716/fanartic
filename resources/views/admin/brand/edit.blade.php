@extends('layouts.adminlayout')

@section('title', 'Dashboard|fanaRtic')

@section('content')

<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>ブランドを編集する</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-md-12 col-sm-12 col-xs-12">
        {!! Form::open(array('id' => 'form_add','url'=>'admin/brand/editpost','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
        {{ Form::hidden('brand_id', $brand->brand_id)}}
        {{ Form::hidden('brand_image', $brand->brand_image)}}
        <div class="x_panel">
            <div class="x_title">
                <h4>ブランドを編集する</h4>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <!-- <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">モール<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <select class="form-control" name="brand_mall[]" id="malls" multiple="multiple">
                            @foreach($malls as $mall)
                                <?php $selected=false?>
                                @foreach($selmalls as $selmall)
                                    @if($mall->mall_id == $selmall->mall_id)
                                    <option value="{{$mall->mall_id}}" selected>{{$mall->mall_name}}</option>
                                    <?php $selected=true?>
                                    @break                                    
                                    @endif
                                @endforeach
                                @if($selected == false)
                                <option value="{{$mall->mall_id}}">{{$mall->mall_name}}</option>
                                @endif
                            @endforeach
                        </select>
                    </div>
                </div> -->

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">名前<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="brand_name" name="brand_name" required="required" class="form-control col-md-7 col-xs-12" value="{{$brand->brand_name}}" placeholder="モール名を日本語で入力してください">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">英名<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="brand_name_en" name="brand_name_en" required="required" class="form-control col-md-7 col-xs-12" value="{{$brand->brand_name_en}}" placeholder="モール名を英語で入力してください">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">デザイン種類<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <select id="select_design" name="select_design" class="form-control" required>
                            <option value="">--デザインタイプを選択--</option>
                            <option value="1"
                            @if($brand->brand_design == 1)
                                selected
                            @endif
                                >カバー写真と説明のみ</option>
                            <option value="2" 
                            @if($brand->brand_design == 2)
                                selected
                            @endif
                                >オリジナルTOPページ</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">ステータス<span class="required">*</span></label>
                    <div class="radio col-md-4 col-sm-6 col-xs-12">
                        @if($brand->brand_status == 0)
                            <label><input type="radio" value="0" name="optionStatus" checked>非アクティブ</label>
                        @else
                            <label><input type="radio" value="0" name="optionStatus">非アクティブ</label>
                        @endif
                        @if($brand->brand_status == 1)
                        <label><input type="radio" value="1" name="optionStatus" checked>アクティブ</label>
                        @else
                        <label><input type="radio" value="1" name="optionStatus">アクティブ</label>
                        @endif
                        @if($brand->brand_status == 2)
                        <label><input type="radio" value="2" name="optionStatus" checked>凍結</label>
                        @else
                        <label><input type="radio" value="2" name="optionStatus">凍結</label>
                        @endif
                        @if($brand->brand_status == 3)
                        <label><input type="radio" value="3" name="optionStatus" checked>退会</label>
                        @else
                        <label><input type="radio" value="3" name="optionStatus">退会</label>
                        @endif
                    </div>
                </div>
                <div id="div_images">
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">写真<span class="required">*</span></label>
                        <div class="radio col-md-3 col-sm-6 col-xs-12" id="div-product-image">
                            <img style="height:70px; width:70px;" src="{{url("")}}/images/brands/{{$brand->brand_image}}" id="brand_image2">
                            <button class="btn-small" type="button" id="remove_brand_image" onClick="onRemoveImg()">Remove</button>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">説明<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                       <textarea class="form-control" id="brand_description" name="brand_description" cols="50" rows="10" style="margin: 0px 21px 0px 0px; height: 150px;" required>{{$brand->brand_description}}</textarea>
                    </div>
                </div>
                     <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">登録日時</label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="create_date" name="create_date" class="form-control col-md-7 col-xs-12" readonly value="{{$brand->created_at}}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">変更日時</label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="update_date" name="update_date" class="form-control col-md-7 col-xs-12" readonly value="{{$brand->updated_at}}">
                    </div>
                </div>

                <div class="ln_solid"></div>
                <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <button id="btnSubmit" type="submit" class="btn btn-warning">ブランドを編集する</button>
                        <button id="btnReset" type="button" class="btn btn-primary">リセット</button>
                    </div>
                </div>
            </div>
        </div>
        {{ Form::close() }}
    </div>
</div>

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
    $('#btnReset').click(function() {
        document.getElementById("form_add").reset();
        $('#create_date').val('{{$brand->created_at}}');
        $('#update_date').val('{{$brand->updated_at}}');

        $cstr = '<img style="height:70px; width:70px;" src="{{url("")}}/images/brands/{{$brand->brand_image}}" id="brand_image2">';
        $cstr += '<button class="btn-small" type="button" id="remove_brand_image" onClick="onRemoveImg()">Remove</button>';
        $('#div-product-image').html($cstr);
    });
    
    $('#btnSubmit').click(function() {
        $('#update_date').val(moment().format('YYYY/MM/DD hh:mm:ss'));
        $('#form_add').parsley();
    });

    $('#malls').multiselect({
        includeSelectAllOption: true
    });

    function onRemoveImg() {
        $('#div-product-image').html('<input type="file" name="brand_image_file" class="form-control" required>');
    }
</script>
@endsection
