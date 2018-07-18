@extends('layouts.admindefault')

@section('title', 'Merchant Product Add|fanaRtic')

@section('content')
<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>Home / Cash On Delivery Products</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h4>Sold Products</h4>
                    <div class="clearfix"></div>
                </div>

                <div class="x_content">
                <table id="datatable" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>ID</th>
                          <th>Product Code</th>
                          <th>Product Name</th>
                          <th>Amount</th>
                          <th>Unit</th>
                          <th>Price</th>
                          <th>User Name</th>
                          <th>User Address</th>
                          <th>Actions</th>
                        </tr>
                      </thead>
                      <tbody>
                        @php $i = 0; @endphp
                        @foreach ($cashProducts as $cashProduct)
                            @php $i += 1; @endphp
                            <tr>
                                <td>{{$i}}</td>
                                <td>{{$cashProduct->product_code}}</td>
                                <td>{{$cashProduct->product_name}}</td>
                                <td>{{$cashProduct->product_amount}}</td>
                                <td>{{$cashProduct->product_price}}</td>
                                <td>{{$cashProduct->product_amount * $cashProduct->product_price}}</td>
                                <td>{{$cashProduct->customer_name_first}} {{$cashProduct->customer_name_second}}</td>
                                <td>{{$cashProduct->address_name}}</td>
                                <td style="text-align:center">
                                    <a href="#"><span class="glyphicon glyphicon-ok" onclick="accept({{$i}}, {{$cashProduct->buy_history_id}})" aria-hidden="true"></span></a>
                                    <a href="#"><span class="glyphicon glyphicon-remove" onclick="decline({{$i}}, {{$cashProduct->buy_history_id}})" aria-hidden="true"></span></a>
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
    $(document).ready(function(){
        // $('#dtFrom').datetimepicker({
        //     format: 'YYYY/MM/DD'
        // });
        // $('#dtTo').datetimepicker({
        //     format: 'YYYY/MM/DD'
        // });
    });

    // function deleteConfirm(priduct_id) {
    //     var answer = confirm('本当に削除しますか?');
    //     if(!answer){
    //         return;
    //     }
    //     removeProduct(priduct_id)
    // }

    // $(function(){
    //     var table = $('#datatable').DataTable({
    //         destroy: true,
    //         columnDefs: [
    //             { "targets": 0, "className": "text-left", "width": "4%" },
    //             { "targets": 1, "className": "text-left" },
    //             { "targets": 2, "className": "text-right" },
    //             { "targets": 3, "className": "text-right" },
    //             { "targets": 4, "className": "text-center" },
    //             { "targets": 5, "className": "text-center" },
    //             { "targets": 6, "className": "text-center" },
    //             { "targets": 7, "className": "text-center" },
    //             { "targets": 8, "className": "text-center" }
    //         ]
    //     });

    //     showProducts();
    // });

    // function showProducts() {
    //     var table = $('#datatable').DataTable();
    //     table.clear();
    //     $.ajax( {
    //         type: 'get',
    //         url: '{{url('merchant/product/get_cash_on_delivery')}}' + "/" + $merchant_id,
    //         success: function(data) {
    //             for(var i = 0; i < data.length; i++) {
    //                 table.row.add([i + 1, item.product_code, item.product_name, item.product_amount, item.product_price
    //                     , item.product_amount * item.product_price, item.customer_name_first + ' ' + item.customer_name_second
    //                     , item.address_name, item.address_name).draw( false );
    //             }
    //         }
    //     });
    // }

    function accept(id, buy_history_id) {
        var table = $('#datatable').DataTable();
        
        $.ajax( {
            type: 'get',
            url: '{{url('merchant/product/accept_pay_shipping_delivery')}}' + "/" + buy_history_id,
            success: function(data) {
                var cell = table.cell(id - 1, 8);
                cell.data( 'Accepted' ).draw();
            }
        });
    }

    function decline(id, buy_history_id) {
        var table = $('#datatable').DataTable();
        $.ajax( {
            type: 'get',
            url: '{{url('merchant/product/decline_pay_shipping_delivery')}}' + "/" + buy_history_id,
            success: function(data) {
                var cell = table.cell(id - 1, 8);
                cell.data('Declined');
            }
        });
    }

</script>

@endsection