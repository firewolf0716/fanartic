@extends('layouts.adminlayout')

@section('title', 'Dashboard|fanaRtic')

@section('content')

<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>Admin / Edit Mall</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-md-12 col-sm-12 col-xs-12">
        {!! Form::open(array('id' => 'form_add','url'=>'admin/mall/editpost','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
        {{ Form::hidden('id', $mall->mall_id)}}
        <div class="x_panel">
            <div class="x_title">
                <h4>Edit Mall</h4>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <input type="hidden" id="mall_category" name="mall_category">

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">ブランド<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <select class="form-control" name="mall_brands[]" id="brands" multiple="multiple">
                            @foreach($brands as $brand)
                                <?php $selected = false; ?>
                                @foreach($selbrands as $selbrand)
                                    @if($brand->brand_id == $selbrand->brand_id)
                                        <?php $selected = true; ?>
                                        @break
                                    @endif
                                @endforeach
                                
                                @if($selected == true)
                                    <option value="{{$brand->brand_id}}" selected>{{$brand->brand_name}}</option>
                                @else
                                    <option value="{{$brand->brand_id}}">{{$brand->brand_name}}</option>
                                @endif
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">名前<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="mall_name" name="mall_name" required="required" class="form-control col-md-7 col-xs-12" value="{{$mall->mall_name}}">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">英名<span class="required">*</span></label>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <input type="text" id="mall_name_en" name="mall_name_en" required="required" class="form-control col-md-7 col-xs-12" value="{{$mall->mall_name_en}}">
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
                                    <th>{{$selcategory->category_id}}</th>
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

    <script src="{{ url('') }}/public/js/multi_select_dropdown.js"></script>

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
        
        if ($('#top_category').val() == '') {
            return;
        }
        var $categoryid = $('#top_category').val();
        var $topCategoryName = jQuery("#top_category option:selected").text();
        var $mainCategoryName = '';
        var $subCategoryName = '';
        if ($('#main_category').val() != '') {
            $categoryid = $('#main_category').val();
            $mainCategoryName = jQuery("#main_category option:selected").text();
        } 
        if ($('#sub_category').val() != '') {
            $categoryid = $('#sub_category').val();
            $subCategoryName = jQuery("#sub_category option:selected").text();
        }

       var table = $('#datatable').DataTable();

        for (i = 0; i < table.rows().count(); i++) {
            if (table.cell(i, 0).data() == $categoryid) {
                return;
            }
        }

        table.row.add([$categoryid, $topCategoryName, $mainCategoryName, $subCategoryName, '<a><span class="glyphicon glyphicon-trash" onclick="removeCategory(' + $categoryid + ')" aria-hidden="true"></span></a>']).draw( false );
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
    $('#btnSubmit').click(function(){
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
                return;
            }
        }
    }
</script>

@endsection
