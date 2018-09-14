@extends('layouts.merchant_layout')

@section('title', 'Merchant Product Add|fanaRtic')

@section('content')

<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>Shipping Add</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-md-12 col-sm-12 col-xs-12">
        {!! Form::open(array('id' => 'form_add','url'=>'merchant/shipping/addpost','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}

        <div class="x_panel">
            <div class="x_title">
                <h4>Shipping Add</h4>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
            <div class="form-group">
                <input type="hidden" id="mall_category" name="mall_category">

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">名前<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="shipping_name" name="shipping_name" required="required" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">英名<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="shipping_name_en" name="shipping_name_en" required="required" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">地域<span class="required">*</span></label>
                    <div class="radio col-md-4 col-sm-6 col-xs-12">
                        <label><input type="radio" value="1" name="shipping_state" checked>国内</label>
                        <label><input type="radio" value="0" name="shipping_state">海外</label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">出発拠点<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="shipping_start_position" name="shipping_start_position" required="required" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">メモ</label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="shipping_memo" name="shipping_memo" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">最低限配送期間<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="number" id="shipping_min_duration" name="shipping_min_duration" required="required" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">最大限配送期間<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="number" id="shipping_max_duration" name="shipping_max_duration" required="required" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>
                

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">お届け日時指定<span class="required">*</span></label>
                    <div class="radio col-md-4 col-sm-6 col-xs-12">
                        <label><input type="radio" value="1" name="shipping_limit_date_set" id="shipping_limit_date_set_1">設定</label>
                        <label><input type="radio" value="0" name="shipping_limit_date_set" id="shipping_limit_date_set_2" checked>解除</label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12"></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" class="form-control has-feedback-left" id="single_cal2" placeholder="First Name" aria-describedby="inputSuccess2Status2" name="shipping_limit_date" disabled>
                        <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
                        <span id="inputSuccess2Status2" class="sr-only">(success)</span>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">お届け日時の表示日数<span class="required">*</span></label>
                    <div class="radio col-md-4 col-sm-6 col-xs-12">
                        <label><input type="radio" value="1" name="shipping_limit_duration_set" id="shipping_limit_duration_set_1">設定</label>
                        <label><input type="radio" value="0" name="shipping_limit_duration_set" id="shipping_limit_duration_set_2" checked>解除</label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12"></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="number" id="shipping_limit_duration" name="shipping_limit_duration" class="form-control col-md-7 col-xs-12" disabled>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">ステータス<span class="required">*</span></label>
                    <div class="radio col-md-4 col-sm-6 col-xs-12">
                        <label><input type="radio" value="1" name="shipping_status" checked>有効</label>
                        <label><input type="radio" value="0" name="shipping_status">無効</label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">デフォルト<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="shipping_default" name="shipping_default" required="required" class="form-control col-md-7 col-xs-12">
                    </div>
                </div>                
                <div class="form-group">
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="hidden" id="create_date" name="create_date" class="form-control col-md-7 col-xs-12" readonly>
                        <input type="hidden" id="update_date" name="update_date" class="form-control col-md-7 col-xs-12" readonly>
                        <input type="hidden" id="merchant_shipping_id" name="merchant_shipping_id" class="form-control col-md-7 col-xs-12" readonly value="{{$merchant_shipping_id}}">
                        <input type="hidden" id="merchant_shipping_price" name="merchant_shipping_price" class="form-control col-md-7 col-xs-12" readonly>
                    </div>
                </div>

                <div class="ln_solid"></div>

                <label class="x_title">料金</label>                
                <div class="y_content">
                    <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th style="text-align:center">料金</th>
                                <th style="text-align:center">描写</th>
                                <th style="text-align:center">Identify</th>
                                <th></th>
                            </tr>
                        </thead>
                    </table>
                
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">料金<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="number" id="shipping_price" name="shipping_price" class="form-control col-md-7 col-xs-12">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">描写<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="text" id="shipping_description" name="shipping_description" class="form-control col-md-7 col-xs-12">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-60 col-sm-60 col-xs-12 col-md-offset-4">
                            <button id="addPrice" type="button" class="btn btn-primary" onclick="addPrices()">料金追加</button>
                        </div>
                    </div>
                </div>

                <div class="ln_solid"></div>

                <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <button id="btnSubmit" type="submit" class="btn btn-warning">Shipping 追加</button>
                        <button id="btnReset" type="button" class="btn btn-primary">リセット</button>
                    </div>
                </div>
            </div>
        </div>
        {{ Form::close() }}
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

    <script src="{{ url('') }}/js/multi_select_dropdown.js"></script>

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
    <!-- iCheck -->
    <script src="{{ url('')}}/gvendor/iCheck/icheck.min.js"></script>

<script type="text/javascript">
    $(function(){
        $('#create_date').val(moment().format('YYYY/MM/DD hh:mm:ss'));
        $('#update_date').val(moment().format('YYYY/MM/DD hh:mm:ss'));

        var table = $('#datatable').DataTable({
            destroy: true,
            columnDefs: [
                { "targets": 0, "className": "text-left", "width": "5%" },
                { "targets": 1, "className": "text-right", "width": "10%" },
                { "targets": 2, "className": "text-left" , "width": "70%" },
                { "targets": 3, "className": "text-right", "width": "10%" },
                { "targets": 4, "className": "text-center", "width": "5%" }
            ]
        });
    });

    function addPrices() {
        var shipping_price = $('#shipping_price').val();
        var shipping_description = $('#shipping_description').val()
        if (shipping_price == '' || shipping_description == '') {
            alert("Please input 料金 and 描写.");
            return;
        }
        
        var table = $('#datatable').DataTable();
        var count = table.rows().count();
        var index = 1;
        if (count != 0) {
            index = parseInt(table.cell(table.rows().count() - 1, 0).data()) + 1;
        }
        table.row.add([index, shipping_price, shipping_description, 0, '<a><span class="glyphicon glyphicon-trash" onclick="removePrices(' + index + ')" aria-hidden="true"></span></a>']).draw( false );

        $('#shipping_price').val("");
        $('#shipping_description').val("");
    }

    $('#btnReset').click(function() {
        document.getElementById("form_add").reset();
        $('#create_date').val(moment().format('YYYY/MM/DD hh:mm:ss'));
        $('#update_date').val(moment().format('YYYY/MM/DD hh:mm:ss'));
        $('#datatable').DataTable().clear().draw(false);
    });
    
    $('#btnSubmit').click(function() {
        var table = $('#datatable').DataTable();
        var count = table.rows().count();
        // if (count == 0) {
        //     alert("Please add 料金 and 描写.");
        //     return;
        // }

        var merchant_shipping_price = "";
        for (var i = 0; i < count; i++) {
            if (i != 0) {
                merchant_shipping_price += get_level_split_string(1);
            }
            for (j = 1; j <= 3; j++) {
                if (j != 1) {
                    merchant_shipping_price += get_level_split_string(2);
                }
                merchant_shipping_price += table.cell(i, j).data();
            }
        }

        $('#merchant_shipping_price').val(merchant_shipping_price);
        $('#form_add').parsley();
    });

    function removePrices(id) {
        var table = $('#datatable').DataTable();
        for (i = 0; i < table.rows().count(); i++) {
            if (table.cell(i, 0).data() == id) {
                table.row(i).remove().draw(false);
                return;
            }
        }
    }
    $('#shipping_limit_date_set_1').on("change", function() {
        $('#single_cal2').prop('required', true);
        $('#single_cal2').prop('disabled', false);
    });
    $('#shipping_limit_date_set_2').on("change", function() {
        $('#single_cal2').prop('required', false);
        $('#single_cal2').prop('disabled', true);
    });

    $('#shipping_limit_duration_set_1').click(function() {
        $('#shipping_limit_duration').prop('required', true);
        $('#shipping_limit_duration').prop('disabled', false);
    });
    $('#shipping_limit_duration_set_2').click(function() {
        $('#shipping_limit_duration').prop('required', false);
        $('#shipping_limit_duration').prop('disabled', true);
    });


    function get_special_number(level) {
        if (level >= 10) {
            return "⓪①②③④⑤⑥⑦⑧⑨";
        }
        numbers = "⓿➊➋➌➍➎➏➐➑➒";
        return numbers.substr(level, 1);
    }
    function get_level_split_string(level) {
        return "🅛🅔🅥🅔🅛➊" + get_special_number(level);
    }
</script>

@endsection
