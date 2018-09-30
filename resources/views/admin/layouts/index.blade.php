@extends('layouts.adminlayout')

@section('title', $title[0] . '一覧')

@section('content')

    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>{{ $title[0] }}一覧
                    <small>{{ $title[1] }} List</small>
                </h3>
            </div>
        </div>

        <div class="clearfix"></div>

        @if(count($forms))
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>検索
                                <small>Search</small>
                            </h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <br/>
                            <form method="get" class="form-horizontal form-label-left">
                                @foreach($search_forms as $key => $form)
                                    @switch($form['type'])
                                    @case('hide')
                                    @break
                                    @case('textarea')
                                    @include('admin.parts.form.textarea')
                                    @break
                                    @case('html')
                                    @include('admin.parts.form.html')
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
                                @endforeach

                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                        <button class="btn btn-primary" type="submit">検索</button>
                                        <button class="btn btn-primary" type="reset">リセット</button>
                                    </div>
                                </div>
                            </form>


                        </div>
                    </div>
                </div>
            </div>
        @endif
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_content">
                        <table id="datatable-buttons" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                @foreach ($tables['fields'] as $key => $val)
                                    <th class="{{ $val['class'] }}">{{ $val['label'] }}</th>
                                @endforeach
                                <th>&emsp;</th>
                            </tr>
                            </thead>
                            <tbody data-model="<?= $title[1]; ?>">
                            @foreach ($lists as $list)
                                <tr id="item_{{ $list->id }}">
                                    @foreach ($tables['fields'] as $key => $val)
                                        <td @if($key == 'sort') class="handle" @endif>
                                            @if (is_array($val['value']))
                                                @foreach($val['value'] as $k=>$v)
                                                    @if($k) <br/> @endif
                                                    {{ $list->{$v} }}
                                                @endforeach
                                            @else
                                                @php $vv = explode("->", $val['value']); @endphp
                                                @if(count($vv) == 3)
                                                    {{ $list->{$vv[0]}->{$vv[1]}->{$vv[2]} }}
                                                @elseif(count($vv) == 2)
                                                    {{ $list->{$vv[0]}->{$vv[1]} }}
                                                @elseif(count($vv) == 1)
                                                    {{ $list->{$val['value']} }}
                                                @endif
                                            @endif
                                        </td>
                                    @endforeach
                                    <td>
                                        @foreach ($tables['actions']['content'] as $key => $val)
                                            @switch($val['action'])
                                            @case('show')
                                            <a href="{{ action('Admin\\'.$title[1].'Controller@show', $list->id)
                                                    }}">
                                                {{ $val['label'] }}
                                            </a>
                                            @break
                                            @case('edit')
                                            <a href="{{ action('Admin\\'.$title[1].'Controller@edit', $list->id)
                                                    }}">
                                                {{ $val['label'] }}
                                            </a>
                                            @break
                                            @case('auth_image')
                                            <a href="{{ action('Admin\\'.$title[1].'Controller@authImage', $list->id)
                                                    }}">
                                                {{ $val['label'] }}
                                            </a>
                                            @break
                                            @case('destroy')
                                            @component('admin.parts.btn.del')
                                            @slot('table', strtolower($title[1]))
                                            @slot('id', $list->id)
                                            @endcomponent
                                            @break
                                            @case('behost')
                                            @component('admin.parts.btn.behost')
                                            @slot('list', $list)
                                            @endcomponent
                                            @break
                                            @default
                                            @endswitch
                                        @endforeach
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

    <!-- bootstrap-datetimepicker -->
    <script src="{{ URL::asset('gvendor/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js') }}"></script>

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

    <script>
        function deleteConfirm(genre_id) {
            var answer = confirm('本当に削除しますか?');
            if(!answer){
                return;
            }
            window.location = "{{ url('admin/genre/delete') }}" + "/" + genre_id;
        }
    </script>
@endsection
