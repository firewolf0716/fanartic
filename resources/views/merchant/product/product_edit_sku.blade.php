@extends('layouts.admindefault')

@section('title', 'Merchant Product Add|fanaRtic')

@section('content')

<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>Home / Edit SKU</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            {!! Form::open(array('id' => 'form_product_add','url'=>'merchant/product/addpost','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
                <div class="x_panel">
                    <div class="x_title">
                        <h4>Edit SKU</h4>
                        <div class="clearfix"></div>
                    </div>
                        <label class="x_title">画像選択</label>                
                        <div class="y_content">
                            <table id="datatable1" class="table table-striped table-bordered dt-responsive nowrap">
                                <thead>
                                    <tr>
                                        <td style="text-align:center">色</td>
                                        <th style="text-align:center">イメージ 1</th>
                                        <th style="text-align:center">イメージ 2</th>
                                        <th style="text-align:center">イメージ 3</th>
                                        <th style="text-align:center">イメージ 4</th>
                                        <th style="text-align:center">イメージ 5</th>
                                        <th style="text-align:center">イメージ 6</th>
                                        <th style="text-align:center">イメージ 7</th>
                                    </tr>
                                </thead>
                                <tbody id="tablebody">
                                </tbody>
                            </table>
                        </div>

                        <label class="x_title">SKU</label>                
                        <div class="y_content">
                            <table id="datatable2" class="table table-striped table-bordered dt-responsive nowrap">
                                <thead>
                                    <tr>
                                        <td style="text-align:center">ID</td>
                                        <td style="text-align:center">色</td>
                                        <th style="text-align:center">規模</th>
                                        <th style="text-align:center">在庫数</th>
                                        <th style="text-align:center">販売価格</th>
                                        <th style="text-align:center">参考価格</th>
                                        <th style="text-align:center">セール価格</th>
                                    </tr>
                                </thead>
                                <tbody id="tablebody">
                                </tbody>
                            </table>
                        </div>
                        
                        <div class="form-group">
                            <!-- <label class="control-label col-md-3 col-sm-3 col-xs-12">登録日時</label> -->
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="hidden" id="create_date" name="create_date" class="form-control col-md-7 col-xs-12" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- <label class="control-label col-md-3 col-sm-3 col-xs-12">変更日時</label> -->
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <input type="hidden" id="update_date" name="update_date" class="form-control col-md-7 col-xs-12" readonly>
                            </div>
                        </div>

                        <div class="ln_solid"></div>
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <button id="btnSubmit" type="submit" class="btn btn-warning">Add Product</button>
                                <button id="btnReset" type="button" class="btn btn-primary">Reset</button>
                            </div>
                        </div>
                    </div>
                </div>
            {{ Form::close() }}
        </div>
    </div>
</div>
{{ Form::hidden('merchant_id', $merchant_id, array('id' => 'merchant_id'))}}
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
    <script src="{{ URL::asset('gvendor/jQuery-Smart-Wizard/js/jquery.smartWizard.js') }}"></script>
    
    <script src="{{ url('') }}/js/multi_select_dropdown.js"></script>
    <script type="text/javascript">
    
    
</script>
<script>
    $(function(){
        $('#create_date').val(moment().format('YYYY/MM/DD hh:mm:ss'));
        $('#update_date').val(moment().format('YYYY/MM/DD hh:mm:ss'));
    });
    
</script>
@endsection
