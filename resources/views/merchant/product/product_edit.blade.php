@extends('layouts.admindefault')

@section('title', 'Merchant Product Add|fanaRtic')

@section('content')
<div class="">
    <div class="page-title">
        <div class="title_left" style="margin-Bottom:20px">
            <h3>Home / Edit Product</h3>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            {!! Form::open(array('id' => 'form_product_editpost','url'=>'merchant_product_editpost','class'=>'form-horizontal','enctype'=>'multipart/form-data', 'accept-charset' => 'UTF-8', 'novalidate')) !!}
                {{ Form::hidden('product_id', $product->pro_id)}}
                {{ Form::hidden('pro_status', $product->pro_status)}}
                <div class="x_panel">
                    <div class="x_title">
                        <h4>Edit Product</h4>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <!--Product Title-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product_title">Product Title<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" id="product_title" name="product_title" required="required" class="form-control col-md-7 col-xs-12" placeholder="Enter Your Product Title">
                            </div>
                        </div>
                        <!--Top Category-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="top_category">Top Category<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select id="top_category" name="top_category" class="form-control" onChange="get_maincategory(this.value);get_specification_details();" required>
                                    <option value="">--Select--</option>
                                    @foreach($productcategory as $product_mc)  
              			            <option value="{{ $product_mc->mc_id }}"> {{ $product_mc->mc_name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <!--Main Category-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="main_category">Main Category<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select id="main_category" name="main_category" class="form-control" required onChange="get_subcategory(this.value);get_specification_details();">
                                    <option value="">--Select Main Category--</option>
                                </select>
                            </div>
                        </div>
                        <!--Sub Category-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="sub_category">Sub Category</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select id="sub_category" name="sub_category" class="form-control" onChange="get_second_subcategory(this.value)">
                                    <option value="0">--Select Sub Category--</option>
                                </select>
                            </div>
                        </div>
                        <!--Second Sub Category-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="secondsub_category">Second Sub Category</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select id="secondsub_category" name="secondsub_category" class="form-control">
                                    <option value="0">--Select Second Sub Category--</option>
                                </select>
                            </div>
                        </div>
                        <!--Product Quantity-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product_quantity">Product Quantity<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="number" id="product_quantity" name="product_quantity" required="required" class="form-control col-md-7 col-xs-12" placeholder="Enter Quantity of Product" value='{{$product->pro_qty}}'>
                            </div>
                        </div>
                        <!--Original Price-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="original_price">Original Price<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="number" id="original_price" name="original_price" required="required" class="form-control col-md-7 col-xs-12" placeholder="Numbers Only" value='{{$product->pro_price}}'>
                            </div>
                        </div>
                        <!--Discounted Price-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="discounted_price">Discounted Price<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="number" id="discounted_price" name="discounted_price" required="required" class="form-control col-md-7 col-xs-12" placeholder="Numbers Only" value='{{$product->pro_disprice}}'>
                            </div>
                        </div>
                        <!--Tax rate-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12"></label>
                            <div class="checkbox col-md-6 col-sm-6 col-xs-12">
                                <label><input type="checkbox" id="tax_percentage_check" name="tax_percentage_check">( Including tax Percentage ) %</label>
                            </div>
                        </div>
                        <div class="form-group" id="collapse8" style="display:none">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12"></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="number" id="tax_percentage_input" name="tax_percentage_input" class="form-control col-md-7 col-xs-12" value='{{$product->pro_inctax}}'>
                            </div>
                        </div>
                        <!--Shipping Amount-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Shipping Amount<span class="required">*</span></label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <label><input type="radio" value="0" id="optionsShippingFree" name="optionsShippingAmount" checked>Free</label>
                                <label><input type="radio" value="1" id="optionsShippingAmount" name="optionsShippingAmount">Amount</label>
                            </div>
                        </div>
                        <div class="form-group" id="collapse1" style="display:none">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="shipping_amount">Shipping Amount<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" id="shipping_amount" name="shipping_amount" required="required" class="form-control col-md-7 col-xs-12" value='{{$product->pro_shippamt}}'>
                            </div>
                        </div>
                        <!-- Description -->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Description<span class="required">*</span></label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor_description">
                                    <div class="btn-group">
                                        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                        </ul>
                                    </div>

                                    <div class="btn-group">
                                        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li>
                                            <a data-edit="fontSize 5">
                                                <p style="font-size:17px">Huge</p>
                                            </a>
                                            </li>
                                            <li>
                                            <a data-edit="fontSize 3">
                                                <p style="font-size:14px">Normal</p>
                                            </a>
                                            </li>
                                            <li>
                                            <a data-edit="fontSize 1">
                                                <p style="font-size:11px">Small</p>
                                            </a>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="btn-group">
                                        <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
                                        <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                                        <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                                        <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                                    </div>

                                    <div class="btn-group">
                                        <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                                        <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                                        <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                                        <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                                    </div>

                                    <div class="btn-group">
                                        <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                                        <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                                        <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                                        <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                                    </div>

                                    <div class="btn-group">
                                        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                                        <div class="dropdown-menu input-append">
                                            <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                                            <button class="btn" type="button">Add</button>
                                        </div>
                                        <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                                    </div>

                                    <div class="btn-group">
                                        <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                                        <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                                    </div>
                                </div>
                                <div id="editor_description" class="editor-wrapper">{{$product->pro_desc}}</div>
                                {{ Form::hidden('description', '', array('id' => 'description'))}}
                            </div>
                        </div>
                        <!--specification-->
                        <!--Want to add specification-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Want to add specification<span class="required">*</span></label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <label><input type="radio" value="1" id="optionsSpecYes" name="optionsSpec">Yes</label>
                                <label><input type="radio" value="0" id="optionsSpecNo" name="optionsSpec" checked>No</label>
                            </div>
                        </div>
                        <div id="collapse2" style="display:none">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Specification</label>
                                
                                <div class="col-md-2 col-sm-6 col-xs-12">
                                    <select id="spec_group_0" name="spec_group_0" class="form-control" onChange="spcfunction(0,this.value);">
                                        <option value="0">--Select--</option>
                                    </select>
                                </div>
                                <div class="col-md-2 col-sm-6 col-xs-12">
                                    <select id="spec_detail_0" name="spec_detail_0" class="form-control">
                                        <option value="0">--Select--</option>
                                    </select>
                                </div>
                                <div class="col-md-2 col-sm-6 col-xs-12">
                                    <input type="text" id="spec_text_0" name="spec_text_0" class="form-control col-md-7 col-xs-12">
                                </div>
                                
                                <div class="col-md-2 col-sm-6 col-xs-12">
                                    <button class="btn btn-primary" type="button" id="btnSpecAdd">Add More</button>
                                </div>
                            </div>
                            {{ Form::hidden('spec_ct', '1', array('id' => 'spec_ct'))}}
                        </div>

                        <!--Product Size-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Add Product Size</label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <label><input type="radio" value="1" id="optionsProsizeYes" name="optionsProsize">Yes</label>
                                <label><input type="radio" value="0" id="optionsProsizeNo" name="optionsProsize" checked>No</label>
                            </div>
                        </div>
                        <div class="form-group" id="collapse3" style="display:none">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Product Size</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select class="form-control" name="product_size[]" id="product_size" multiple="multiple">
                                @foreach ($productsize as $size) 
                                    @if($size->si_name!='no size')
                                        @foreach ($sizeinfo as $si)
                                        @if($size->si_id == $si->si_id)
                                            <option value="{{ $size->si_id }}" selected>{!!$size->si_name!!}</option>
                                        @else
                                            <option value="{{ $size->si_id }}">{!!$size->si_name!!}</option>
                                        @endif
                                        @endforeach
                                    @endif
                                @endforeach
                                </select>
                            </div>
                        </div>
                        <!--Color Field-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Add Color Field</label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <label><input type="radio" value="1" id="optionsColorYes" name="optionsColor">Yes</label>
                                <label><input type="radio" value="0" id="optionsColorNo" name="optionsColor" checked>No</label>
                            </div>
                        </div>
                        <div class="form-group" id="collapse4" style="display:none">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Product Color</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select class="form-control" id="selectprocolor" name="selectprocolor" onchange="getcolorname(this.value)">
                                    <option value="0">--Select Product Color--</option>
                                    @foreach ($productcolor as $color) 
                                    <option style="background:{{ $color->co_code }}"  value="{{ $color->co_id}}">{!!$color->co_name!!}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group" id="colordiv" style="display:none;">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Show Colors</label>
                            <div class="col-md-6 col-sm-6 col-xs-12" id="showcolor">
                            @foreach ($colorinfo as $color)
                                <span style="width:195px;padding:3px;border:4px solid {{$color->co_code}};margin:5px; display:inline-table">
                                    {{$color->co_name}}
                                    <input type="checkbox"  name="colorcheckbox{{$color->co_name}}"style="padding-left:30px;" checked="checked" value="1" >
                                </span>&nbsp;&nbsp;
                            @endforeach
                            </div>
                            {{ Form::hidden('co',count($colorinfo),array('id'=>'co')) }}
                        </div>
                        <!--Delivery-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="delivery_input">Delivery Within<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="number" id="delivery_input" name="delivery_input" class="form-control col-md-7 col-xs-12" required="required" value='{{$product->pro_delivery}}'>
                            </div>
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="delivery_input"></label>
                            Days
                        </div>
                        <!--Select Store-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="store">Select Store<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select id="store" name="store" class="form-control" required>
                                    <option value="">--Select Store--</option>
                                </select>
                            </div>
                        </div>
                        <!--Meta keywords-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="store">Meta keywords</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <textarea id="meta_keywords" name="meta_keywords" class="form-control" placeholder="Enter Meta Keywords">{{$product->pro_mkeywords}}</textarea>
                            </div>
                        </div>
                        <!--Meta description-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="store">Meta description</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <textarea id="meta_description" name="meta_description" class="form-control" placeholder="Enter Meta Description">{{$product->pro_mdesc}}</textarea>
                            </div>
                        </div>
                        <!--Cash Back-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="discounted-price">Cash Back<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="number" id="cash_back" name="cash_back" required="required" class="form-control col-md-7 col-xs-12" value='{{$product->cash_pack}}'>
                            </div>
                        </div>
                        <!--Apply Cancellation Policy-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Apply Cancellation Policy</label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <label><input type="radio" value="1" id="optionspcYes" name="optionsPolicyCancel">Yes</label>
                                <label><input type="radio" value="0" id="optionspcNo" name="optionsPolicyCancel" checked>No</label>
                            </div>
                        </div>
                        <div id="collapse5" style="display:none">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12"><span class="required">*</span></label>
                                <div class="radio col-md-6 col-sm-6 col-xs-12">
                                    <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor_cacelpolicy">
                                        <div class="btn-group">
                                            <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                                            <ul class="dropdown-menu">
                                            </ul>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                <a data-edit="fontSize 5">
                                                    <p style="font-size:17px">Huge</p>
                                                </a>
                                                </li>
                                                <li>
                                                <a data-edit="fontSize 3">
                                                    <p style="font-size:14px">Normal</p>
                                                </a>
                                                </li>
                                                <li>
                                                <a data-edit="fontSize 1">
                                                    <p style="font-size:11px">Small</p>
                                                </a>
                                                </li>
                                            </ul>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
                                            <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                                            <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                                            <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                                            <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                                            <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                                            <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                                            <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                                            <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                                            <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                                            <div class="dropdown-menu input-append">
                                                <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                                                <button class="btn" type="button">Add</button>
                                            </div>
                                            <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                                            <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                                        </div>
                                    </div>
                                    <div id="editor_cacelpolicy" class="editor-wrapper">{{$product->cancel_policy}}</div>
                                    {{ Form::hidden('cacelpolicy', '', array('id' => 'cacelpolicy'))}}
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Cancel Days</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="number" id="cancel_days" name="cancel_days" class="form-control col-md-7 col-xs-12" value='{{$product->cancel_days}}'>
                                </div>
                            </div>
                        </div>

                        <!--Apply Return/Refund Policy-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Apply Return/Refund Policy</label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <label><input type="radio" value="1" id="optionsprtYes" name="optionsPolicyReturn">Yes</label>
                                <label><input type="radio" value="0" id="optionsprtNo" name="optionsPolicyReturn" checked>No</label>
                            </div>
                        </div>
                        <div id="collapse6" style="display:none">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12"><span class="required">*</span></label>
                                <div class="radio col-md-6 col-sm-6 col-xs-12">
                                    <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor-returnpolicy">
                                        <div class="btn-group">
                                            <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                                            <ul class="dropdown-menu">
                                            </ul>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                <a data-edit="fontSize 5">
                                                    <p style="font-size:17px">Huge</p>
                                                </a>
                                                </li>
                                                <li>
                                                <a data-edit="fontSize 3">
                                                    <p style="font-size:14px">Normal</p>
                                                </a>
                                                </li>
                                                <li>
                                                <a data-edit="fontSize 1">
                                                    <p style="font-size:11px">Small</p>
                                                </a>
                                                </li>
                                            </ul>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
                                            <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                                            <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                                            <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                                            <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                                            <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                                            <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                                            <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                                            <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                                            <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                                            <div class="dropdown-menu input-append">
                                                <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                                                <button class="btn" type="button">Add</button>
                                            </div>
                                            <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                                            <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                                        </div>
                                    </div>
                                    <div id="editor_returnpolicy" class="editor-wrapper">{{$product->return_policy}}</div>
                                    {{ Form::hidden('returnpolicy', '', array('id' => 'returnpolicy'))}}
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Return Days</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="number" id="return_days" name="return_days" class="form-control col-md-7 col-xs-12" value='{{$product->return_days}}'>
                                </div>
                            </div>
                        </div>

                        <!--Apply Replacement Policy-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Apply Replacement Policy</label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <label><input type="radio" value="1" id="optionsprYes" name="optionsPolicyReplacement">Yes</label>
                                <label><input type="radio" value="0" id="optionsprNo" name="optionsPolicyReplacement" checked>No</label>
                            </div>
                        </div>
                        <div id="collapse7" style="display:none">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12"><span class="required">*</span></label>
                                <div class="radio col-md-6 col-sm-6 col-xs-12">
                                    <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor_replacepolicy">
                                        <div class="btn-group">
                                            <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                                            <ul class="dropdown-menu">
                                            </ul>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                                            <ul class="dropdown-menu">
                                                <li>
                                                <a data-edit="fontSize 5">
                                                    <p style="font-size:17px">Huge</p>
                                                </a>
                                                </li>
                                                <li>
                                                <a data-edit="fontSize 3">
                                                    <p style="font-size:14px">Normal</p>
                                                </a>
                                                </li>
                                                <li>
                                                <a data-edit="fontSize 1">
                                                    <p style="font-size:11px">Small</p>
                                                </a>
                                                </li>
                                            </ul>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
                                            <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                                            <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                                            <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                                            <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                                            <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                                            <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                                            <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                                            <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                                            <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                                            <div class="dropdown-menu input-append">
                                                <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                                                <button class="btn" type="button">Add</button>
                                            </div>
                                            <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                                        </div>

                                        <div class="btn-group">
                                            <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                                            <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                                        </div>
                                    </div>
                                    <div id="editor_replacepolicy" class="editor-wrapper">{{$product->replace_policy}}</div>
                                    {{ Form::hidden('replacepolicy', '', array('id' => 'replacepolicy'))}}
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Replace Days</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="number" id="replace_days" name="replace_days" class="form-control col-md-7 col-xs-12" value='{{$product->replace_days}}'>
                                </div>
                            </div>
                        </div>

                        <!--Product Image-->
                        <div id="div_images">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Product Image<span class="required">*</span></label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                @php 
                                    $file_get  = $product->pro_Img; 
                                    $file_get_path =  explode("/**/",$file_get,-1); 
                                    $img_count = count($file_get_path);
                                @endphp
                                {{-- Image path starts --}}
                                @if(count($file_get_path) > 0  && $img_count != '')
                                @for($j=0 ; $j< $img_count; $j++)
                                    @if($file_get_path[$j] !='')
                                        @php $pro_img = $file_get_path[$j]; @endphp 
                                        @php $prod_path = url('').'/public/assets/default_image/No_image_product.png'; @endphp
                                        @php $img_data = 'public/assets/products/'.$pro_img; @endphp
                                        @if(file_exists($img_data))
                                            @php $prod_path = url('').'/public/assets/products/'.$pro_img; @endphp
                                        @else  
                                            @if(isset($DynamicNoImage['productImg']))
                                                @php $dyanamicNoImg_path= "/public/assets/noimage/".$DynamicNoImage['productImg']; @endphp
                                                @if($DynamicNoImage['productImg'] !='' && file_exists($dyanamicNoImg_path))
                                                    @php $prod_path = url('').'/public/assets/noimage/'.$DynamicNoImage['productImg']; @endphp
                                                @endif                          
                                            @endif
                                        @endif
                                    @else
                                        @php $prod_path = url('').'/../public/assets/default_image/No_image_product.png'; @endphp
                                        @if(isset($DynamicNoImage['productImg']))                  
                                            @php $dyanamicNoImg_path= "/../public/assets/noimage/".$DynamicNoImage['productImg']; @endphp
                                            @if($DynamicNoImage['productImg'] !='' && file_exists($dyanamicNoImg_path))
                                                @php $prod_path = url('').'/../public/assets/noimage/'.$DynamicNoImage['productImg']; @endphp
                                            @endif
                                        @endif                                         
                                    @endif
                                    <img style="height:70px; width:50px;" src="{{$prod_path}}">
                                @endfor
                                @else
                                    @php $prod_path = url('').'/../public/assets/default_image/No_image_product.png'; @endphp
                                        @if(isset($DynamicNoImage['productImg']))
                                            @php $dyanamicNoImg_path= "/../public/assets/noimage/".$DynamicNoImage['productImg']; @endphp
                                            @if($DynamicNoImage['productImg'] !='' && file_exists($dyanamicNoImg_path))
                                                @php $prod_path = url('').'/../public/assets/noimage/'.$DynamicNoImage['productImg']; @endphp
                                            @endif
                                        @endif
                                    <img style="height:70px; width:50px;" src="{{$prod_path}}">
                                @endif
                                
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12"></label>
                                <div class="col-md-3 col-sm-6 col-xs-12" id="div-product-image">
                                    <input type="file"/ name="product_img_0" class="form-control">
                                </div>
                                <div class="col-md-2 col-sm-6 col-xs-12">
                                    <button class="btn" type="button" id="btnProductImage">Add</button>
                                </div>
                            </div>
                            {{ Form::hidden('proimg_ct', '1', array('id' => 'proimg_ct'))}}
                        </div>

                        <div class="ln_solid"></div>
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <button id="btnSubmit" type="submit" class="btn btn-warning">Update Product</button>
                                <button class="btn btn-primary" type="reset">Reset</button>
                            </div>
                        </div>
                    </div>
                </div>
            {{ Form::close() }}
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
<script type="text/javascript">
    $(document).ready(function(){
        $('#btnProductImage').click(function(){
            var imgct = Number($('#proimg_ct').val()) + 1;
            $ctrl = '<div class="form-group"> <label class="control-label col-md-3 col-sm-3 col-xs-12"></label> <div class="radio col-md-3 col-sm-6 col-xs-12" id="div-product-image">';
            $ctrl = $ctrl + '<input type="file"/ name="product_img_'+imgct+'" class="form-control"></div></div>';
            $('#div_images').append($ctrl);
            $('#proimg_ct').val(imgct);
        });
        $('#btnSpecAdd').click(function(){
            addSpec();
        });
        $('#btnSubmit').click(function(){
            $('#form_product_editpost').parsley();
            $('#description').val($('#editor_description').html());
            $('#cacelpolicy').val($('#editor_cacelpolicy').html());
            $('#returnpolicy').val($('#editor_returnpolicy').html());
            $('#replace').val($('#editor_replace').html());
        });
        $.ajax({
            type: 'get',
            data: 'id=41',
            url: '{{url('')}}/mer_product_getmerchantshop',
            success: function(responseText){  
                if(responseText)
                {  
                    $('#store').html(responseText);
                    $('#store').val('{{$product->pro_sh_id}}');
                }
            }
        });
        //init values
        $('#product_title').val('{{$product->pro_title}}');
        $('#top_category').val('{{$product->pro_mc_id}}');
        var passcategoryid = 'id='+'{{$product->pro_mc_id}}';
        $.ajax({
            type: 'get',
            data: passcategoryid,
            url: '{{url('')}}/mer_product_getmaincategory',
            success: function(responseText){
                if(responseText)
                {
                    $('#main_category').html(responseText);
                    $('#main_category').val('{{$product->pro_smc_id}}');
                    $('#sub_category').html('<option value="0">--Select Sub Category--</option>');	
                    $('#secondsub_category').html('<option value="0">--Select Second Sub Category--</option>');
                    var passsubcategoryid = 'id='+'{{$product->pro_smc_id}}';
                    $.ajax({
                        type: 'get',
                        data: passsubcategoryid,
                        url: '{{url('')}}/mer_product_getsubcategory',
                        success: function(responseText){  
                            if(responseText)
                            {
                                $('#sub_category').html(responseText);
                                $('#sub_category').val('{{$product->pro_sb_id}}');
                                var passsecondsubcategoryid = 'id='+'{{$product->pro_sb_id}}';
                                $.ajax({
                                    type: 'get',
                                    data: passsecondsubcategoryid,
                                    url: '{{url('')}}/mer_product_getsecondsubcategory',
                                    success: function(responseText){  
                                        if(responseText)
                                        {    
                                            $('#secondsub_category').html(responseText);
                                            $('#secondsub_category').val('{{$product->pro_ssb_id}}')
                                        }
                                    }
                                });                                
                            }
                        }
                    });
                    var main_cat=$("#top_category").val();
                    var sec_main_cat=$("#main_category").val();
                    if(main_cat == "0"){
                        return false;
                    }else{
                    }
                    if(sec_main_cat == "0")
                    {
                        return false;
                    }else{
                    }
                    if(sec_main_cat!="" && main_cat!=""&& sec_main_cat!="0" && main_cat!="0")
                    {
                        $.ajax( {
                            type: 'get',
                            data: {
                                main_cat: main_cat,
                                sec_main_cat: sec_main_cat
                            },
                            url: '{{url('')}}/get_spec_related_to_cat_mer',
                            success: function(data){
                                var count_id = Number($('#spec_ct').val());
                                $('#spec_group_0').html(data);
                                $("#spec_detail_0").html("<option value='0'>--Select--</option>");
                                var specct = '{{count($specinfo)}}';
                                if(specct >= 1){
                                    for(var i = 0; i < specct - 1; i++)
                                        addSpec(specct - 1);
                                    $('#optionsSpecYes').prop('checked', true);
                                    $('#collapse2').toggle(100);
                                }
                                @foreach($specinfo as $i => $spec)
                                $('#spec_group_' + '{{$i}}').val('{{$spec->spc_spg_id}}');
                                var pass_spc_grp_id = 'spc_group_id='+'{{$spec->spc_spg_id}}';
                                $.ajax({
                                    type: 'get',
                                    data: pass_spc_grp_id,
                                    url: '{{url('')}}/product_get_spec',
                                    success: function(responseText){  
                                        if(responseText)
                                        {
                                            $('#spec_detail_'+'{{$i}}').html(responseText);
                                        }
                                    }
                                });
                                $('#spec_detail_' + '{{$i}}').val('{{$spec->sp_id}}');
                                $('#spec_text_' + '{{$i}}').val('{{$spec->spc_value}}');
                                @endforeach
                            }
                        });
                    }
                    else
                    {
                        return false;
                    }
                }
            }
        });
        @if(count($sizeinfo) > 0)
            $('#optionsProsizeYes').prop('checked', true);
            $('#collapse3').toggle(100);
        @endif
        @if(count($colorinfo) > 0)
            $('#optionsColorYes').prop('checked', true);
            $('#collpase4').toggle(100);
            $('#colordiv').show();
        @endif
        var tax = Number('{{$product->pro_inctax}}');
        if(tax > 0){
            $('#tax_percentage_check').prop('checked', true);
            $('#collapse8').toggle(250);
        }
        var shippingamt = Number('{{$product->pro_shippamt}}');
        if(shippingamt > 0){
            $('#optionsShippingAmount').prop('checked', true);
            $('#collapse1').toggle(250);
        }
        var allow_cancel = '{{$product->allow_cancel}}';
        if(allow_cancel == '1'){
            $('#optionspcYes').prop('checked', true);
            $('#collapse5').slideToggle(100);
        }
        var allow_return = '{{$product->allow_return}}';
        if(allow_return == '1'){
            $('#optionsprtYes').prop('checked', true);
            $('#collapse6').slideToggle(100);
        }
        var allow_replace = '{{$product->allow_replace}}';
        if(allow_replace == '1'){
            $('#optionsprYes').prop('checked', true);
            $('#collapse7').slideToggle(100);
        }
    });
    //change category
    function get_maincategory(id)
    {
        var passcategoryid = 'id='+id;
        $.ajax({
            type: 'get',
            data: passcategoryid,
            url: '{{url('')}}/mer_product_getmaincategory',
            success: function(responseText){
                if(responseText)
                {
                    $('#main_category').html(responseText);
                    $('#sub_category').html('<option value="0">--Select Sub Category--</option>');	
                    $('#secondsub_category').html('<option value="0">--Select Second Sub Category--</option>');					
                }
            }
        });
    }
    function get_subcategory(id)
	{
        var passsubcategoryid = 'id='+id;
        $.ajax({
            type: 'get',
            data: passsubcategoryid,
            url: '{{url('')}}/mer_product_getsubcategory',
            success: function(responseText){  
                if(responseText)
                {
                    $('#sub_category').html(responseText);
                }
            }
        });
	}

	function get_second_subcategory(id)
	{

	}
    function getcolorname(id){
        var passcolorid = 'id='+id+"&co_text_box="+$('#co').val();
        $.ajax( {
            type: 'get',
            data: passcolorid,
            url: '{{url('')}}/product_getcolor',
            success: function(responseText){  
                if(responseText)
                { 	 
                // alert(responseText)
                    var get_result = responseText.split(',');
                    if(get_result[3]=="success")
                    {
                        $('#colordiv').css('display', 'block');
                        $('#showcolor').append('<span style="width:195px;padding:3px;border:4px solid '+get_result[2]+';margin:5px; display:inline-table">'+get_result[0]+'<input type="checkbox"  name="colorcheckbox'+get_result[1]+'"style="padding-left:30px;" checked="checked" value="1" ></span>&nbsp;&nbsp;');
                        var co_name_js = $('#co').val(); 
                        $('#co').val(get_result[1]+","+co_name_js);
                        $('#selectprocolor').find('option:first').attr('selected', 'selected');
                    }
                    else if(get_result[3]=="failed")
                    {
                        
                    }
                    else
                    {
                        
                    }
                }
            }
        });
    }
    function get_specification_details()
    {
        var main_cat=$("#top_category").val();
        var sec_main_cat=$("#main_category").val();
        /*Top Category*/	
        if(main_cat == "0"){
            // $("#Product_Category").css('border', '1px solid red'); 
            // $('#category_error_msg').html('Please Select Category');
            // $("#Product_Category").focus();
            return false;
        }else{
            // $("#Product_Category").css('border', ''); 
            // $('#category_error_msg').html('');
        }
        /*Main Category*/	
        if(sec_main_cat == "0")
        {
            // $("#Product_MainCategory").css('border', '1px solid red'); 
            // $('#main_cat_error_msg').html('Please Select Main Category');
            // $("#Product_MainCategory").focus();
            return false;
        }else{
            // $("#Product_MainCategory").css('border', ''); 
            // $('#main_cat_error_msg').html('');
        }
        if(sec_main_cat!="" && main_cat!=""&& sec_main_cat!="0" && main_cat!="0")
        {
            $.ajax( {
                type: 'get',
                data: {
                    main_cat: main_cat,
                    sec_main_cat: sec_main_cat
                },
                url: '{{url('')}}/get_spec_related_to_cat_mer',
                success: function(data){
                    var count_id = Number($('#spec_ct').val());
                    $('#spec_group_0').html(data);
                    $("#spec_detail_0").html("<option value='0'>--Select--</option>");
                    for(var i=1;i<=count_id;i++)
                    {
                        $("#spec_group_"+i).html(data);
                        $("#spec_detail_"+i).html("<option value='0'>--Select--</option>");
                    }
                }
            });
        }
        else
        {
            // $("input[name='specification'][value='2']").attr('checked', true);
            return false;
        }
    }
    function spcfunction(count,spc_grop_id){
        var pass_spc_grp_id = 'spc_group_id='+spc_grop_id;
        $.ajax({
            type: 'get',
            data: pass_spc_grp_id,
            url: '{{url('')}}/product_get_spec',
            success: function(responseText){  
                if(responseText)
                {
                    $('#spec_detail_'+count).html(responseText);
                }
            }
        });
    }
    function addSpec(){
        var specct = Number($('#spec_ct').val());
        var newspec = '<div class="form-group"><label class="control-label col-md-3 col-sm-3 col-xs-12"></label>';
        var newspec = newspec + '<div class="col-md-2 col-sm-6 col-xs-12"><select id="spec_group_'+specct+'" name="spec_group_'+specct+'" class="form-control" onChange="spcfunction('+specct+',this.value);"><option value="0">--Select Specification--</option></select></div>';
        var newspec = newspec + '<div class="col-md-2 col-sm-6 col-xs-12"><select id="spec_detail_'+specct+'" name="spec_detail_'+specct+'" class="form-control"><option value="0">--Select--</option></select></div>';
        var newspec = newspec + '<div class="col-md-2 col-sm-6 col-xs-12"><input type="text" id="spec_text_'+specct+'" name="spec_text_'+specct+'" class="form-control col-md-7 col-xs-12"></div></div>';
        $('#spec_ct').val(specct + 1);
        $('#collapse2').append(newspec);
        $('select[name=spec_group_'+specct+']').html($('#spec_group_0').html());
    }

    $(document).ready(function(){
        $('#product_size').multiselect({
            includeSelectAllOption: true
    	});;
        $('#optionsShippingAmount').change(function(){
            $('#collapse1').slideToggle(250);
        });
        $('#optionsShippingFree').change(function(){
            $('#collapse1').slideToggle(250);
        });
        $('#optionsSpecYes').change(function(){
            $('#collapse2').slideToggle(250);
        });
        $('#optionsSpecNo').change(function(){
            $('#collapse2').slideToggle(250);
        });
        $('#optionsProsizeYes').change(function(){
            $('#collapse3').slideToggle(250);
        });
        $('#optionsProsizeNo').change(function(){
            $('#collapse3').slideToggle(250);
        });
        $('#optionsColorYes').change(function(){
            $('#collapse4').slideToggle(250);
        });
        $('#optionsColorNo').change(function(){
            $('#collapse4').slideToggle(250);
        });
        $('#optionspcYes').change(function(){
            $('#collapse5').slideToggle(500);
        });
        $('#optionspcNo').change(function(){
            $('#collapse5').slideToggle(500);
        });
        $('#optionsprtYes').change(function(){
            $('#collapse6').slideToggle(500);
        });
        $('#optionsprtNo').change(function(){
            $('#collapse6').slideToggle(500);
        });
        $('#optionsprYes').change(function(){
            $('#collapse7').slideToggle(500);
        });
        $('#optionsprNo').change(function(){
            $('#collapse7').slideToggle(500);
        });
        $('#tax_percentage_check').change(function(){
            $('#collapse8').slideToggle(250);
        });
    });
</script>

@endsection
