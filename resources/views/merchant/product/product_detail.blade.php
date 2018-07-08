@extends('layouts.admindefault')

@section('title', 'Merchant Product Add|fanaRtic')

@section('content')
<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>Home / Product details</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h4>Product details</h4>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product_title">Product Title</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_title}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Top Category</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">{{$productinfo->mc_name}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Main Category</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">{{$productinfo->smc_name}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Sub Category</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">{{$productinfo->sb_name}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Second Sub Category</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">{{$productinfo->ssb_name}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Product Quantity</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_qty}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Original Price</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_price}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Discounted Price</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_disprice}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Tax Percentage</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_inctax}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Shipping Amount</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_shippamt}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Description</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_desc}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Specification</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">
                                @foreach ($specinfo as $spec)
                                    {{$spec->spg_name}}->{{$spec->sp_name}} : {{$spec->spc_value}} <br>
                                @endforeach
                            </label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Product Color</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            @foreach ($colorinfo as $color)
                                <label style="width:195px;padding:3px;border:4px solid {{$color->co_code}};margin:5px; display:inline-table">{{$color->co_name}}</label>
                            @endforeach
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Product Size</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">
                            @foreach ($sizeinfo as $si)
                                {{$si->si_name}},
                            @endforeach
                            </label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Delivery Days</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_delivery}} Days</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Store Name</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">{{$productinfo->stor_name}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Meta Keyword</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_mkeywords}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Meta Description</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">{{$productinfo->pro_mdesc}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Cash Back</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">{{$productinfo->cash_pack}}</label>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Apply Cancellation Policy</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">
                            @if($productinfo->allow_cancel == '1')
                                Yes
                            @else 
                                No
                            @endif
                            </label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    @if($productinfo->allow_cancel == '1')
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Cancellation Policy</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">
                            {{$productinfo->cancel_policy}}
                            </label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">No of days Cancellation Applicable</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">
                            {{$productinfo->cancel_days}}
                            </label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    @endif
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Apply Return/Refund Policy</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">
                            @if($productinfo->allow_return == '1')
                                Yes
                            @else 
                                No
                            @endif
                            </label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    @if($productinfo->allow_return == '1')
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Return/Refund Policy</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">
                            {{$productinfo->return_policy}}
                            </label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">No of days Return/Refund Applicable</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">
                            {{$productinfo->return_days}}
                            </label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    @endif
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Apply Replacement Policy</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">
                            @if($productinfo->allow_replace == '1')
                                Yes
                            @else 
                                No
                            @endif
                            </label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    @if($productinfo->allow_replace == '1')
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Replacement Policy</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">
                            {{$productinfo->replace_policy}}
                            </label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">No of days Replacement Applicable</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                            <label type="text" class="control-label col-md-7 col-xs-12">
                            {{$productinfo->replace_days}}
                            </label>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    @endif
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Product Images</label>
                        <div class="col-md-9 col-sm-6 col-xs-12">
                        @php 
                            $file_get  = $productinfo->pro_Img; 
                            $file_get_path =  explode("/**/",$file_get,-1); 
                            $img_count = count($file_get_path);
                        @endphp
                        {{-- Image path starts --}}
                        @if(count($file_get_path) > 0  && $img_count != '')
					    @for($j=0 ; $j< $img_count; $j++)
						    @if($file_get_path[$j] !='')
							    @php $pro_img = $file_get_path[$j]; @endphp 
							    @php $prod_path = url('').'/assets/default_image/No_image_product.png'; @endphp
							    @php $img_data = 'assets/products/'.$pro_img; @endphp
							    @if(file_exists($img_data))
								    @php $prod_path = url('').'/assets/products/'.$pro_img; @endphp
                                @else  
									@if(isset($DynamicNoImage['productImg']))
                                        @php $dyanamicNoImg_path= "/assets/noimage/".$DynamicNoImage['productImg']; @endphp
                                        @if($DynamicNoImage['productImg'] !='' && file_exists($dyanamicNoImg_path))
                                            @php $prod_path = url('').'/assets/noimage/'.$DynamicNoImage['productImg']; @endphp
                                        @endif                          
                                    @endif
                                @endif
						    @else
							    @php $prod_path = url('').'/../assets/default_image/No_image_product.png'; @endphp
								@if(isset($DynamicNoImage['productImg']))                  
                                    @php $dyanamicNoImg_path= "/../assets/noimage/".$DynamicNoImage['productImg']; @endphp
                                    @if($DynamicNoImage['productImg'] !='' && file_exists($dyanamicNoImg_path))
                                        @php $prod_path = url('').'/../assets/noimage/'.$DynamicNoImage['productImg']; @endphp
                                    @endif
                                @endif                                         
                            @endif
						    <img style="height:70px; width:50px;" src="{{$prod_path}}">
					    @endfor
				        @else
                            @php $prod_path = url('').'/../assets/default_image/No_image_product.png'; @endphp
                                @if(isset($DynamicNoImage['productImg']))
                                    @php $dyanamicNoImg_path= "/../assets/noimage/".$DynamicNoImage['productImg']; @endphp
                                    @if($DynamicNoImage['productImg'] !='' && file_exists($dyanamicNoImg_path))
                                        @php $prod_path = url('').'/../assets/noimage/'.$DynamicNoImage['productImg']; @endphp
                                    @endif
                                @endif          
                            <img style="height:70px; width:50px;" src="{{$prod_path}}">
				        @endif

                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
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
    <script>
    </script>
@endsection