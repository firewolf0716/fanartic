@extends('layouts.merchant_layout')

@section('title', '商品一覧')

@section('content')


    <div class="">
        <div class="page-title">
            <div class="title_left" style="margin-Bottom:20px">
                <h3>商品一覧</h3>
            </div>
        </div>
        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>検索</h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <br />
                        <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">First Name <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Last Name <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="last-name" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name / Initial</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="middle-name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div id="gender" class="btn-group" data-toggle="buttons">
                                        <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                            <input type="radio" name="gender" value="male"> &nbsp; Male &nbsp;
                                        </label>
                                        <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                            <input type="radio" name="gender" value="female"> Female
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Birth <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input id="birthday" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                </div>
                            </div>
                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                    <button class="btn btn-primary" type="button">Cancel</button>
                                    <button class="btn btn-primary" type="reset">Reset</button>
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h4>{{$product_status == 1 ? '販売中商品' : '売切商品'}}</h4>
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

                    <input type="hidden" id="product_status" name="product_status" value="{{$product_status}}"
                           class="form-control col-md-7 col-xs-12">

                    <div id="x_content">
                        <table id="datatable" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th><input type="checkbox" id="check-all" class="flat"></th>
                                <th>商品画像</th>
                                <th>商品名</th>
                                <th>販売価格</th>
                                <th>商品管理番号</th>
                                <th>在庫数</th>
                                <th>期間限定</th>
                                <th>&emsp;</th>
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
        $(document).ready(function () {
            $('#dtFrom').datetimepicker({
                format: 'YYYY/MM/DD'
            });
            $('#dtTo').datetimepicker({
                format: 'YYYY/MM/DD'
            });
        });

        function deleteConfirm(priduct_id) {
            var answer = confirm('本当に削除しますか?');
            if (!answer) {
                return;
            }
            removeProduct(priduct_id)
        }

        $(function () {
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

            $.ajax({
                type: 'get',
                url: '{{url('merchant/product/manage')}}' + '/' + product_status,
                success: function (data) {
                    for (var i = 0; i < data.length; i++) {

                        var item = data[i];
                        var status = "有効";

                        if (item.product_status == 0) {
                            status = "無効";
                        }
                        var product_id = item.product_id;
                        alert(product_id);

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
                        table.row.add([
                            '<input type="checkbox" class="flat">',
                            image,
                            item.product_name,
                            item.product_price,
                            item.product_code,
                            product_count,
                            item.sale_span,
                            actions
                        ]).draw(false);
                    }
                }
            });
        }

        $('#product_status').change(function () {
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
