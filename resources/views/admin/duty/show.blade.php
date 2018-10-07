@extends('layouts.adminlayout')

<<<<<<< HEAD
@section('title', $title[0] . '詳細')

@section('content')

    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>{{ $title[0] }}詳細</h3>
            </div>

        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_content">
                        <br/>
                        <form action="" class="form-horizontal">
                            @if(isset($forms['translatable']) && $forms['translatable'])
                                <div class="" role="tabpanel" data-example-id="togglable-tabs">
                                    <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#tab_content1" id="japanese-tab" role="tab" data-toggle="tab" aria-expanded="true">日本語</a>
                                        </li>
                                        <li role="presentation" class=""><a href="#tab_content2" role="tab" id="english-tab" data-toggle="tab" aria-expanded="false">英語</a>
                                        </li>
                                        <li role="presentation" class=""><a href="#tab_content3" role="tab" id="korean-tab" data-toggle="tab" aria-expanded="false">韓国語</a>
                                        </li>
                                    </ul>
                                    <div id="myTabContent" class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                                            @endif
                                            @foreach($forms as $key => $form)
                                                @if($key <> 'translatable')
                                                    <?php $form['lang'] = 'ja'; ?>
                                                    @switch($form['type'])
                                                        @case('hide')
                                                        @break
                                                        @case('textarea')
                                                        @include('admin.parts.form.textarea')
                                                        @break
                                                        @case('html')
                                                        @include('admin.parts.form.html')
                                                        @break
                                                        @case('language')
                                                        @php
                                                            $form['values'] = App\Services\CodeService::getLanguages();
                                                        @endphp
                                                        @include('admin.parts.form.select')
                                                        @break
                                                        @case('select')
                                                        @include('admin.parts.form.select')
                                                        @break
                                                        @case('datetime')
                                                        @include('admin.parts.form.datetime')
                                                        @break
                                                        @case('file')
                                                        @include('admin.parts.form.file')
                                                        @break
                                                        @case('json')
                                                        @include('admin.parts.form.json')
                                                        @break
                                                        @default
                                                        @include('admin.parts.form.text')
                                                    @endswitch
                                                @endif
                                            @endforeach
                                            @if(isset($forms['translatable']) && $forms['translatable'])
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
                                            @foreach($forms as $key => $form)
                                                @if(isset($form['translate']) && $form['translate'])
                                                    <?php $form['lang'] = 'en'; ?>
                                                    @switch($form['type'])
                                                        @case('textarea')
                                                        @include('admin.parts.form.textarea')
                                                        @break
                                                        @default
                                                        @include('admin.parts.form.text')
                                                    @endswitch
                                                @endif
                                            @endforeach
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
                                            @foreach($forms as $key => $form)
                                                @if(isset($form['translate']) && $form['translate'])
                                                    <?php $form['lang'] = 'ko'; ?>
                                                    @switch($form['type'])
                                                        @case('textarea')
                                                        @include('admin.parts.form.textarea')
                                                        @break
                                                        @default
                                                        @include('admin.parts.form.text')
                                                    @endswitch
                                                @endif
                                            @endforeach
                                        </div>
                                    </div>
                            @endif
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
=======
@section('title', 'Dashboard|fanaRtic')

@section('content')

<head>
    <!-- iCheck -->
    <link href="{{ url('')}}/gvendor/iCheck/skins/flat/green.css" rel="stylesheet">
    <link href="{{ url('')}}/gvendor/select2/dist/css/select2.min.css" rel="stylesheet">

    <style>
        @supports (zoom:2) {
            /* input[type="radio"],  input[type=checkbox]{ */
            input[type=checkbox]{
                zoom: 2;
            }
        }
        @supports not (zoom:2) {
            /* input[type="radio"],  input[type=checkbox] { */
            input[type=checkbox] {
                transform: scale(2);
                margin: 15px;
            }
        }
</style>
</head>

