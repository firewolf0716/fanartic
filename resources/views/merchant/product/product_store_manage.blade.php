@extends('layouts.merchant_layout')

@section('title', 'Merchant Product Add|fanaRtic')

@section('content')
<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>Home / Manage Products</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h4>Manage Products</h4>
                    <div class="clearfix"></div>
                </div>

                <!-- <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Product Status<span class="required">*</span></label>
                    <div class=" a col-md-4 col-sm-6 col-xs-12">
                        <select id="product_status" name="product_status" class="form-control">
                            <option value="1">Store</option>
                            <option value="2">Cash on Delivery</option>
                            <option value="3">PayUmoney Shipping Delivery</option>
                            <option value="4">Shipping Delivery</option>
                            <option value="5">Sold Product</option>
                        </select>
                    </div>
                </div> -->

                <input type="hidden" id="product_status" name="product_status" value="{{$product_status}}" class="form-control col-md-7 col-xs-12">

                <div id="x_content">                   
                    <table id="datatable" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                            <th>ID</th>
                            <th>Product Name</th>
                            <th>Price</th>
                            <th>Amount</th>
                            <th>Status</th>
                            <th>Product Image</th>
                            <th>Actions</th>
                            </tr>
                        </thead>
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
        $('#dtFrom').datetimepicker({
            format: 'YYYY/MM/DD'
        });
        $('#dtTo').datetimepicker({
            format: 'YYYY/MM/DD'
        });
    });

    function deleteConfirm(priduct_id) {
        var answer = confirm('本当に削除しますか?');
        if(!answer){
            return;
        }
        removeProduct(priduct_id)
    }

    $(function(){
        var table = $('#datatable').DataTable({
            destroy: true,
            columnDefs: [
                {
                    "targets": 0, // your case first column
                    "className": "text-left",
                    "width": "4%"
                },
                {
                    "targets": 1,
                    "className": "text-left",
                },
                {
                    "targets": 2,
                    "className": "text-right",
                },
                {
                    "targets": 3,
                    "className": "text-right",
                },
                {
                    "targets": 4,
                    "className": "text-center",
                },
                {
                    "targets": 5,
                    "className": "text-center",
                },
                {
                    "targets": 6,
                    "className": "text-center",
                }
            ]
        });

        showProducts({{$product_status}});
    });

    function showProducts(product_status) {
        var table = $('#datatable').DataTable();
        table.clear();

        $.ajax( {
            type: 'get',
            url: '{{url('merchant/product/manage')}}' + '/' + product_status,
            success: function(data) {
                for(var i = 0; i < data.length; i++){
                    
                    var item = data[i];
                    var status = "有効";

                    if (item.product_status == 0) {
                        status = "無効";
                    }
                    var product_id = item.product_id;
                    
                    var image = '';
                    if (item.product_images != '') {
                        for (var j = 0; j < item.product_images.length; j++) {
                            image += '<img style="height:20px;" src="{{url("")}}/images/products/';
                            image += item.product_images[j].master_image_name;
                            image += '">'; 
                        }
                    }                    
                    
                    var actions = '<td style="text-align:center">';
                    actions += '<a style="margin:10px" href="{{ url('merchant/product/edit')}}/';
                    actions += product_id;
                    actions += '"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>';
                    if (item.stock_type != 1) {
                        actions += '<a style="margin:10px" href="{{ url('merchant/product/edit_sku')}}/';
                        actions += product_id;
                        actions += '"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span></a>';
                    }
                    actions += '<a style="margin:10px" href="#"><span class="glyphicon glyphicon-trash" onclick="deleteConfirm(';
                    actions += product_id;
                    actions += ')" aria-hidden="true"></span></a></td>';
                    
                    var product_count = item.product_count;
                    if (product_count == '' || product_count == null) {
                        product_count = 0;
                    }
                    table.row.add([i + 1, item.product_name, item.product_price, product_count, status, image, actions]).draw( false );
                }
            }
        });
    }

    $('#product_status').change(function() {
        showProducts($('#product_status').val());
    });

    function removeProduct(id) {
        var table = $('#datatable').DataTable(); 
        for (i = 0; i < table.rows().count(); i++) {
            if (table.cell(i, 0).data() == id) {
                table.row(i).remove().draw(false);
                window.location = "{{ url('merchant/product/delete')}}" + "/" + id + "/" + $('#product_status').val();
                return;
            }
        }
    }

</script>

@endsection


//         @php
//         start_date = "";
//         end_date = "";
//         current_date = date("YYYY/MM/DD H:i:s");
//         if ($duration_setting == 0) {
//             start_date = "";
//             end_date = "";
//         } else if ($duration_setting == 1) { // 本日
//             start_date = date("YYYY/MM/DD 00:00:00");
//             end_date = date("YYYY/MM/DD 23:59:59");
//         } else if ($duration_setting == 2) { // 今週
//             ts = strtotime(current_date);
//             start = (date('w', $ts) == 0) ? $ts : strtotime('last sunday', $ts);
//             start_date = date('YYYY/MM/DD 00:00:00', $start);
//             end_date = date('YYYY/MM/DD 23:59:59', strtotime('next saturday', $start));
//         } else if ($duration_setting == 3) { // 今月
//             start_date = date('YYYY/MM/01 H:i:s', strtotime(current_date));
//             end_date =  date('YYYY/MM/t H:i:s', strtotime(current_date));
//         } else if ($duration_setting == 4) { // 先月
//             start_date = date('YYYY/MM/DD H:i:s', strtotime('-1 month', strtotime(current_date)));
//             end_date =  date('YYYY/MM/DD H:i:s', strtotime('last day of -1 month', strtotime(current_date)));
//         } else if ($duration_setting == 5) { // 今年
//             start_date = date('YYYY/MM/DD H:i:s', strtotime('year', strtotime(current_date)));
//             end_date =  date('YYYY/MM/DD H:i:s', strtotime('last day of year', strtotime(current_date)));
//         } else if ($duration_setting == 6) { // 過去24時間

//         } else if ($duration_setting == 7) { // 過去1週間

//         } else if ($duration_setting == 8) { // 過去30日

//         } else if ($duration_setting == 9) { // カスタム

//         }
// @endphp