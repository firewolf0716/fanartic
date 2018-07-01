@extends('layouts.adminlayout')

@section('title', 'Merchant Product Add|fanaRtic')

@section('content')
<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>Admin / Manage Malls</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h4>Manage Malls</h4>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <table id="datatable" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th style="text-align:center">名前</th>
                                <th style="text-align:center">英名</th>
                                <th style="text-align:center">ステータス</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($malls as $mall)
                            <tr>
                                <td>{{$mall->mall_id}}</td>
                                <td style="text-align:center">{{$mall->mall_name}}</td>
                                <td style="text-align:center">{{$mall->mall_name_en}}</td>
                                <td style="text-align:center">
                                    @if($mall->mall_status == 1)
                                    有効
                                    @else
                                    無効
                                    @endif
                                </td>
                                <td style="text-align:center">
                                    <a href="{{ url('admin/mall/edit/'.$mall->mall_id) }}"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
                                    <a href="#"><span class="glyphicon glyphicon-trash" onclick="deleteConfirm({{$mall->mall_id}})" aria-hidden="true"></span></a>
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

    <script>
		function deleteConfirm(mall_id) {
			var answer = confirm('本当に削除しますか?');
            if(!answer){
                return;
            }

			window.location = "{{ url('admin/mall/delete') }}" + "/" + mall_id;
		}
	</script>

@endsection