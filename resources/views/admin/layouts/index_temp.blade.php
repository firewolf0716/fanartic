@extends('layouts.adminlayout')

@section('title', $title . '一覧')

@section('content')

    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>{{ $title }} 一覧</h3>
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>検索<small>Search</small>
                        </h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <br/>
                        <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                            @foreach($search as $s_id => $s_row)
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{ $s_id }}">
                                        {{ $s_row[0] }}
                                        <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="{{ $s_row[1] }}" id="{{ $s_id }}" required="required" class="form-control
                                       col-md-7 col-xs-12">
                                    </div>
                                </div>
                            @endforeach
                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                    <button class="btn btn-primary" type="button">検索</button>
                                    <button class="btn btn-primary" type="reset">リセット</button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_content">
                        <table id="datatable-buttons" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                @foreach ($tables as $key => $val)
                                    <th>{{ $key }}</th>
                                @endforeach
                                <th>&emsp;</th>
                            </tr>
                            </thead>
                            @foreach ($lists as $list)
                                <tr>
                                    @foreach ($tables as $key => $val)
                                        <td>{{ $list->{$val[0]} }}</td>
                                    @endforeach
                                    <td>
                                        <a href="">Edit</a>&emsp;
                                        <a href="">Delete</a>
                                    </td>
                                </tr>
                            @endforeach
                            <tbody>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