<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>{{ __('admin.関税管理') }}</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h4>{{ __('admin.グループ関税を追加') }}</h4>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                {!! Form::open(array('id' => 'form_add1','url'=>'admin/duty/addpost','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
                <input type="hidden" name="type" value="duty">
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">{{ __('admin.グループ名前') }}<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="duty_name" name="duty_name" required="required" class="form-control col-md-7 col-xs-12" value="" placeholder="">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">{{ __('admin.関税') }}(%)<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="group_duty " name="group_duty" required="required" class="form-control col-md-7 col-xs-12" value="" placeholder="">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="hidden" id="created_date1" name="created_date1" class="form-control col-md-7 col-xs-12" readonly>
                        <input type="hidden" id="updated_date1" name="updated_date1" class="form-control col-md-7 col-xs-12" readonly>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <button id="btnSubmit1" type="submit" onclick="" class="btn btn-warning">{{ __('admin.グループ関税を追加') }}</button>
                        <button id="btnReset1" type="button" class="btn btn-primary">{{ __('admin.リセット') }}</button>
                    </div>
                </div>
                {{ Form::close() }}
                <div class="ln_solid"></div>
                <label class="x_title">{{ __('admin.グループ関税リスト') }}</label>
                <div class="y_content">
                    <table id="datatable1" class="table table-striped table-bordered dt-responsive nowrap">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <td hidden>identify</td>
                                <th style="text-align:center">{{ __('admin.グループの') }}</th>
                                <th style="text-align:center">{{ __('admin.関税') }}</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody id="tablebody">
                        <?php $index = 0; ?>
                        @foreach($duties as $duty)
                            <?php $index += 1; ?>
                            <tr>
                                <td>{{$index}}</td>
                                <td hidden>{{$duty->id}}</td>
                                <td style="text-align:center">{{$duty->name}}</td>
                                <td style="text-align:center">{{$duty->num}}</td>
                                <td style="text-align:center">
                                    <a href="{{ url('admin/duty/edit/'.$duty->id) }}"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
                                    <a href="#"><span class="glyphicon glyphicon-trash" onclick="deleteConfirm({{$duty->id}}, 'duty')" aria-hidden="true"></span></a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>

               <div class="ln_solid"></div>
               <div class="x_title">
                   <h4>{{ __('admin.国別関税を追加') }}</h4>
                   <div class="clearfix"></div>
               </div>
               {!! Form::open(array('id' => 'form_add2','url'=>'admin/duty/addpost','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
               <div class="form-group">
                    <input type="hidden" name="type" value="country">
                   <label class="control-label col-md-3 col-sm-3 col-xs-12">{{ __('admin.グループの') }}<span class="required">*</span></label>
                   <div class="col-md-4 col-sm-6 col-xs-12">
                       <select type="text" id="group_name" name="duty_id" required="required" class="form-control col-md-7 col-xs-12">
                           @foreach($duties as $duty)
                           <option value="{{$duty->id}}">{{$duty->name}}</option>
                           @endforeach
                       </select>
                       <!-- <select class="form-control" name="brand_mall[]" id="brands" multiple="multiple">

                       </select> -->
                   </div>
               </div>

               <div class="form-group">
                   <label class="control-label col-md-3 col-sm-3 col-xs-12">{{ __('admin.国') }}<span class="required">*</span></label>
                   <div class="col-md-4 col-sm-6 col-xs-12">
                       <select type="text" id="country" name="country" required="required" class="form-control col-md-7 col-xs-12">
                           <option></option>
                            @foreach($countries as $country)
                           <option value="{{$country}}">{{$country}}</option>
                           @endforeach
                       </select>
                   </div>
               </div>

               <div class="form-group">
                   <label class="control-label col-md-3 col-sm-3 col-xs-12">{{ __('admin.関税') }}(%)<span class="required">*</span></label>
                   <div class="col-md-4 col-sm-6 col-xs-12">
                       <input type="text" id="country_duty " name="country_duty" required="required" class="form-control col-md-7 col-xs-12" value="" placeholder="">
                   </div>
               </div>

               <div class="form-group">
                   <div class="col-md-4 col-sm-6 col-xs-12">
                       <input type="hidden" id="created_date2" name="created_date2" class="form-control col-md-7 col-xs-12" readonly>
                       <input type="hidden" id="updated_date2" name="updated_date2" class="form-control col-md-7 col-xs-12" readonly>
                   </div>
               </div>

               <div class="form-group">
                   <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                       <button id="btnSubmit2" type="submit" onclick="" class="btn btn-warning">{{ __('admin.国別関税を追加') }}</button>
                       <button id="btnReset2" type="button" class="btn btn-primary">{{ __('admin.リセット') }}</button>
                   </div>
               </div>
               {{ Form::close() }}
               <div class="ln_solid"></div>
               <label class="x_title">{{ __('admin.関税 込み対象国') }}</label>
                <div class="y_content">
                    <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <td hidden></td>
                                <th style="text-align:center">{{ __('admin.国名前') }}</th>
                                <th style="text-align:center">{{ __('admin.関税') }}</th>
                                <th style="text-align:center">{{ __('admin.グループ名前') }}</th>
                                <th style="text-align:center"></th>
                            </tr>
                        </thead>
                        <tbody id="tablebody1">
                            <?php $index = 0; ?>
                            @foreach($country_duties as $country_duty)
                                <?php $index += 1; ?>
                                <tr>
                                    <td>{{$index}}</td>
                                    <td hidden>{{$country_duty->c_id}}</td>
                                    <td style="text-align:center">{{$country_duty->country}}</td>
                                    <td style="text-align:center">{{$country_duty->country_duty}}</td>
                                    <td style="text-align:center">{{$country_duty->name}}</td>
                                    <td style="text-align:center">
                                        <a href="{{ url('admin/duty/countryedit/'.$country_duty->c_id) }}"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
                                        <a href="#"><span class="glyphicon glyphicon-trash" onclick="deleteConfirm({{$country_duty->c_id}},'country')" aria-hidden="true"></span></a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
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

    <!-- Datatables -->
    <script src="{{ url('')}}/gvendor/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="{{ url('')}}/gvendor/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="{{ url('')}}/gvendor/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="{{ url('')}}/gvendor/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="{{ url('')}}/gvendor/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="{{ url('')}}/gvendor/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="{{ url('')}}/gvendor/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="{{ url('')}}/gvendor/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="{{ url('')}}/gvendor/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="{{ url('')}}/gvendor/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="{{ url('')}}/gvendor/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="{{ url('')}}/gvendor/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="{{ url('')}}/gvendor/jszip/dist/jszip.min.js"></script>
    <script src="{{ url('')}}/gvendor/pdfmake/build/pdfmake.min.js"></script>
    <script src="{{ url('')}}/gvendor/pdfmake/build/vfs_fonts.js"></script>

<script type="text/javascript">
$("select").select2();

function deleteConfirm(id, type) {
    var answer = confirm('{{ __('admin.本当に削除しますか?') }}');
    if(!answer){
        return;
    }

    if(type == 'duty')
        window.location = "{{ url('admin/duty/delete') }}" + "/" + id;
    else
        window.location = "{{ url('admin/duty/countrydelete') }}" + "/" + id;
}

    $(function(){
        $('#created_date1').val(moment().format('YYYY/MM/DD hh:mm:ss'));
        $('#updated_date1').val(moment().format('YYYY/MM/DD hh:mm:ss'));

        $('#created_date2').val(moment().format('YYYY/MM/DD hh:mm:ss'));
        $('#updated_date2').val(moment().format('YYYY/MM/DD hh:mm:ss'));
        var table = $('#datatable').DataTable({
            destroy: true,
            columnDefs: [
                {
                    "targets": 0,
                    "className": "text-left",
                    "width": "4%"
                },
                {
                    "targets": 1,
                    "className": "text-center",
                },
                {
                    "targets": 2,
                    "className": "text-center",
                },
                {
                    "targets": 3,
                    "className": "text-center",
                },
                {
                    "targets": 4,
                    "className": "text-center",
                }
            ]
        });
    });


    $('#btnReset1').click(function(){
        document.getElementById("form_add1").reset();
    });

    $('#btnReset2').click(function(){
        document.getElementById("form_add2").reset();
    });

    $('#btnSubmit1').click(function(){
        $('#update_date').val(moment().format('YYYY/MM/DD hh:mm:ss'));
        $('#form_add1').parsley();
    });

    $('#btnSubmit2').click(function(){
        $('#update_date').val(moment().format('YYYY/MM/DD hh:mm:ss'));
        $('#form_add2').parsley();
    });

</script>

>>>>>>> 26450f5c01057c5dd18fb2729d8fb859c8271288
@endsection
