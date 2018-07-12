@extends('layouts.adminlayout')

@section('title', 'Dashboard|fanaRtic')

@section('content')

<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>{{$toptitle}}</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-md-12 col-sm-12 col-xs-12">
        {!! Form::open(array('id' => 'form_add','url'=>'admin/category/editpost','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
        {{ Form::hidden('category_id', $category->category_id)}}
        {{ Form::hidden('categorylevel', $categorylevel)}}
        <div class="x_panel">
            <div class="x_title">
                <h4>{{$title}}</h4>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <!-- @if ($categorylevel != 1)
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">モール<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <select class="form-control" name="category_mall[]" id="malls" multiple="multiple">
                            @foreach($malls as $mall)
                                <?php $selected = false; ?>
                                @foreach($linkedMalls as $linkedMall)
                                    @if($mall->mall_id == $linkedMall->mall_id)
                                        <?php $selected = true; ?>
                                        @break
                                    @endif
                                @endforeach
                                
                                @if($selected == true)
                                    <option value="{{$mall->mall_id}}" selected>{{$mall->mall_name}}</option>
                                @else
                                    <option value="{{$mall->mall_id}}">{{$mall->mall_name}}</option>
                                @endif
                            @endforeach
                            </select>
                        </div>
                    </div>
                @endif -->

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">名前<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="category_name" name="category_name" required="required" class="form-control col-md-7 col-xs-12" value="{{$category->category_name}}" placeholder="カテゴリ名を日本語で入力してください">                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">英名<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="category_name_en" name="category_name_en" required="required" class="form-control col-md-7 col-xs-12" value="{{$category->category_name_en}}" placeholder="カテゴリ名を英語で入力してください">
                    </div>
                </div>
                @if ($categorylevel == 2)
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">サイズカテゴリ<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <select id="select_sizecategory" name="select_sizecategory" class="form-control">
                                <option value="">--サイズのカテゴリを選択--</option>
                                @foreach($sizecategorys as $sizecategory)
                                    @if($category->category_size_id == $sizecategory->sizecategory_id)
                                        <option value="{{$sizecategory->sizecategory_id}}" selected>{{$sizecategory->sizecategory_name}}</option>
                                    @else
                                        <option value="{{$sizecategory->sizecategory_id}}">{{$sizecategory->sizecategory_name}}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                    </div>
                @endif
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">登録日時</label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="create_date" name="create_date" class="form-control col-md-7 col-xs-12" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">変更日時</label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="update_date" name="update_date" class="form-control col-md-7 col-xs-12" readonly>
                    </div>
                </div>

                <div  class="form-group">
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="hidden" id="topcategoryid" name="topcategoryid" class="form-control col-md-7 col-xs-12" value="{{$topcategoryid}}" readonly>
                        <input type="hidden" id="maincategoryid" name="maincategoryid" class="form-control col-md-7 col-xs-12" value="{{$maincategoryid}}" readonly>
                    </div>
                </div>

                <div class="ln_solid"></div>
                <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <button id="btnSubmit" type="submit" class="btn btn-warning">商品カテゴリの編集</button>
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
    <script src="{{ url('') }}/js/multi_select_dropdown.js"></script>
    <script src="{{ URL::asset('js/custom.js') }}"></script>

<script type="text/javascript">
    $(function(){
        $('#create_date').val('{{$category->category_create}}');
        $('#update_date').val(moment().format('YYYY/MM/DD hh:mm:ss'));
    });

    $('#btnReset').click(function(){
        document.getElementById("form_add").reset();
        $('#create_date').val('{{$category->category_create}}');
        $('#update_date').val(moment().format('YYYY/MM/DD hh:mm:ss'));
        $('#datatable').DataTable().draw(false);
    });
    $('#btnSubmit').click(function(){
        if($('#select_parent').val() == ''){
            $('#select_mall').attr('required', 'required');
        } else {
            $('#select_mall').removeAttr('required');
        }
        $('#form_add').parsley();
    });
    $('#malls').multiselect({
        includeSelectAllOption: true
    });
</script>
@endsection


<!-- @if ($categorylevel != 1)
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">モール<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <select class="form-control" name="category_mall[]" id="malls" multiple="multiple">
                                @foreach($malls as $mall)
                                <?php $selected = false; ?>
                                    @foreach($linkedMalls as $linkedMall)
                                        @if($mall->mall_id == $linkedMall->mall_id)
                                            <?php $selected = true; ?>
                                            @break
                                        @endif
                                    @endforeach
                                    
                                    @if($selected == true)
                                        <option value="{{$mall->mall_id}}" selected>{{$mall->mall_name}}</option>
                                    @else
                                        <option value="{{$mall->mall_id}}">{{$mall->mall_name}}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">トップカテゴリ</label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <select id="topcategoryid" name="topcategoryid" class="form-control">
                            @foreach($topCategorys as $topCategory)
                                @if($topCategory->category_id == $topcategoryid)
                                    <option value="{{$topCategory->category_id}}" selected>{{$topCategory->category_name}}</option>
                                @else
                                    <option value="{{$topCategory->category_id}}">{{$topCategory->category_name}}</option>
                                @endif
                            @endforeach
                            </select>
                        </div>
                    </div>
                @endif -->