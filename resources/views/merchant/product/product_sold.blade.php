@extends('layouts.admindefault')

@section('title', 'Merchant Product Add|fanaRtic')

@section('content')
<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>Home / Sold Products</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <form id="form-filter" class="form-horizontal form-label-left">
                <div class='col-sm-3'>
                    <div class="form-group">
                        <label class="control-label col-xs-4" style="text-Align:center">From Date</label>
                        <div class='input-group date' id='dtFrom'>
                            <input type='text' name="from_date" class="form-control" />
                            <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>
                <div class='col-sm-3'>
                    <div class="form-group">
                        <label class="control-label col-xs-4" style="text-Align:center">To Date</label>
                        <div class='input-group date' id='dtTo'>
                            <input type='text' name="to_date" class="form-control" />
                            <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>
                <div class='col-sm-4'>
                    <div class="form-group">
                        <button type="submit" class="btn btn-warning col-xs-3">Search</button>
                        <button class="btn btn-primary col-xs-3" type="reset">Reset</button>
                    </div>
                </div>
            </form>

            <div class="x_panel">
                <div class="x_title">
                    <h4>Sold Products</h4>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                <table id="datatable" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>S.No</th>
                          <th>Product Name</th>
                          <th>Store Name</th>
                          <th>City</th>
                          <th>Original Price</th>
                          <th>Discounted Price</th>
                          <th>Product Image</th>
                          <th>Product details</th>
                        </tr>
                      </thead>
                      <tbody>
                        @php $i = 1 ;   @endphp
                        @if(count($products_saling)>0)
                        @foreach($products_saling as $product_list)
                        @php $product_get_img = explode("/**/",$product_list->pro_Img); @endphp
                        <tr>
                            <td>{{ $i }}</td>
                            <td>{{ substr($product_list->pro_title,0,45) }}</td>
                            <td>{{ $product_list->stor_name }}</td>
                            <td>{{ $product_list->ci_name }}</td>
                            <td>${{ $product_list->pro_price }}</td>
                            <td>${{ $product_list->pro_disprice }}</td>
                            <td>
                                <?php  $prod_path = url('').'/assets/default_image/No_image_product.png'; ?>
                                    @if($product_get_img != '')  {{-- image is null--}}
                                        @php	
                                        $pro_img = $product_get_img[0]; 
                                        $img_data = "assets/products/".$pro_img;@endphp
                                        @if(file_exists($img_data) && $pro_img !='')  {{-- image not exists in folder  --}}
                                            @php 		
                                            $prod_path = url('').'/assets/products/'.$pro_img;
                                            @endphp	 
                                        @else 
                                            @if(isset($DynamicNoImage['productImg']))
                                                @php
                                                $dyanamicNoImg_path= "assets/noimage/".$DynamicNoImage['productImg'];
                                                @endphp
                                                @if($DynamicNoImage['productImg'] !='' && file_exists($dyanamicNoImg_path))
                                                @php
                                                $prod_path = url('').'/assets/noimage/'.$DynamicNoImage['productImg'];
                                                @endphp
                                            @endif
                                        @endif										 
                                @endif
                                @else
                                    @if(isset($DynamicNoImage['productImg']))
                                        @php					
                                        $dyanamicNoImg_path= "assets/noimage/".$DynamicNoImage['productImg']; @endphp
                                        @if($DynamicNoImage['productImg'] !='' && file_exists($dyanamicNoImg_path))
                                            @php	
                                            $prod_path = url('').'/assets/noimage/'.$DynamicNoImage['productImg'];  @endphp
                                        @endif
                                    @endif
                                @endif			
                                <a href="#"><img style="height:40px;" src="{{ $prod_path }}"></a>
                            </td>
                            <td style="text-align:center">
                                <a href="{{ url('mer_product_details')."/".$product_list->pro_id }}" style="color:#077DFB">View</a>&nbsp;&nbsp;|&nbsp;
                                <a href="{{ url('mer_edit_product/'.$product_list->pro_id) }}" style="color:#077DFB">Edit</a>
                            </td>
                        </tr>
                        @php $i++;   @endphp
                        @endforeach
                        @endif
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
        $('#dtFrom').datetimepicker({
            format: 'YYYY/MM/DD'
        });
        $('#dtTo').datetimepicker({
            format: 'YYYY/MM/DD'
        });
    });
</script>

@endsection