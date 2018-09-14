@extends('layouts.merchant_layout')

@section('title', 'Dashboard|fanaRtic')

@section('content')
    <div class="">
        <div class="page-title">
            <div class="title_left" style="margin-Bottom:20px">
                <h3>マーチャントの編集</h3>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="col-md-12 col-sm-12 col-xs-12">
        {!! Form::open(array('id' => 'form_add','url'=>'merchant/editsetting','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
        {{ Form::hidden('merchant_id', $merchant->merchant_id)}}
            <div class="x_panel">
                <div class="x_title">
                    <h4>マーチャントの編集 : {{$merchant->merchant_admin}}</h4>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">店舗タイプ<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12" onChange="onTypeChanged()">
                            <select id="merchant_type" name="merchant_type" class="form-control" required>
                                <option value="">--設計タイプを選択--</option>
                                @if($merchant->merchant_type == 1)
                                    <option value="1" selected>ブランド</option>
                                @else
                                    <option value="1">ブランド</option>
                                @endif
                                @if($merchant->merchant_type == 2)
                                    <option value="2" selected>セレクトショップ</option>
                                @else
                                    <option value="2">セレクトショップ</option>
                                @endif
                                @if($merchant->merchant_type == 3)
                                    <option value="3" selected>中古業者</option>
                                @else
                                    <option value="3">中古業者</option>
                                @endif
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">ブランド</label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            @if($merchant->merchant_type == 1 || $merchant->merchant_type == 2)
                            <select class="form-control" name="merchant_brands[]" id="brands" multiple="multiple">
                            @else
                            <select class="form-control" name="merchant_brands[]" id="brands" multiple="multiple" disabled>
                            @endif
                                @foreach($brands as $brand)
                                    <?php $selected=false?>
                                    @foreach($selbrands as $selbrand)
                                        @if($brand->brand_id == $selbrand->brand_id)
                                        <option value="{{$brand->brand_id}}" selected>{{$brand->brand_name}}</option>
                                        <?php $selected=true?>
                                        @break                                    
                                        @endif
                                    @endforeach
                                    @if($selected == false)
                                    <option value="{{$brand->brand_id}}">{{$brand->brand_name}}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                    </div>










                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">商人オープン状態<span class="required">*</span></label>
                        <div class="radio col-md-4 col-sm-6 col-xs-12">
                            @if ($merchant->merchant_open_state == 0)
                                <label><input type="radio" value="1" name="merchant_open_state">OPEN</label>
                                <label><input type="radio" value="0" name="merchant_open_state" checked>CLOSE</label>
                            @else
                                <label><input type="radio" value="1" name="merchant_open_state" checked>OPEN</label>
                                <label><input type="radio" value="0" name="merchant_open_state">CLOSE</label>
                            @endif
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">料金プラン<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <select id="merchant_plan" name="merchant_plan" class="form-control" required>
                                <option value="">--支払計画の選択--</option>
                                @foreach($plans as $plan)
                                    @if($merchant->merchant_plan == $plan->plan_id)
                                        <option value="{{$plan->plan_id}}" selected>{{$plan->plan_name}}</option>
                                    @else
                                        <option value="{{$plan->plan_id}}">{{$plan->plan_name}}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">初期費用<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="number" id="merchant_opencost" name="merchant_opencost" class="form-control col-md-7 col-xs-12" value="{{$merchant->merchant_opencost}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">固定費用<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="number" id="merchant_fixcost" name="merchant_fixcost" class="form-control col-md-7 col-xs-12" value="{{$merchant->merchant_fixcost}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">日本販売手数料<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="number" id="merchant_commission_jp" name="merchant_commission_jp" class="form-control col-md-7 col-xs-12" value="{{$merchant->merchant_commission_jp}}" disabled>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">海外販売手数料<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="number" id="merchant_commission_ex" name="merchant_commission_ex" class="form-control col-md-7 col-xs-12" value="{{$merchant->merchant_commission_ex}}" disabled>
                        </div>
                    </div>



                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">消費税フラグ<span class="required">*</span></label>
                        <div class="radio col-md-4 col-sm-6 col-xs-12" disabled>
                            @if($merchant->merchant_taxflag == 0)
                                <label><input type="radio" value="0" name="merchant_taxflag" checked disabled>税込</label>
                                <label><input type="radio" value="1" name="merchant_taxflag" disabled>税別</label>
                            @else
                                <label><input type="radio" value="0" name="merchant_taxflag" disabled>税込</label>
                                <label><input type="radio" value="1" name="merchant_taxflag" checked disabled>税別</label>
                            @endif
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">会社名<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="text" id="merchant_companyname" name="merchant_companyname" required="required" class="form-control col-md-7 col-xs-12" value="{{$merchant->merchant_companyname}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">店舗名<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="text" id="merchant_name" name="merchant_name" required="required" class="form-control col-md-7 col-xs-12" value="{{$merchant->merchant_name}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">代表取締役<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="text" id="merchant_rep" name="merchant_rep" required="required" class="form-control col-md-7 col-xs-12" value="{{$merchant->merchant_rep}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">店舗運営責任者<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="text" id="merchant_admin" name="merchant_admin" required="required" class="form-control col-md-7 col-xs-12" value="{{$merchant->merchant_admin}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">許可証<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="number" id="merchant_permit" name="merchant_permit" required="required" class="form-control col-md-7 col-xs-12" value="{{$merchant->merchant_permit}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">メールアドレス<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="email" id="merchant_email" name="merchant_email" required="required" class="form-control col-md-7 col-xs-12" value="{{$merchant->merchant_email}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">パスワード<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="password" id="merchant_password" name="merchant_password" required="required" class="form-control col-md-7 col-xs-12" value="{{$merchant->merchant_password}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">電話番号<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="text" id="merchant_phone" name="merchant_phone" required="required" class="form-control col-md-7 col-xs-12" value="{{$merchant->merchant_phone}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">郵便番号<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="text" id="merchant_postalcode" name="merchant_postalcode" required="required" class="form-control col-md-7 col-xs-12" value="{{$merchant->merchant_postalcode}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">国<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <select id="merchant_state" name="merchant_state" class="form-control" required>
                                <option value="">--国の選択--</option>
                                @foreach($states as $state)
                                    @if($merchant->merchant_state == $state->state_id)
                                        <option value="{{$state->state_id}}" selected>{{$state->state_name}}</option>
                                    @else
                                        <option value="{{$state->state_id}}">{{$state->state_name}}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">都市<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <select id="merchant_city" name="merchant_city" class="form-control" required>
                                <option value="">--都市を選択--</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">以降の住所<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="text" id="merchant_address_ex" name="merchant_address_ex" required="required" class="form-control col-md-7 col-xs-12" value="{{$merchant->merchant_address_ex}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">都道府県<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="text" id="merchant_province" name="merchant_province" required="required" class="form-control col-md-7 col-xs-12" value="{{$merchant->merchant_province}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">市区町村・番地<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="text" id="merchant_county" name="merchant_county" required="required" class="form-control col-md-7 col-xs-12" value="{{$merchant->merchant_county}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">マンション名<span class="required">*</span></label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="text" id="merchant_address_jp" name="merchant_address_jp" required="required" class="form-control col-md-7 col-xs-12" value="{{$merchant->merchant_address_jp}}">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">登録日時</label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="text" id="created_at" name="created_at" class="form-control col-md-7
                            col-xs-12" readonly value="{{$merchant->created_at}}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">変更日時</label>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <input type="text" id="updated_at" name="updated_at" class="form-control col-md-7
                            col-xs-12" readonly value="{{$merchant->updated_at}}">
                        </div>
                    </div>
                    <div class="ln_solid"></div>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <button id="btnSubmit" type="submit" class="btn btn-warning">マーチャントの編集</button>
                            <button id="btnReset" type="button" class="btn btn-primary">リセット</button>
                        </div>
                    </div>
                </div>
            </div>
        {{Form::close()}}
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

    <script>
        $(function(){
            changeState($('#merchant_state').val());
            // setMerchantPlanValue({{$merchant->merchant_plan}});
        });
        $('#merchant_state').change(function(){
            stateid = $('#merchant_state').val();
            $('#merchant_city').find('option').remove().end().append('<option value="">--都市を選択--</option>');
            changeState(stateid);
        });
        $('#btnReset').click(function(){
            location.reload();
        });
        $('#btnSubmit').click(function(){
            $('#update_date').val(moment().format('YYYY/MM/DD hh:mm:ss'));
            $('#form_add').parsley();
        });
        $('#merchant_plan').change(function() {
            var openPlan = $('#merchant_plan').val();
            setMerchantPlanValue(openPlan);
        });
        function setMerchantPlanValue(openPlan) {
            $.ajax( {
                type: 'get',
                url: '{{url('admin/merchant/getplan')}}/' + openPlan,
                success: function(data){
                    $('#merchant_opencost').val(data[0].plan_opencost);
                    $('#merchant_fixcost').val(data[0].plan_fixcost);
                    // $('#merchant_commission_jp').val(data[0].plan_domestic_fee);
                    // $('#merchant_commission_ex').val(data[0].plan_international_fee);
                }
            });
        }
        function changeState(state){
            if(state == ''){
                $('#merchant_city').prop('disabled', true);
                $('#merchant_address_ex').prop('disabled', true);
                $('#merchant_province').prop('disabled', true);
                $('#merchant_county').prop('disabled', true);
                $('#merchant_address_jp').prop('disabled', true);
            } else if(state == 1){
                $('#merchant_city').prop('disabled', true);
                $('#merchant_address_ex').prop('disabled', true);
                $('#merchant_province').prop('disabled', false);
                $('#merchant_county').prop('disabled', false);
                $('#merchant_address_jp').prop('disabled', false);

                $('#merchant_city').prop('required', false);
                $('#merchant_address_ex').prop('required', false);
                $('#merchant_province').prop('required', true);
                $('#merchant_county').prop('required', true);
                $('#merchant_address_jp').prop('required', true);
            } else {
                $('#merchant_city').prop('disabled', false);
                $('#merchant_address_ex').prop('disabled', false);
                $('#merchant_province').prop('disabled', true);
                $('#merchant_county').prop('disabled', true);
                $('#merchant_address_jp').prop('disabled', true);

                $('#merchant_city').prop('required', true);
                $('#merchant_address_ex').prop('required', true);
                $('#merchant_province').prop('required', false);
                $('#merchant_county').prop('required', false);
                $('#merchant_address_jp').prop('required', false);
                
                $('#merchant_city').find('option').remove().end().append('<option value="">--都市を選択--</option>');
                $.ajax( {
                    type: 'get',
                    data: {
                        state: state
                    },
                    url: '{{url('merchant/getcity')}}',
                    success: function(data){
                        for(var i = 0; i < data.length; i++){
                            var item = data[i];
                            var opt = document.createElement('option');
                            opt.value = item.city_id;
                            opt.innerHTML = item.city_name;
                            var city = "{{$merchant->merchant_city}}";
                            if(city != '' && item.city_id == city){
                                opt.selected = true;
                            }
                            document.getElementById('merchant_city').appendChild(opt);
                        }
                    }
                });
            }
        }
        $('#brands').multiselect({
            includeSelectAllOption: true
        });
        function onTypeChanged(){
            var type = $('#merchant_type').val();
            if(type == 1){
                $('#brands').prop('multiple', "");
                $('#brands').multiselect('rebuild');
            } else if(type == 2){
                $('#brands').prop('multiple', "multiple");
                $('#brands').multiselect('rebuild');
            } else {
                $('#brands').multiselect('disable');
            }
        }
    </script>
@endsection
