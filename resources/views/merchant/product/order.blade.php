@extends('layouts.merchant_layout')

@section('title', 'Merchant Product Add|fanaRtic')

@section('content')

    <!-- Begin: life time stats -->
        <div class="portlet light">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-basket font-green-sharp"></i>
                    <span class="caption-subject font-green-sharp bold uppercase">注文リスト</span>
                    <span class="caption-helper">注文を管理する...</span>
                </div>
                <div class="actions">
                    <div class="btn-group">
                        <a class="btn btn-default btn-circle" href="javascript:;" data-toggle="dropdown">
                        <i class="fa fa-share"></i>
                        <span class="hidden-480">
                        Tools </span>
                        <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-right">
                            <li>
                                <a href="javascript:;">
                                Export to Excel </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                Export to CSV </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                Export to XML </a>
                            </li>
                            <li class="divider">
                            </li>
                            <li>
                                <a href="javascript:;">
                                Print Invoices </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="portlet-body">
                <div class="table-container">
<<<<<<< HEAD
                    <!-- <div class="table-actions-wrapper">
                        <span>
                        </span>
                        <select class="table-group-action-input form-control input-inline input-small input-sm">
                            <option value="">Select...</option>
                            <option value="Cancel">Cancel</option>
                            <option value="Cancel">Hold</option>
                            <option value="Cancel">On Hold</option>
                            <option value="Close">Close</option>
                        </select>
                        <button class="btn btn-sm yellow table-group-action-submit"><i class="fa fa-check"></i> Submit</button>
                    </div> -->
=======
>>>>>>> c519269a2665d5be95b61e9fc9757a923ab1e2b3
                    <table class="table table-striped table-bordered table-hover" id="datatable_orders">
                    <thead>
                    <tr role="row" class="heading">
                        <th width="2%">
                            <input type="checkbox" class="group-checkable">
                        </th>
                        <th width="5%">
<<<<<<< HEAD
                             Order&nbsp;#
                        </th>
                        <th width="10%">
                             status
                        </th>
                        <th width="15%">
                             merchant
                        </th>
                        <th width="15%">
                             customer
                        </th>
                        <th width="10%">
                             customer_info
                        </th>
                        <th width="10%">
                             ship_info
                        </th>
                        <th width="10%">
                             order_time
                        </th>
                        <th width="10%">
                             payment_time
                        </th>
                        <th width="10%">
                             ship_time
                        </th>
                        <th width="10%">
                             Actions
=======
                             受注&nbsp;#
                        </th>
                        <th width="7%">
                             ステータス
                        </th>
                        <th width="14%">
                             顧客
                        </th>
                        <th width="14%">
                             顧客
                        </th>
                        <th width="10%">
                             顧客情報
                        </th>
                        <th width="10%">
                             発送情報
                        </th>
                        <th width="10%">
                             受注日時
                        </th>
                        <th width="10%">
                             入金日時
                        </th>
                        <th width="10%">
                             発送日時
                        </th>
                        <th width="15%">
                             行動
>>>>>>> c519269a2665d5be95b61e9fc9757a923ab1e2b3
                        </th>
                    </tr>
                    <tr role="row" class="filter">
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                            <select name="status" class="form-control form-filter input-sm">
                                <option value="">Select...</option>
<<<<<<< HEAD
                                @foreach ($status_list as $status)                               
                                <option value="{{key($status)}}" class="btn btn-xs {{key($status)}}">{{current($status)}}</option>
=======
                                @foreach ($status_list as $key => $status)                           
                                <option value="{{$key}}" class="btn btn-xs {{$status[0]}}">{{$status[1]}}</option>
>>>>>>> c519269a2665d5be95b61e9fc9757a923ab1e2b3
                                @endforeach
                            </select>
                        </td>
                        <td>
<<<<<<< HEAD
                            <input type="text" class="form-control form-filter input-sm" name="merchant_id">
                        </td>
                        <td>
                            <input type="text" class="form-control form-filter input-sm" name="customer_id">
=======
                            <input type="text" class="form-control form-filter input-sm" name="merchant_name">
                        </td>
                        <td>
                            <input type="text" class="form-control form-filter input-sm" name="customer_name">
