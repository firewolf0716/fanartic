@extends('layouts.adminlayout')

@section('title', 'Dashboard|fanaRtic')

@section('content')

<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>Admin / Edit Brand</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-md-12 col-sm-12 col-xs-12">
        {!! Form::open(array('id' => 'form_add','url'=>'admin/brand/editpost','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
        {{ Form::hidden('brand_id', $brand->brand_id)}}
        <div class="x_panel">
            <div class="x_title">
                <h4>Edit Brand</h4>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <div class="form-group">
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
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">名前<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="brand_name" name="brand_name" required="required" class="form-control col-md-7 col-xs-12" value="{{$brand->brand_name}}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">英名<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="brand_name_en" name="brand_name_en" required="required" class="form-control col-md-7 col-xs-12" value="{{$brand->brand_name_en}}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">デザイン種類<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <select id="select_design" name="select_design" class="form-control" required>
                            <option value="">--Select Design Type--</option>
                            @if($brand->brand_design == 1)
                                <option value="1" selected>カバー写真と説明のみ</option>
                                <option value="2">オリジナルTOPページ</option>
                            @elseif($brand->brand_design == 2)
                                <option value="1">カバー写真と説明のみ</option>
                                <option value="2" selected>オリジナルTOPページ</option>
                            @endif
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
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">登録日時</label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="create_date" name="create_date" class="form-control col-md-7 col-xs-12" readonly value="{{$brand->brand_create}}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">変更日時</label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="update_date" name="update_date" class="form-control col-md-7 col-xs-12" readonly value="{{$brand->brand_update}}">
                    </div>
                </div>

                <div class="ln_solid"></div>
                <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <button id="btnSubmit" type="submit" class="btn btn-warning">Edit Brand</button>
                        <button id="btnReset" type="button" class="btn btn-primary">Reset</button>
                    </div>
                </div>
            </div>
        </div>
        {{ Form::close() }}
    </div>
</div>

    <!-- jQuery -->
    <script src="{{ url('')}}/public/gvendor/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="{{ URL::asset('public/gvendor/bootstrap/dist/js/bootstrap.min.js') }}"></script>
    <!-- FastClick -->
    <script src="{{ URL::asset('public/gvendor/fastclick/lib/fastclick.js') }}"></script>
    <!-- NProgress -->
    <script src="{{ URL::asset('public/gvendor/nprogress/nprogress.js') }}"></script>
    <!-- Chart.js -->
    <script src="{{ URL::asset('public/gvendor/Chart.js/dist/Chart.min.js') }}"></script>
    <!-- jQuery Sparklines -->
    <script src="{{ URL::asset('public/gvendor/jquery-sparkline/dist/jquery.sparkline.min.js') }}"></script>
    <!-- Flot -->
    <script src="{{ URL::asset('public/gvendor/Flot/jquery.flot.js') }}"></script>
    <script src="{{ URL::asset('public/gvendor/Flot/jquery.flot.pie.js') }}"></script>
    <script src="{{ URL::asset('public/gvendor/Flot/jquery.flot.time.js') }}"></script>
    <script src="{{ URL::asset('public/gvendor/Flot/jquery.flot.stack.js') }}"></script>
    <script src="{{ URL::asset('public/gvendor/Flot/jquery.flot.resize.js') }}"></script>
    <!-- Flot plugins -->
    <script src="{{ URL::asset('public/gvendor/flot.orderbars/js/jquery.flot.orderBars.js') }}"></script>
    <script src="{{ URL::asset('public/gvendor/flot-spline/js/jquery.flot.spline.min.js') }}"></script>
    <script src="{{ URL::asset('public/gvendor/flot.curvedlines/curvedLines.js') }}"></script>
    <!-- DateJS -->
    <script src="{{ URL::asset('public/gvendor/DateJS/build/date.js') }}"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="{{ URL::asset('public/gvendor/moment/min/moment.min.js') }}"></script>
    <script src="{{ URL::asset('public/gvendor/bootstrap-daterangepicker/daterangepicker.js') }}"></script>

    <!-- Custom Theme Scripts -->


    <script src="{{ URL::asset('public/gvendor/validator/validator.js') }}"></script>
    <!-- Parsley -->
    <script src="{{ URL::asset('public/gvendor/parsleyjs/dist/parsley.min.js') }}"></script>
    <!-- starrr -->
    <script src="{{ URL::asset('public/gvendor/starrr/dist/starrr.js') }}"></script>
    <!-- Select2 -->
    <script src="{{ URL::asset('public/gvendor/select2/dist/js/select2.full.min.js') }}"></script>
    <!-- jQuery Tags Input -->
    <script src="{{ URL::asset('public/gvendor/jquery.tagsinput/src/jquery.tagsinput.js') }}"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="{{ URL::asset('public/gvendor/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js') }}"></script>
    <script src="{{ URL::asset('public/gvendor/jquery.hotkeys/jquery.hotkeys.js') }}"></script>
    <script src="{{ URL::asset('public/gvendor/google-code-prettify/src/prettify.js') }}"></script>
    <!-- Dropzone.js -->
    <script src="{{ URL::asset('public/gvendor/dropzone/dist/min/dropzone.min.js') }}"></script>
    <!-- Bootstrap Colorpicker -->
    <script src="{{ URL::asset('public/gvendor/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js') }}"></script>
    <!-- Custom Theme Scripts -->
    <script src="{{ URL::asset('public/js/custom.js') }}"></script>
    <script src="{{ url('') }}/public/js/multi_select_dropdown.js"></script>
<script type="text/javascript">
    $('#btnReset').click(function(){
        document.getElementById("form_add").reset();
        $('#create_date').val('{{$brand->brand_create}}');
        $('#update_date').val('{{$brand->brand_update}}');
    });
    $('#btnSubmit').click(function(){
        $('#update_date').val(moment().format('YYYY/MM/DD hh:mm:ss'));
        $('#form_add').parsley();
    });
    $('#malls').multiselect({
        includeSelectAllOption: true
    });
</script>
@endsection
