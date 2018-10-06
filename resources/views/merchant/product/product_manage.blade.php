@extends('layouts.merchant_layout')

@section('title', '商品追加')

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
            {!! Form::open(array('id' => 'form_product_search','url'=>'merchant/product/search','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
                <div class="x_panel">
                    <div class="x_title">
                        <h4>Manage Products</h4>
                        <div class="clearfix"></div>
                    </div>

                    <input type="hidden" id="product_status" name="product_status" value="{{$product_status}}" class="form-control col-md-7 col-xs-12">

                    <div id="x_content">
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">フリーワード</label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="text" id="free_word" name="free_word" class="form-control col-md-7 col-xs-12">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">金額</label>
                            <div class="col-md-2 col-sm-6 col-xs-12">
                                <input type="number" id="min_price" name="min_price" class="form-control col-md-7 col-xs-12">                                
                            </div>
                            <div class="col-md-2 col-sm-6 col-xs-12">
                                <input type="number" id="max_price" name="max_price" class="form-control col-md-7 col-xs-12">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">期間設置</label>
                            <div class=" a col-md-4 col-sm-6 col-xs-12">
                                <select id="duration_setting" name="duration_setting" class="form-control">
                                    <option value="0">すべて</option>
                                    <option value="1">本日</option>
                                    <option value="2">今週</option>
                                    <option value="3">今月</option>
                                    <option value="4">先月</option>
                                    <option value="5">今年</option>
                                    <option value="6">過去24時間</option>
                                    <option value="7">過去1週間</option>
                                    <option value="8">過去30日</option>
                                    <option value="9">カスタム</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">期間</label>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="control-group">
                                    <div class="controls">
                                        <div class="input-prepend input-group">
                                            <span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                                            <input type="text" name="duration_range" id="reservation" class="form-control" disabled/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-4">
                                <button id="btnSubmit" type="submit" class="btn btn-warning">Search</button>
                            </div>
                        </div>
                   
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
                {{ Form::close() }}
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

    $('#btnSubmit').click(function() {
        $('#reservation').prop('disabled', false);
        $('#form_product_search').parsley();
    });

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

        showProducts();
        updateDuration();
    });

    function showProducts() {
        
        var table = $('#datatable').DataTable();
        table.clear();

        $.ajax( {
            type: 'get',
            url: '{{url('merchant/product/manage')}}' + '/' + {{$product_status}},
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

    $('#duration_setting').change(function() {
        updateDuration();
    });

    function updateDuration() {
        duration_setting = $('#duration_setting').val();
        $('#reservation').prop('disabled', true);

        var today = new Date();

        start_date = "";
        end_date = "";

        if (duration_setting == 0) {
            start_date = getDateString(today);
            end_date = getDateString(today);
        } else if (duration_setting == 1) { // 本日
            start_date = getDateString(today) + ' ' + '00:00:00';
            end_date = getDateString(today) + ' ' + getTimeString(today);
        } else if (duration_setting == 2) { // 今週
            start_date = getThisWeekStartString(today) + ' ' + '00:00:00';
            end_date = getDateString(today) + ' ' + getTimeString(today);
        } else if (duration_setting == 3) { // 今月
            start_date = getThisMonthStartString(today) + ' ' + '00:00:00';
            end_date = getDateString(today) + ' ' + getTimeString(today);
        } else if (duration_setting == 4) { // 先月
            start_date = getPreviousMonthStartString(today) + ' ' + '00:00:00';
            end_date = getPreviousMonthEndString(today) + ' ' + '23:59:59';
        } else if (duration_setting == 5) { // 今年
            start_date = getThisYearStartString(today) + ' ' + '00:00:00';
            end_date = getDateString(today) + ' ' + getTimeString(today);
        } else if (duration_setting == 6) { // 過去24時間
            start_date = getBeforeDayString(today, 1) + ' ' + getTimeString(today);
            end_date = getDateString(today) + ' ' + getTimeString(today);
        } else if (duration_setting == 7) { // 過去1週間
            start_date = getBeforeDayString(today, 7) + ' ' + getTimeString(today);
            end_date = getDateString(today) + ' ' + getTimeString(today);
        } else if (duration_setting == 8) { // 過去30日
            start_date = getBeforeDayString(today, 30) + ' ' + getTimeString(today);
            end_date = getDateString(today) + ' ' + getTimeString(today);
        } else if (duration_setting == 9) { // カスタム
            start_date = getDateString(today);
            end_date = getDateString(today);
            $('#reservation').prop('disabled', false);
        }

        $('#reservation').val(start_date + ' - ' + end_date);
    }

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

    function getDateString(date) {
        var dd = date.getDate();
        var mm = date.getMonth()+1; //January is 0!
        var yyyy = date.getFullYear();

        if (dd < 10) { dd = '0' + dd } 
        if (mm < 10) { mm = '0' + mm }

        dateString = yyyy + '/' + mm + '/' + dd;
        return dateString;
    }
    function getTimeString(date) {
        var hh = date.getHours();
        var MM = date.getMinutes();
        var ss = date.getSeconds();

        if (hh < 10) { hh = '0' + hh } 
        if (MM < 10) { MM = '0' + MM } 
        if (ss < 10) { ss = '0' + ss } 

        timeString = hh + ':' + MM + ':' + ss;
        return timeString;
    }
    function getThisWeekStartString(date) {
        weekStartDay = moment(getDateString(date), 'YYYY/MM/DD').day();
        return moment(getDateString(date), 'YYYY/MM/DD').add('days', - weekStartDay).format('YYYY/MM/DD');
    }
    function getThisMonthStartString(date) {
        return moment(getDateString(date), 'YYYY/MM/01').format('YYYY/MM/DD');
    }
    function getPreviousMonthStartString(date) {
        return moment(getDateString(date), 'YYYY/MM/01').add('months', - 1).format('YYYY/MM/DD');
    }
    function getPreviousMonthEndString(date) {
        return moment(getDateString(date), 'YYYY/MM/01').add('days', - 1).format('YYYY/MM/DD');
    }
    function getThisYearStartString(date) {
        return moment(getDateString(date), 'YYYY/01/01').format('YYYY/MM/DD');
    }
    function getBeforeDayString(date, dayCount) {
        return moment(getDateString(date), 'YYYY/MM/DD').add('days', - dayCount).format('YYYY/MM/DD');
    }
</script>

@endsection