>>>>>>> c519269a2665d5be95b61e9fc9757a923ab1e2b3
                        </td>
                        <td>
                            <input type="text" class="form-control form-filter input-sm" name="customer_info">
                        </td>
                        <td>
                            <input type="text" class="form-control form-filter input-sm" name="ship_info">
                        </td>
                        <td>
                            <div class="input-group date date-picker margin-bottom-5" data-date-format="dd/mm/yyyy">
                                <input type="text" class="form-control form-filter input-sm" readonly name="order_time_from" placeholder="From">
                                <span class="input-group-btn">
                                <button class="btn btn-sm default" type="button"><i class="fa fa-calendar"></i></button>
                                </span>
                            </div>
                            <div class="input-group date date-picker" data-date-format="dd/mm/yyyy">
                                <input type="text" class="form-control form-filter input-sm" readonly name="order_time_to" placeholder="To">
                                <span class="input-group-btn">
                                <button class="btn btn-sm default" type="button"><i class="fa fa-calendar"></i></button>
                                </span>
                            </div>
                        </td>
                        <td>
                            <div class="input-group date date-picker margin-bottom-5" data-date-format="dd/mm/yyyy">
                                <input type="text" class="form-control form-filter input-sm" readonly name="payment_time_from" placeholder="From">
                                <span class="input-group-btn">
                                <button class="btn btn-sm default" type="button"><i class="fa fa-calendar"></i></button>
                                </span>
                            </div>
                            <div class="input-group date date-picker" data-date-format="dd/mm/yyyy">
                                <input type="text" class="form-control form-filter input-sm" readonly name="payment_time_to" placeholder="To">
                                <span class="input-group-btn">
                                <button class="btn btn-sm default" type="button"><i class="fa fa-calendar"></i></button>
                                </span>
                            </div>
                        </td>
                        <td>
                            <div class="input-group date date-picker margin-bottom-5" data-date-format="dd/mm/yyyy">
                                <input type="text" class="form-control form-filter input-sm" readonly name="ship_time_from" placeholder="From">
                                <span class="input-group-btn">
                                <button class="btn btn-sm default" type="button"><i class="fa fa-calendar"></i></button>
                                </span>
                            </div>
                            <div class="input-group date date-picker" data-date-format="dd/mm/yyyy">
                                <input type="text" class="form-control form-filter input-sm" readonly name="ship_time_to" placeholder="To">
                                <span class="input-group-btn">
                                <button class="btn btn-sm default" type="button"><i class="fa fa-calendar"></i></button>
                                </span>
                            </div>
                        </td>
                        <td>
                            <div class="margin-bottom-5">
<<<<<<< HEAD
                                <button class="btn btn-sm yellow filter-submit margin-bottom"><i class="fa fa-search"></i> Search</button>
                            </div>
                            <button class="btn btn-sm red filter-cancel"><i class="fa fa-times"></i> Reset</button>
=======
                                <button class="btn btn-sm yellow filter-submit margin-bottom"><i class="fa fa-search"></i> サーチ</button>
                            </div>
                            <button class="btn btn-sm red filter-cancel"><i class="fa fa-times"></i> リセット</button>
>>>>>>> c519269a2665d5be95b61e9fc9757a923ab1e2b3
                        </td>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                    </table>
                </div>
            </div>
        </div>
    <!-- End: life time stats -->

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
    <!-- <script src="{{ URL::asset('gvendor/bootstrap-daterangepicker/daterangepicker.js') }}"></script> -->

    <!-- bootstrap-datetimepicker -->    
    <!-- <script src="{{ URL::asset('gvendor/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js') }}"></script> -->
    
    <!-- Custom Theme Scripts -->


    <script src="{{ URL::asset('gvendor/validator/validator.js') }}"></script>
    <!-- Parsley -->
    <script src="{{ URL::asset('gvendor/parsleyjs/dist/parsley.min.js') }}"></script>
    <!-- starrr -->
    <script src="{{ URL::asset('gvendor/starrr/dist/starrr.js') }}"></script>
    <!-- Select2 -->
    <!-- <script src="{{ URL::asset('gvendor/select2/dist/js/select2.full.min.js') }}"></script> -->
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
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script src="{{ url('gvendor/select2/select2.min.js')}}"></script>
    <!-- <script src="{{ url('gvendor/datatables/media/js/jquery.dataTables.min.js')}}"></script> -->
    <script src="{{ url('gvendor/datatables/media/js/jquery.dataTables.js')}}"></script>
    <script src="{{ url('gvendor/datatables/plugins/bootstrap/dataTables.bootstrap.js')}}"></script>
    <script src="{{ url('js/global/datatable.js')}}"></script>
    <script src="{{ url('gvendor/bootstrap-datepicker/js/bootstrap-datepicker.js')}}"></script>
    <script src="{{ url('js/ecommerce-orders.js')}}"></script>
    <!-- END PAGE LEVEL PLUGINS -->

<script>
    var _token = '{{ csrf_token() }}';
    
    $(document).ready(function(){
        EcommerceOrders.init(); // manage order firewolf
    });
</script>

@endsection