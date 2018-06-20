@extends('layouts.adminlayout_table')

@section('title', 'Dashboard|fanaRtic')

@section('content')

<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>Admin / Manage Merchants</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h4>Approved Merchants</h4>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th style="text-align:center">ID</th>
                            <th style="text-align:center">Name</th>
                            <th style="text-align:center">Admin</th>
                            <th style="text-align:center">Details</th>
                            <th style="text-align:center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($merchants_live as $ml)
                        <tr>
                            <td width="10%" style="text-align:center">{{$ml->merchant_id}}</td>
                            <td width="20%" style="text-align:center">{{$ml->merchant_name}}</td>
                            <td width="20%" style="text-align:center">{{$ml->merchant_admin}}</td>
                            <td width="10%" style="text-align:center">
                                <a href="{{ url('admin/merchant_detaill/'.$ml->merchant_id) }}"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
                            </td>
                            <td width="10%" style="text-align:center">
                                @if($ml->merchant_open == 1)
                                <a href="{{ url('admin/merchant_close/'.$ml->merchant_id) }}"><span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span></a>
                                @else
                                <a href="{{ url('admin/merchant_open/'.$ml->merchant_id) }}"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                @endif
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h4>Non Approved Merchants</h4>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th style="text-align:center">ID</th>
                            <th style="text-align:center">Name</th>
                            <th style="text-align:center">Admin</th>
                            <th style="text-align:center">Details</th>
                            <th style="text-align:center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($merchants_wait as $mw)
                        @if($mw->merchant_status == 0)
                        <tr>
                            <td width="10%" style="text-align:center">{{$mw->merchant_id}}</td>
                            <td width="20%" style="text-align:center">{{$mw->merchant_name}}</td>
                            <td width="20%" style="text-align:center">{{$mw->merchant_admin}}</td>
                            <td width="10%" style="text-align:center">
                                <a href="{{ url('admin/merchant_editw/'.$mw->merchant_id) }}"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
                            </td>
                            <td width="10%" style="text-align:center">
                                <a style="margin:10px"  href="{{ url('admin/merchant_detailw/'.$mw->merchant_id) }}"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span></a>
                                <a style="margin:10px"  href="{{ url('admin/merchant_reject/'.$mw->merchant_id) }}"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
                            </td>
                        </tr>
                        @endif
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h4>Rejected Merchants</h4>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th style="text-align:center">ID</th>
                            <th style="text-align:center">Name</th>
                            <th style="text-align:center">Admin</th>
                            <th style="text-align:center">Details</th>
                            <th style="text-align:center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($merchants_wait as $mj)
                        @if($mj->merchant_status == 2)
                        <tr>
                            <td width="10%" style="text-align:center">{{$mj->merchant_id}}</td>
                            <td width="20%" style="text-align:center">{{$mj->merchant_name}}</td>
                            <td width="20%" style="text-align:center">{{$mj->merchant_admin}}</td>
                            <td width="10%" style="text-align:center">
                                <a href="{{ url('admin/merchant_detailw/'.$mj->merchant_id) }}"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
                            </td>
                            <td width="10%" style="text-align:center">
                                <a href="{{ url('admin/merchant_approvew/'.$mj->merchant_id) }}"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span></a>
                            </td>
                        </tr>
                        @endif
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
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

    <!-- bootstrap-datetimepicker -->    
    <script src="{{ URL::asset('public/gvendor/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js') }}"></script>
    
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
    
<script type="text/javascript">
    
</script>
@endsection
