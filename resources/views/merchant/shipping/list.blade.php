@extends('layouts.admindefault')

@section('title', 'Merchant Shipping List|fanaRtic')

@section('content')
<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>Home / Merchant Shipping List</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h4>Merchant Shipping List</h4>
                    <div class="clearfix"></div>
                </div>

                <div class="x_content">
                <table id="datatable" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>ID</th>
                          <th>名前</th>
                          <th>地域</th>
                          <th>出発拠点</th>
                          <th>配送期間</th>
                          <th>ステータス</th>
                          <th></th>
                        </tr>
                      </thead>
                      <tbody>
                        @php $i = 0; @endphp
                        @foreach ($merchant_shippings as $merchant_shipping)
                            @php $i += 1; @endphp
                            <tr>
                                <td>{{$i}}</td>
                                <td>{{$merchant_shipping->shipping_name}}</td>
                                @if ($merchant_shipping->shipping_state == 1)
                                    <td>国内</td>
                                @else
                                    <td>海外</td>
                                @endif                         
                                <td>{{$merchant_shipping->shipping_start_position}}</td>
                                <td>{{$merchant_shipping->shipping_min_duration}} ~ {{$merchant_shipping->shipping_max_duration}}</td>
                                @if ($merchant_shipping->shipping_status == 1)
                                    <td>国内</td>
                                @else
                                    <td>海外</td>
                                @endif
                                <td style="text-align:center">
                                    <a href="{{url('merchant/shipping/edit')}}/{{$merchant_shipping->shipping_id}}"><span class="glyphicon glyphicon-edit" onclick="editShipping({{$i}}, {{$merchant_shipping->shipping_id}})" aria-hidden="true"></span></a>
                                    <a href="#"><span class="glyphicon glyphicon-trash" onclick="removeShippingConfirm({{$i}}, {{$merchant_shipping->shipping_id}})" aria-hidden="true"></span></a>
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
    function removeShippingConfirm(id, shipping_id) {
        var answer = confirm('本当に削除しますか?');
        if(!answer){
            return;
        }
        removeProduct(priduct_id)
    }
    function removeShipping(id, shipping_id) {
        var table = $('#datatable').DataTable();
        
        window.location = "{{ url('merchant/shipping/remove') }}" + "/" + shipping_id;
        // $.ajax( {
        //     type: 'get',
        //     url: '{{url('merchant/shipping/remove')}}' + "/" + shipping_id,
        //     success: function(data) {
        //         var table = $('#datatable').DataTable();
        //         for (i = 0; i < table.rows().count(); i++) {
        //             if (table.cell(i, 0).data() == id) {
        //                 table.row(i).remove().draw(false);
        //                 return;
        //             }
        //         }
        //     }
        // });
    }
</script>

@endsection