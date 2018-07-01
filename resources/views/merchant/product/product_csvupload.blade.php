@extends('layouts.admindefault')

@section('title', 'Merchant Product Add|fanaRtic')

@section('content')
<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>Home / Products Bulk Upload</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="col-md-6">
                <div class="x_panel">
                    <div class="x_title">
                        <h4>Sample Document</h4>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <div class="alert alert-info alert-dismissible fade in" role="alert">
                            <strong>
                                <ul>
                                    <li>Use sample document for product bulk upload</li> 
                                    <li>Upload only .CSV format file</li>
                                    <li>Don't changes first row of the sample Document</li>
                                    <li>Enter correct Merchant & Store Names</li>
                                    <li>Follow this steps to upload Images:
                                        <ul>
                                            <li>Your Images size must be 800 x 800 px</li>
                                            <li>Images accept only .jpeg & .png format</li>
                                            <li>Format should be like: /zip_file_name/1.jpg(name of image in ZIP)</li>
                                            <li>Don't Upload images from Local computer like: C:\Users\Public\Pictures\Sample Pictures\test.png</li>
                                        </ul>
                                    </li>
                                    <li>Enter correct top category, main category, sub category, second sub category names in csv file</li>
                                    <li>Upload below 500 rows.</li>
                                </ul>
                            </strong>
                        </div>
                        <button type="button" class="btn btn-success navbar-right" onclick="downloadSampleCsvFile()">Download Sample Document</button>
                    </div>
                </div>        
            </div>
            <div class="col-md-6">
                <div class="x_panel">
                    <div class="x_title">
                        <h4>Upload</h4>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content" style="padding-Top:40px">
                        <label class="control-label">Please Select ZIP File</label>
                        <div class="form-group" style="margin-Bottom:30px">
                            <div class="input-group">
                                <input type="file" class="col-sm-4 form-control"/>
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-success">ZIP Upload</button>
                                </span>
                            </div>
                        </div>
                        <label class="control-label">Please Select CSV File</label>
                        <div class="form-group" style="margin-Bottom:30px">
                            <div class="input-group">
                                <input type="file" class="col-sm-4 form-control"/>
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-success">CSV Upload</button>
                                </span>
                            </div>
                        </div>
                    </div>
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

    <script>
        function downloadSampleCsvFile() {
            // alert("{{ URL::asset('public/product_csv/shoppingmall.csv') }}");
            // var frmWindow = getIFrameWindow();
            // var fileName = frmWindow.document.getElementById("fileName");
            // fileName.value = encodeURI("{{ URL::asset('public/product_csv/shoppingmall.csv') }}");
            
            // var frm = frmWindow.document.getElementById("frmFile");
            // frm.submit();
            Redirect::to('merchant/product/export_template_csv');
        }
    </script>
@endsection