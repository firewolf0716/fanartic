@extends('layouts.adminlayout')

@section('title', 'Dashboard|fanaRtic')

@section('content')
<link href="{{ url('')}}/gvendor/select2/dist/css/select2.min.css" rel="stylesheet">

<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>{{ __('admin.国別関税編集') }}</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-md-12 col-sm-12 col-xs-12">
        {!! Form::open(array('id' => 'form_add','url'=>'admin/duty/countryeditpost','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
        {{ Form::hidden('id', $country_duty->id)}}
        <div class="x_panel">
            <div class="x_title">
                <h4>{{ __('admin.国別関税編集') }}</h4>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">{{ __('関税グループ') }}<span
                                class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <select type="text" id="duty_id" name="duty_id" required="required" class="form-control col-md-7 col-xs-12">
                            @foreach($duties as $duty)
                            <option value="{{$duty->id}}" @if($country_duty->duty->id == $duty->id) selected
                                    @endif>{{$duty->name}}（{{$duty->num}}%）</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">{{ __('admin.国名前') }}<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <select type="text" id="country" name="country" required="required" class="form-control col-md-7 col-xs-12">
                            @foreach($countries as $code => $country)
                            <option value="{{$code}}" @if($country_duty->country == $code) selected
                                    @endif>{{$country}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">{{ __('関税') }}(%)<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="country_duty " name="country_duty" required="required" class="form-control col-md-7 col-xs-12" value="{{ $country_duty->country_duty }}" placeholder="">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">{{ __('admin.登録日時') }}</label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="created_at" name="created_at" class="form-control col-md-7 col-xs-12" readonly value="{{$country_duty->created_at}}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">{{ __('admin.変更日時') }}</label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="updated_at" name="updated_at" class="form-control col-md-7 col-xs-12" readonly value="{{$country_duty->updated_at}}">
                    </div>
                </div>
                <div class="ln_solid"></div>
                <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <button id="btnSubmit" type="submit" class="btn btn-warning">{{ __('更新する') }}</button>
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

<script type="text/javascript">
    $("select").select2();

    $('#btnReset').click(function() {
        document.getElementById("form_add").reset();
    });

    $('#btnSubmit').click(function() {
        $('#form_add').parsley();
    });
</script>
@endsection
