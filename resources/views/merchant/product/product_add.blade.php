@extends('layouts.admindefault')

@section('title', 'Merchant Product Add|fanaRtic')

@section('content')
<div class="">
    <div class="page-title">
        <div class="title_left">
            <h3>Home / Add Products</h3>
        </div>

        <div class="title_right">
            <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button">Go!</button>
                </span>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <form id="demo-form1" class="form-horizontal form-label-left">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Add Products</h2>
                        <ul class="nav navbar-right">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <!--Product Title-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product-title">Product Title<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" id="product-title" required="required" class="form-control col-md-7 col-xs-12" placeholder="Enter Your Product Title">
                            </div>
                        </div>
                        <!--Top Category-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="top-category">Top Category<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select id="top-category" class="form-control" required>
                                    <option value="">--Select--</option>
                                    <option value="press">Press</option>
                                </select>
                            </div>
                        </div>
                        <!--Main Category-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="main-category">Main Category<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select id="main-category" class="form-control" required>
                                    <option value="">--Select Main Category--</option>
                                    <option value="press">Press</option>
                                </select>
                            </div>
                        </div>
                        <!--Sub Category-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="sub-category">Sub Category<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select id="sub-category" class="form-control" required>
                                    <option value="">--Select Sub Category--</option>
                                    <option value="press">Press</option>
                                </select>
                            </div>
                        </div>
                        <!--Second Sub Category-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="secondsub-category">Second Sub Category<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select id="secondsub-category" class="form-control" required>
                                    <option value="">--Select Second Sub Category--</option>
                                    <option value="press">Press</option>
                                </select>
                            </div>
                        </div>
                        <!--Product Quantity-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product-quantity">Product Quantity<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="number" id="product-quantity" required="required" class="form-control col-md-7 col-xs-12" placeholder="Enter Quantity of Product">
                            </div>
                        </div>
                        <!--Original Price-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="original-price">Original Price<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="number" id="original-price" required="required" class="form-control col-md-7 col-xs-12" placeholder="Numbers Only">
                            </div>
                        </div>
                        <!--Discounted Price-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="discounted-price">Discounted Price<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="number" id="discounted-price" required="required" class="form-control col-md-7 col-xs-12" placeholder="Numbers Only">
                            </div>
                        </div>
                        <!--Tax rate-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12"></label>
                            <div class="checkbox col-md-6 col-sm-6 col-xs-12">
                                <label><input type="checkbox" id="tax-percentage-check" value="">( Including tax Percentage ) %</label>
                            </div>
                        </div>
                        <div class="form-group" id="collapse8" style="display:none">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12"></label>
                            <div class="checkbox col-md-6 col-sm-6 col-xs-12">
                                <input type="number" id="tax-percentage-input" required="required" class="form-control col-md-7 col-xs-12" value=0>
                            </div>
                        </div>
                        <!--Shipping Amount-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Shipping Amount<span class="required">*</span></label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <label><input type="radio" value="option1" id="optionsShippingFree" name="optionsShippingAmount" checked>Free</label>
                                <label><input type="radio" value="option1" id="optionsShippingAmount" name="optionsShippingAmount">Amount</label>
                            </div>
                        </div>
                        <div class="form-group" id="collapse1" style="display:none">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="shipping-amount">Shipping Amount<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" id="shipping-amount" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                        </div>
                        <!-- Description -->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Description<span class="required">*</span></label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor-description">
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
                                        <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn1"><i class="fa fa-picture-o"></i></a>
                                        <input type="file" data-role="magic-overlay" data-target="#pictureBtn1" data-edit="insertImage" />
                                    </div>

                                    <div class="btn-group">
                                        <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                                        <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                                    </div>
                                </div>
                                <div id="editor-description" class="editor-wrapper" placeholder="Enter your Description" required="required"></div>
                            </div>
                        </div>    
                        <!--specification-->
                        <!--Want to add specification-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Want to add specification<span class="required">*</span></label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <label><input type="radio" value="option1" id="optionsSpecYes" name="optionsSpec">Yes</label>
                                <label><input type="radio" value="option1" id="optionsSpecNo" name="optionsSpec" checked>No</label>
                            </div>
                        </div>
                        <div class="form-group" id="collapse2" style="display:none">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Specification</label>
                            
                            <div class="col-md-2 col-sm-6 col-xs-12" id="div-spec-option1">
                                <select id="specification1" class="form-control" required>
                                    <option value="">--Select Specification--</option>
                                    <option value="press">Press</option>
                                </select>
                            </div>
                            <div class="col-md-2 col-sm-6 col-xs-12" id="div-spec-option2">
                                <select id="specification2" class="form-control" required>
                                    <option value="">--No--</option>
                                    <option value="press">Press</option>
                                </select>
                            </div>
                            <div class="col-md-2 col-sm-6 col-xs-12" id="div-spec-input">
                                <input type="text" id="specification-input" class="form-control col-md-7 col-xs-12">
                            </div>
                            
                            <div class="col-md-2 col-sm-6 col-xs-12">
                                <button class="btn btn-primary" type="button" id="btnSpecAdd">Add More</button>
                            </div>
                        </div>
                        <!--Product Size-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Add Product Size</label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <label><input type="radio" value="option1" id="optionsProsizeYes" name="optionsProsize">Yes</label>
                                <label><input type="radio" value="option1" id="optionsProsizeNo" name="optionsProsize" checked>No</label>
                            </div>
                        </div>
                        <div class="form-group" id="collapse3" style="display:none">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Product Size</label>
                            <div class="col-md-6 col-sm-6 col-xs-12 dropdown dropup docs-options">
                                <button type="button" class="btn btn-primary btn-block dropdown-toggle" id="toggleOptions" data-toggle="dropdown" aria-expanded="true">
                                    Select Sizes
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="toggleOptions" role="menu">
                                    <li role="presentation">
                                        <label class="checkbox-inline">
                                        <input type="checkbox" name="responsive">
                                        responsive
                                        </label>
                                    </li>
                                    <li role="presentation">
                                        <label class="checkbox-inline">
                                        <input type="checkbox" name="restore">
                                        restore
                                        </label>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!--Color Field-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Add Color Field</label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <label><input type="radio" value="option1" id="optionsColorYes" name="optionsColor">Yes</label>
                                <label><input type="radio" value="option1" id="optionsColorNo" name="optionsColor" checked>No</label>
                            </div>
                        </div>
                        <div class="form-group" id="collapse4" style="display:none">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Product Color</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="input-group demo2">
                                    <input type="text" value="#e01ab5" class="form-control" />
                                    <span class="input-group-addon"><i></i></span>
                                </div>
                            </div>
                        </div>
                        <!--Delivery-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="delivery-input">Delivery Within</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="number" id="delivery-input" class="form-control col-md-7 col-xs-12">
                            </div>
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="delivery-input"></label>
                            Days
                        </div>
                        <!--Select Store-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="store">Select Store<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select id="store" class="form-control" required>
                                    <option value="">--Select Store--</option>
                                    <option value="press">Press</option>
                                </select>
                            </div>
                        </div>
                        <!--Meta keywords-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="store">Meta keywords</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <textarea id="meta-keywords" class="form-control" placeholder="Enter Meta Keywords"></textarea>
                            </div>
                        </div>
                        <!--Meta description-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="store">Meta description</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <textarea id="meta-description" class="form-control" placeholder="Enter Meta Description"></textarea>
                            </div>
                        </div>
                        <!--Cash Back-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="discounted-price">Cash Back<span class="required">*</span></label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="number" id="cash-back" required="required" class="form-control col-md-7 col-xs-12">
                            </div>
                        </div>
                        <!--Apply Cancellation Policy-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Apply Cancellation Policy</label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <label><input type="radio" value="option1" id="optionspcYes" name="optionsPolicyCancel">Yes</label>
                                <label><input type="radio" value="option1" id="optionspcNo" name="optionsPolicyCancel" checked>No</label>
                            </div>
                        </div>
                        <div class="form-group" id="collapse5" style="display:none">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12"><span class="required">*</span></label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor-cacelpolicy">
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
                                        <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn2"><i class="fa fa-picture-o"></i></a>
                                        <input type="file" data-role="magic-overlay" data-target="#pictureBtn2" data-edit="insertImage" />
                                    </div>

                                    <div class="btn-group">
                                        <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                                        <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                                    </div>
                                </div>
                                <div id="editor-cacelpolicy" class="editor-wrapper" placeholder="Enter your Description" required="required"></div>
                            </div>
                        </div>
                        <!--Apply Return/Refund Policy-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Apply Return/Refund Policy</label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <label><input type="radio" value="option1" id="optionsprtYes" name="optionsPolicyReturn">Yes</label>
                                <label><input type="radio" value="option1" id="optionsprtNo" name="optionsPolicyReturn" checked>No</label>
                            </div>
                        </div>
                        <div class="form-group" id="collapse6" style="display:none">
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
                                        <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn3"><i class="fa fa-picture-o"></i></a>
                                        <input type="file" data-role="magic-overlay" data-target="#pictureBtn3" data-edit="insertImage" />
                                    </div>

                                    <div class="btn-group">
                                        <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                                        <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                                    </div>
                                </div>
                                <div id="editor-returnpolicy" class="editor-wrapper" placeholder="Enter your Description" required="required"></div>
                            </div>
                        </div>
                        <!--Apply Replacement Policy-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Apply Replacement Policy</label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <label><input type="radio" value="option1" id="optionsprYes" name="optionsPolicyReplacement">Yes</label>
                                <label><input type="radio" value="option1" id="optionsprNo" name="optionsPolicyReplacement" checked>No</label>
                            </div>
                        </div>
                        <div class="form-group" id="collapse7" style="display:none">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12"><span class="required">*</span></label>
                            <div class="radio col-md-6 col-sm-6 col-xs-12">
                                <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor-replacepolicy">
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
                                        <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn4"><i class="fa fa-picture-o"></i></a>
                                        <input type="file" data-role="magic-overlay" data-target="#pictureBtn4" data-edit="insertImage" />
                                    </div>

                                    <div class="btn-group">
                                        <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                                        <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                                    </div>
                                </div>
                                <div id="editor-replacepolicy" class="editor-wrapper" placeholder="Enter your Description" required="required"></div>
                            </div>
                        </div>
                        <!--Product Image-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Product Image<span class="required">*</span></label>
                            <div class="radio col-md-2 col-sm-6 col-xs-12" id="div-product-image">
                                <input type="file"/>
                            </div>
                            <div class="radio col-md-2 col-sm-6 col-xs-12">
                                <button class="btn" type="button" id="btnProductImage">Add</button>
                            </div>
                        </div>
                        <div class="ln_solid"></div>
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <button type="submit" class="btn btn-warning">Add Product</button>
                                <button class="btn btn-primary" type="reset">Reset</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
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
<script type="text/javascript">
    $(document).ready(function(){
        $('#btnProductImage').click(function(){
            var $ctrl = $('<input/>').attr({ type: 'file'});
            $('#div-product-image').append($ctrl);
        });
        $('#btnSpecAdd').click(function(){
            var appendselect1 = '<select id="specification1" class="form-control" required> <option value="">--Select Specification--</option> <option value="press">Press</option> </select>'
            var appendselect2 = '<select id="specification2" class="form-control" required> <option value="">--No--</option> <option value="press">Press</option> </select>';
            var appendinput = '<input type="text" id="specification-input" class="form-control col-md-7 col-xs-12">';
            $('#div-spec-option1').append(appendselect1);
            $('#div-spec-option2').append(appendselect2);
            $('#div-spec-input').append(appendinput);
        });
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
        $('#tax-percentage-check').change(function(){
            $('#collapse8').slideToggle(250);
        });
    });
</script>

@endsection
