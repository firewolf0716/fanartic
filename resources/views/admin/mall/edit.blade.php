@extends('layouts.adminlayout')

@section('title', 'Dashboard|fanaRtic')

@section('content')

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
            <h3>モール 編集</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-md-12 col-sm-12 col-xs-12">
        {!! Form::open(array('id' => 'form_add','url'=>'admin/mall/editpost','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
        {{ Form::hidden('id', $mall->mall_id)}}
        <div class="x_panel">
            <div class="x_title">
                <h4>モール 編集</h4>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <input type="hidden" id="mall_category" name="mall_category">

                <div class="form-group">
                    <input type="hidden" id="mall_brands" name="mall_brands" value="{{$selBrands}}">
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">名前<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="mall_name" name="mall_name" required="required" class="form-control col-md-7 col-xs-12" value="{{$mall->mall_name}}" placeholder="モール名を日本語で入力してください">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">英名<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="mall_name_en" name="mall_name_en" required="required" class="form-control col-md-7 col-xs-12" value="{{$mall->mall_name_en}}" placeholder="モール名を英語で入力してください">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">ステータス<span class="required">*</span></label>
                    <div class="radio col-md-4 col-sm-6 col-xs-12">
                        @if($mall->mall_status == 1)
                            <label><input type="radio" value="1" name="optionValid" checked>有効</label>
                            <label><input type="radio" value="0" name="optionValid">無効</label>
                        @else
                            <label><input type="radio" value="0" name="optionValid">有効</label>
                            <label><input type="radio" value="1" name="optionValid" checked>無効</label>
                        @endif
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">登録日時</label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="create_date" name="create_date" class="form-control col-md-7 col-xs-12" readonly value="{{$mall->mall_create}}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">変更日時</label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="update_date" name="update_date" class="form-control col-md-7 col-xs-12" readonly  value="{{$mall->mall_update}}">
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
                                <td style="text-align:center"><img style="height:20px;" src="{{url("")}}/images/brands/{{$brand->brand_image}}"></td>
                                <?php $isChecked = false; ?>
                                @foreach($mall_brands as $mall_brand)
                                    @if ($mall_brand == $brand->brand_id)
                                        <?php $isChecked = true; ?>
                                        @break
                                    @endif
                                @endforeach
                                
                                @if($isChecked == true)
                                    <th style="text-align:center"><input type="checkbox" id="check-{{$brand->brand_id}}" onclick="checkboxEdit({{$brand->brand_id}})" checked></th>
                                @else
                                    <th style="text-align:center"><input type="checkbox" id="check-{{$brand->brand_id}}" onclick="checkboxEdit({{$brand->brand_id}})"></th>
                                @endif
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
                                <th style="text-align:center">トップ カテゴリ</th>
                                <th style="text-align:center">メイン カテゴリ</th>
                                <th style="text-align:center">サブ カテゴリ</th>
                                <th style="text-align:center"></th>
                            </tr>
                        </thead>
                        <tbody id="tablebody1">
                            @foreach ($selcategorys as $selcategory)
                                <tr>
                                    <td>{{$selcategory->category_id}}</th>
                                    @if ($selcategory->top_category_name == "")
                                        @if ($selcategory->main_category_name == "")
                                            <?php $selcategory->top_category_name = $selcategory->category_name; ?>
                                            <?php $selcategory->category_name = ""; ?>
                                        @else
                                            <?php $selcategory->top_category_name = $selcategory->main_category_name; ?>
                                            <?php $selcategory->main_category_name = $selcategory->category_name; ?>
                                            <?php $selcategory->category_name = ""; ?>
                                        @endif
                                    @endif
                                    @if ($selcategory->main_category_name == "")
                                        <?php $selcategory->main_category_name = $selcategory->category_name; ?>
                                        <?php $selcategory->category_name = ""; ?>
                                    @endif

                                    <th style="text-align:center">{{$selcategory->top_category_name}}</th>
                                    <th style="text-align:center">{{$selcategory->main_category_name}}</th>
                                    <th style="text-align:center">{{$selcategory->category_name}}</th>
                                    <th style="text-align:center">'<a><span class="glyphicon glyphicon-trash" onclick="removeCategory({{$selcategory->category_id}})" aria-hidden="true"></span></a></th>
                                </tr>
                            @endforeach
                        </tbody>
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
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">性別(メイン カテゴリ)</label>
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
                        <button id="btnSubmit" type="submit" onclick="updateMallCategorys()" class="btn btn-warning">モール 編集</button>
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

<script type="text/javascript">
    $(function(){
        $('#create_date').val('{{$mall->mall_create}}');
        $('#update_date').val('{{$mall->mall_update}}');
        addTopCategorys();

        var table = $('#datatable').DataTable({
            destroy: true,
            columnDefs: [
                {
                    "targets": 0,
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
    });
    $('#btnReset').click(function(){
        document.getElementById("form_add").reset();
        $('#create_date').val('{{$mall->mall_create}}');
        $('#update_date').val('{{$mall->mall_update}}');
    });
    function addTopCategorys() {
        $.ajax( {
            type: 'get',
            url: '{{url('admin/category/get-top-categorys')}}',
            success: function(data){
                $('#top_category').find('option').remove().end().append('<option value="">--トップ カテゴリ 選択--</option>');
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
                url: '{{url('admin/category/get-sub-categorys')}}' + "/" + mainID,
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
    $('#main_category').change(function() {
        $('#sub_category').find('option').remove().end().append('<option value="">--サブ カテゴリ 選択--</option>');
        
        var top = $('#top_category').val();
        var main = $('#main_category').val();
        if(top != ""){
            $.ajax( {
                type: 'get',
                url: '{{url('admin/category/get-sub-categorys')}}' + "/" + main,
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

    $('#btnSubmit').click(function(){
        $('#update_date').val(moment().format('YYYY/MM/DD hh:mm:ss'));
        $('#form_add').parsley();
    });

    $('#brands').multiselect({
        includeSelectAllOption: true
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

    function removeCategory(id) {
        var table = $('#datatable').DataTable();
        for (i = 0; i < table.rows().count(); i++) {
            if (table.cell(i, 0).data() == id) {
                table.row(i).remove().draw(false);
                return;
            }
        }
    }
</script>

@endsection
