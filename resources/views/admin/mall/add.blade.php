@extends('layouts.adminlayout')

@section('title', 'Dashboard|fanaRtic')

@section('content')

<!-- <head>
<script type="text/javascript" language="javascript" src="{{ url('')}}/js/media/js/jquery.js"></script>
<script type="text/javascript" language="javascript" src="{{ url('')}}/js/media/js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf-8">
    var oTable;
    
    $(document).ready(function() {
        $('#form').submit( function() {
            var sData = oTable.$('input').serialize();
            alert( "The following data would have been submitted to the server: \n\n"+sData );
            return false;
        } );
        
        oTable = $('#dataTable').dataTable();
    } );
</script>
</head> -->

<head>
    <!-- iCheck -->
    <link href="{{ url('')}}/gvendor/iCheck/skins/flat/green.css" rel="stylesheet">

    <style>
        @supports (zoom:2) {
            /* input[type="radio"],  input[type=checkbox]{ */
            input[type=checkbox]{
                zoom: 2;
            }
        }
        @supports not (zoom:2) {
            /* input[type="radio"],  input[type=checkbox] { */
            input[type=checkbox] {
                transform: scale(2);
                margin: 15px;
            }
        }
</style>
</head>


<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>モール 追加</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-md-12 col-sm-12 col-xs-12">
        {!! Form::open(array('id' => 'form_add','url'=>'admin/mall/addpost','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}

        <div class="x_panel">
            <div class="x_title">
                <h4>モール 追加</h4>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
            <div class="form-group">
                <input type="hidden" id="mall_category" name="mall_category">

                <!-- <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">ブランド<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <select class="form-control" name="brand_mall[]" id="brands" multiple="multiple">
                            @foreach($brands as $brand)
                            <option value="{{$brand->brand_id}}">{{$brand->brand_name}}</option>
                            @endforeach
                        </select>
                    </div>
                </div> -->

                <div class="form-group">
                    <input type="hidden" id="mall_brands" name="mall_brands">
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">名前<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="mall_name" name="mall_name" required="required" class="form-control col-md-7 col-xs-12" placeholder="モール名を日本語で入力してください">
                    </div>
                </div>
                <!-- <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">ブランド<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <select class="form-control" name="mall_brands[]" id="brands" multiple="multiple">
                            @foreach($brands as $brand)
                            <option value="{{$brand->brand_id}}">{{$brand->brand_name}}</option>
                            @endforeach
                        </select>
                    </div>
                </div> -->
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">英名<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="mall_name_en" name="mall_name_en" required="required" class="form-control col-md-7 col-xs-12" placeholder="モール名を英語で入力してください">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">ステータス<span class="required">*</span></label>
                    <div class="radio col-md-4 col-sm-6 col-xs-12">
                        <label><input type="radio" value="1" name="optionValid" checked>有効</label>
                        <label><input type="radio" value="0" name="optionValid">無効</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="hidden" id="create_date" name="create_date" class="form-control col-md-7 col-xs-12" readonly>
                        <input type="hidden" id="update_date" name="update_date" class="form-control col-md-7 col-xs-12" readonly>
                    </div>
                </div>

                <div class="ln_solid"></div>

                <label class="x_title">ブランド</label>                
                <div class="y_content">
                    <table id="datatable1" class="table table-striped table-bordered dt-responsive nowrap">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <td hidden>identify</td>
                                <th style="text-align:center">名前</th>
                                <th style="text-align:center">英名</th>
                                <th style="text-align:center">ステータス</th>
                                <th style="text-align:center">接続</th>
                            </tr>
                        </thead>
                        <tbody id="tablebody">
                        <?php $index = 0; ?>
                        @foreach($brands as $brand)
                            <?php $index += 1; ?>
                            <tr>
                                <td>{{$index}}</td>
                                <th hidden>{{$brand->brand_id}}</th>
                                <th style="text-align:center">{{$brand->brand_name}}</th>
                                <th style="text-align:center">{{$brand->brand_name_en}}</th>
                                <td style="text-align:center"><img style="height:20px;" src="{{url("")}}./images/brands/{{$brand->brand_image}}"></td>
                                <th style="text-align:center"><input type="checkbox" id="check-{{$brand->brand_id}}" onclick="checkboxEdit({{$brand->brand_id}})"></th>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>

                <div class="ln_solid"></div>

                <label class="x_title">カテゴリ</label> 
                <div class="y_content">
                    <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <!-- <th hidden>identify</td> -->
                                <th style="text-align:center">トップ カテゴリ</th>
                                <th style="text-align:center">メイン カテゴリ</th>
                                <th style="text-align:center">サブ カテゴリ</th>
                                <th style="text-align:center"></th>
                            </tr>
                        </thead>
                        <!-- <tbody id="tablebody1">
                            @for ($i = 0; $i < 0; $i++)
                                <tr>
                                    <th>{{$i + 1}}</th>
                                    <th hidden>{{$selcategory->category_id}}</td>
                                    <th style="text-align:center"></th>
                                    <th style="text-align:center"></th>
                                    <th style="text-align:center"></th>
                                    <th style="text-align:center"><a><span class="glyphicon glyphicon-trash" onclick="removeCategory({{$selcategory->category_id}})" aria-hidden="true"></span></a></th>
                                </tr>
                            @endfor
                        </tbody> -->
                    </table>

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">トップ カテゴリ</label>
                        <div class=" a col-md-4 col-sm-6 col-xs-12">
                            <select id="top_category" name="top_category" class="form-control">
                                <option value="">--トップ カテゴリ 選択--</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">メイン カテゴリ</label>
                        <div class=" a col-md-4 col-sm-6 col-xs-12">
                            <select id="main_category" name="main_category" class="form-control">
                                <option value="">--メイン カテゴリ 選択--</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">サブ カテゴリ</label>
                        <div class=" a col-md-4 col-sm-6 col-xs-12">
                            <select id="sub_category" name="sub_category" class="form-control">
                                <option value="">--サブ カテゴリ 選択--</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-60 col-sm-60 col-xs-12 col-md-offset-4">
                            <button id="addcategory" type="button" class="btn btn-primary" onclick="addCategory()">カテゴリ 追加</button>
                        </div>
                    </div>
                </div>

                <div class="ln_solid"></div>

                <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <button id="btnSubmit" type="submit" onclick="updateMallCategorys()" class="btn btn-warning">モール 追加</button>
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
        addTopCategorys();

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
                    "className": "text-center",
                },
                {
                    "targets": 2,
                    "className": "text-center",
                },
                {
                    "targets": 3,
                    "className": "text-center",
                },
                {
                    "targets": 4,
                    "className": "text-center",
                }
            ]
        });
        // if ( $.fn.DataTable.isDataTable( '#datatable' ) ) {
        //     table.destroy();
        // } else {
            
        // }
    });
    function addTopCategorys() {
        $('#top_category').find('option').remove().end().append('<option value="">--トップ カテゴリ 選択--</option>');
        
        $.ajax( {
            type: 'get',
            url: '{{url('admin/category/get-top-categorys')}}',
            success: function(data){
                for(var i = 0; i < data.length; i++){
                    var item = data[i];
                    var opt = document.createElement('option');
                    opt.value = item.category_id;
                    opt.innerHTML = item.category_name;
                    document.getElementById('top_category').appendChild(opt);
                }
            }
        });
    }
    function addCategory() {
        
        if ($('#top_category').val() == '' && $('#main_category').val()) {
            return;
        }
        
        var $topCategoryName = jQuery("#top_category option:selected").text();
        var $mainCategoryName = jQuery("#main_category option:selected").text();
        var $subCategoryName = '';
        if ($('#sub_category').val() != '') {
            $subCategoryName = jQuery("#sub_category option:selected").text();
        }

        var table = $('#datatable').DataTable();

        if ($('#sub_category').val() == '') {
            var topID = $('#top_category').val();
            var mainID = $('#main_category').val();

            $.ajax( {
                type: 'get',
                url: '{{url('admin/category/get-sub-categorys')}}' + "/" + topID + "/" + mainID,
                success: function(data) {
                    for(var i = 0; i < data.length; i++){
                        var item = data[i];
                        var isExist = false;

                        for (var j = 0; j < table.rows().count(); j++) {
                            if (table.cell(j, 0).data() == item.category_id) {
                                isExist = true;
                               break;
                            }
                        }
                        
                        if (isExist == false) {
                            table.row.add([item.category_id, $topCategoryName, $mainCategoryName, item.category_name, '<a><span class="glyphicon glyphicon-trash" onclick="removeCategory(' + item.category_id + ')" aria-hidden="true"></span></a>']).draw( false );
                        }
                    }
                }
            });
        } else {
            var $categoryid = $('#sub_category').val();            
            for (i = 0; i < table.rows().count(); i++) {
                if (table.cell(i, 0).data() == $categoryid) {
                    return;
                }
            }

            table.row.add([$categoryid, $topCategoryName, $mainCategoryName, $subCategoryName, '<a><span class="glyphicon glyphicon-trash" onclick="removeCategory(' + $categoryid + ')" aria-hidden="true"></span></a>']).draw( false );
        }

        // var table = $('#datatable').DataTable();

        // var htmlstring = '<tr>';
        // htmlstring += '<td>' + $categoryid + '</td>';
        // htmlstring += '<td style="text-align:center">' + $('#sub_category').val() + '</td>';
        // htmlstring += '<td style="text-align:center">' + $('#sub_category').val() + '</td>';
        // htmlstring += '<td style="text-align:center">' + $('#sub_category').val() + '</td>';
        // htmlstring += '<td>';
        // htmlstring += '<a href="#"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>';
        // htmlstring += '<a href="#"><span class="glyphicon glyphicon-trash" onclick="deleteConfirm()" aria-hidden="true"></span></a>';
        // htmlstring += '</td>';
        // htmlstring += '</tr>';
        // $("#datatable").prepend(htmlstring);

        // $('#datatable').append(htmlstring).draw(false);

        // var idx = $('#datatable > tbody > tr').length - 1;
        // $('#datatable > tbody > tr').eq(idx).before(htmlstring);
        // $('#datatable').dataTable();

        // $(".delete-row").click(function(){
        //     $("table tbody").find('input[name="record"]').each(function(){
        //         if($(this).is(":checked")){
        //             $(this).parents("tr").remove();
        //         }
        //     });
        // });

        // document.getElementById("myTable").deleteRow(0);


               // updateMallCategorys();
    }

    function updateMallCategorys() {
        var table = $('#datatable').DataTable();
        var mall_category = "";
        for (i = 0; i < table.rows().count(); i++) {
            if (i != 0) {
                mall_category += ",";
            }
            mall_category += table.cell(i, 0).data();
        }
        $('#mall_category').val(mall_category);
    }

    $('#top_category').change(function() {
        $('#main_category').find('option').remove().end().append('<option value="">--メイン カテゴリ 選択--</option>');
        $('#sub_category').find('option').remove().end().append('<option value="">--サブ カテゴリ 選択--</option>');

        var top = $('#top_category').val();
        if(top != ""){
            $.ajax( {
                type: 'get',
                url: '{{url('admin/category/get-main-categorys')}}' + "/" + top,
                success: function(data) {
                    for(var i = 0; i < data.length; i++){
                        var item = data[i];
                        var opt = document.createElement('option');
                        opt.value = item.category_id;
                        opt.innerHTML = item.category_name;
                        document.getElementById('main_category').appendChild(opt);
                    }
                }
            });
        }
    });

    $('#main_category').change(function(){
        $('#sub_category').find('option').remove().end().append('<option value="">--サブ カテゴリ 選択--</option>');
        
        var top = $('#top_category').val();
        var main = $('#main_category').val();
        if(top != ""){
            $.ajax( {
                type: 'get',
                url: '{{url('admin/category/get-sub-categorys')}}' + "/" + top + "/" + main,
                success: function(data) {
                    for(var i = 0; i < data.length; i++){
                        var item = data[i];
                        var opt = document.createElement('option');
                        opt.value = item.category_id;
                        opt.innerHTML = item.category_name;
                        document.getElementById('sub_category').appendChild(opt);
                    }
                }
            });
        }
    });

    function checkboxEdit(id) {
        var table = $('#datatable1').DataTable();
        
        var brands = $('#mall_brands').val().split(",");

        if (document.getElementById("check-" + id).checked) {
            brands.push(id);
        } else {
            brands.pop(id);
        }
        
        $('#mall_brands').val(brands.toString());
    }

    $('#btnReset').click(function() {
        document.getElementById("form_add").reset();
        $('#create_date').val(moment().format('YYYY/MM/DD hh:mm:ss'));
        $('#update_date').val(moment().format('YYYY/MM/DD hh:mm:ss'));
        $('#datatable').DataTable().clear().draw(false);
    });
    
    $('#btnSubmit').click(function() {
        $('#form_add').parsley();
    });

    $('#brands').multiselect({
        includeSelectAllOption: true
    });

    function removeCategory(id) {
        var table = $('#datatable').DataTable();
        for (i = 0; i < table.rows().count(); i++) {
            if (table.cell(i, 0).data() == id) {
                table.row(i).remove().draw(false);
                // updateMallCategorys();
                return;
            }
        }
    }
</script>

@endsection
