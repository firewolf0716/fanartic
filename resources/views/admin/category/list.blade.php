@extends('layouts.adminlayout')

@section('title', 'Merchant Product Add|fanaRtic')

@section('content')
<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
                <h3>{{$toptitle}}</h3>            
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h4>{{$title}}</h4>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <table id="datatable" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th hidden>identify</th>
                                <th style="text-align:center">名前</th>
                                <th style="text-align:center">英名</th>
                                @if ($categorylevel == 2)
                                    <th style="text-align:center">サイズカテゴリ</th>
                                @endif
                                <th style="text-align:center">編集</th>
                                @if ($categorylevel != 3)
                                    <th style="text-align:center">追加</th>
                                    <th style="text-align:center">詳細</th>
                                @endif
                                <th style="text-align:center">削除</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php $index = 0; ?>
                        @foreach($categorys as $key => $category)
                            <?php $index += 1; ?>
                            <tr>
                                <td>{{$index}}</td>
                                <td hidden>{{$category->category_id}}</td>
                                <td style="text-align:center">{{$category->category_name}}</td>
                                <td style="text-align:center">{{$category->category_name_en}}</td>
                                @if ($categorylevel == 2)
                                    <td style="text-align:center">{{$category->sizecategory_name}}</td>                                
                                @endif
                                @if ($categorylevel == 1)
                                    <td style="text-align:center">
                                        <a href="{{ url('admin/category/edit/'.$category->category_id) }}"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
                                    </td>
                                @elseif ($categorylevel == 2)
                                    <td style="text-align:center">
                                        <a href="{{ url('admin/category/edit/'.$topcategoryid.'/'.$category->category_id) }}"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
                                    </td>
                                @else
                                    <td style="text-align:center">
                                        <a href="{{ url('admin/category/edit/'.$topcategoryid.'/'.$maincategoryid.'/'.$category->category_id) }}"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
                                    </td>
                                @endif
                                @if ($categorylevel == 1)
                                    <td style="text-align:center">
                                        <a href="{{ url('admin/category/add/'.$category->category_id) }}"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a>
                                    </td>
                                    <td style="text-align:center">
                                        <a href="{{ url('admin/category/list/'.$category->category_id) }}"><span class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span></a>
                                    </td>
                                @elseif ($categorylevel == 2)
                                    <td style="text-align:center">
                                        <a href="{{ url('admin/category/add/'.$topcategoryid.'/'.$category->category_id) }}"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a>
                                    </td>
                                    <td style="text-align:center">
                                        <a href="{{ url('admin/category/list/'.$topcategoryid.'/'.$category->category_id) }}"><span class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span></a>
                                    </td>
                                @endif
                                <td style="text-align:center">
                                    <a href="#"><span class="glyphicon glyphicon-trash" onclick="deleteConfirm({{$category->category_id}})" aria-hidden="true"></span></a>
                                </td>
                            </tr>
                        @endforeach
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
		function deleteConfirm(category_id) {
			var answer = confirm('このカテゴリが削除されると下位カテゴリーも削除されます。 本当に削除しますか?');
            if(!answer){
                return;
            }

			window.location = "{{ url('admin/category/delete') }}" + "/" + category_id;
		}
	</script>

@endsection