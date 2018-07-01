@extends('layouts.admindefault')

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

                <div class="form-group">
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
                </div>

                <div class="x_content">
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
                      <tbody>
                        <!-- @foreach($products as $product)
                        <tr>
                            <td>{{$product->product_id}}</td>
                            <td style="text-align:center">{{$product->product_name}}</td>
                            <td style="text-align:right">{{$product->product_price_sale}}</td>
                            <td style="text-align:right">{{$product->product_count}}</td>
                            @if($product->product_status == 1)
                                <td style="text-align:center">有効</td>
                            @else
                                <td style="text-align:center">無効</td>
                            @endif
                            <td>
                                @php 
                                    $file_get  = $product->product_image; 
                                    $file_get_path =  explode("/**/",$file_get,-1); 
                                    $img_count = count($file_get_path);
                                    $pro_img = $file_get_path[0];
                                    $prod_path = url('').'/public/images/products/'.$pro_img;
                                @endphp
                                <img style="height:20px;" src="{{ $prod_path }}">
                            </td>
                            <td style="text-align:center">
                                <a style="margin:10px" href="{{ url('merchant/product/edit')}}/{{$product->product_id}}"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
                                <a style="margin:10px" href="#"><span class="glyphicon glyphicon-trash" onclick="deleteConfirm({{$product->product_id}})" aria-hidden="true"></span></a>
                            </td>
                        </tr>
                        @endforeach -->
                      </tbody>
                    </table>
                </div>
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

    <!-- Datatables -->
    <script src="{{ url('')}}/public/gvendor/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="{{ url('')}}/public/gvendor/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="{{ url('')}}/public/gvendor/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="{{ url('')}}/public/gvendor/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="{{ url('')}}/public/gvendor/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="{{ url('')}}/public/gvendor/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="{{ url('')}}/public/gvendor/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="{{ url('')}}/public/gvendor/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="{{ url('')}}/public/gvendor/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="{{ url('')}}/public/gvendor/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="{{ url('')}}/public/gvendor/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="{{ url('')}}/public/gvendor/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="{{ url('')}}/public/gvendor/jszip/dist/jszip.min.js"></script>
    <script src="{{ url('')}}/public/gvendor/pdfmake/build/pdfmake.min.js"></script>
    <script src="{{ url('')}}/public/gvendor/pdfmake/build/vfs_fonts.js"></script>

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

        window.location = "{{ url('merchant/product/delete')}}" + "/" + priduct_id;
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

        showProducts(1);
    });

    function showProducts(product_status) {
        var table = $('#datatable').DataTable();
        table.clear();
        $.ajax( {
            type: 'get',
            url: '{{url('merchant/product/manage')}}' + "/" + product_status,
            success: function(data) {
                for(var i = 0; i < data.length; i++){
                    var item = data[i];
                    var status = "有効";

                    if (item.product_status == 0) {
                        status = "無効";
                    }
                    var product_id = item.product_id;

                    var file_get  = item.product_image;
                    var file_get_path = file_get.split("/**/");
                    var image = '<img style="height:20px;" src="{{url("")}}./public/images/products/';
                    image += file_get_path[0];
                    image += '">';

                    var actions = '<td style="text-align:center">';
                    actions += '<a style="margin:10px" href="{{ url('merchant/product/edit')}}/';
                    actions += product_id;
                    actions += '"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>';
                    actions += '<a style="margin:10px" href="#"><span class="glyphicon glyphicon-trash" onclick="deleteConfirm(';
                    actions += product_id;
                    actions += ')" aria-hidden="true"></span></a></td>';

                    table.row.add([item.product_id, item.product_name, item.product_price_sale, item.product_count, status, image, actions]).draw( false );
                }
            }
        });
    }

    $('#product_status').change(function() {
        showProducts($('#product_status').val());
    });


    function removeProduct(id) {
        var answer = confirm('本当に削除しますか?');
        if(!answer){
            return;
        }

        var table = $('#datatable').DataTable();
        for (i = 0; i < table.rows().count(); i++) {
            if (table.cell(i, 0).data() == id) {
                table.row(i).remove().draw(false);
                window.location = "{{ url('merchant/product/delete') }}" + "/" + mall_id;
                return;
            }
        }
    }

</script>

@endsection