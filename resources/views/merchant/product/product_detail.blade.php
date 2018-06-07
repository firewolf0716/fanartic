@extends('layouts.admindefault')

@section('title', 'Merchant Product Add|fanaRtic')

@section('content')
<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>Home / Product details</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h4>Product details</h4>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product_title">Product Title</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" id="product_title" name="product_title" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_title}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Top Category</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" id="product_title" name="product_title" class="control-label col-md-7 col-xs-12">{{$productinfo->mc_name}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Main Category</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" id="product_title" name="product_title" class="control-label col-md-7 col-xs-12">{{$productinfo->smc_name}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Sub Category</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" id="product_title" name="product_title" class="control-label col-md-7 col-xs-12">{{$productinfo->sb_name}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Second Sub Category</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" id="product_title" name="product_title" class="control-label col-md-7 col-xs-12">{{$productinfo->ssb_name}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Product Quantity</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" id="product_title" name="product_title" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_qty}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Original Price</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" id="product_title" name="product_title" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_price}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Discounted Price</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" id="product_title" name="product_title" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_disprice}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Tax Percentage</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" id="product_title" name="product_title" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_inctax}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Shipping Amount</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" id="product_title" name="product_title" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_shippamt}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Description</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" id="product_title" name="product_title" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_desc}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Specification</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" id="product_title" name="product_title" class="control-label col-md-7 col-xs-12"></label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Product Color</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" id="product_title" name="product_title" class="control-label col-md-7 col-xs-12"></label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Delivery Days</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" id="product_title" name="product_title" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_delivery}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
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
@endsection