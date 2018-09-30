@extends('layouts.adminlayout')

@section('title', $title[0] . '一覧')

@section('content')

    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>{{ $title[0] }}一覧
                    <small>{{ $title[1] }} List</small>
                </h3>
            </div>
        </div>

        <div class="clearfix"></div>

        @if(count($forms))
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>検索
                                <small>Search</small>
                            </h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <br/>
                            <form method="get" class="form-horizontal form-label-left">
                                @foreach($search_forms as $key => $form)
                                    @switch($form['type'])
                                    @case('hide')
                                    @break
                                    @case('textarea')
                                    @include('admin.parts.form.textarea')
                                    @break
                                    @case('html')
                                    @include('admin.parts.form.html')
                                    @break
                                    @case('select')
                                    @include('admin.parts.form.select')
                                    @break
                                    @case('datetime')
                                    @include('admin.parts.form.datetime')
                                    @break
                                    @case('file')
                                    @include('admin.parts.form.file')
                                    @break
                                    @case('json')
                                    @include('admin.parts.form.json')
                                    @break
                                    @default
                                    @include('admin.parts.form.text')
                                    @endswitch
                                @endforeach

                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                        <button class="btn btn-primary" type="submit">検索</button>
                                        <button class="btn btn-primary" type="reset">リセット</button>
                                    </div>
                                </div>
                            </form>


                        </div>
                    </div>
                </div>
            </div>
        @endif
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_content">
                        <table id="datatable-buttons" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                @foreach ($tables['fields'] as $key => $val)
                                    <th class="{{ $val['class'] }}">{{ $val['label'] }}</th>
                                @endforeach
                                <th>&emsp;</th>
                            </tr>
                            </thead>
                            <tbody data-model="<?= $title[1]; ?>">
                            @foreach ($lists as $list)
                                <tr id="item_{{ $list->id }}">
                                    @foreach ($tables['fields'] as $key => $val)
                                        <td @if($key == 'sort') class="handle" @endif>
                                            @if (is_array($val['value']))
                                                @foreach($val['value'] as $k=>$v)
                                                    @if($k) <br/> @endif
                                                    {{ $list->{$v} }}
                                                @endforeach
                                            @else
                                                @php $vv = explode("->", $val['value']); @endphp
                                                @if(count($vv) == 3)
                                                    {{ $list->{$vv[0]}->{$vv[1]}->{$vv[2]} }}
                                                @elseif(count($vv) == 2)
                                                    {{ $list->{$vv[0]}->{$vv[1]} }}
                                                @elseif(count($vv) == 1)
                                                    {{ $list->{$val['value']} }}
                                                @endif
                                            @endif
                                        </td>
                                    @endforeach
                                    <td>
                                        @foreach ($tables['actions']['content'] as $key => $val)
                                            @switch($val['action'])
                                            @case('show')
                                            <a href="{{ action('Admin\\'.$title[1].'Controller@show', $list->id)
                                                    }}">
                                                {{ $val['label'] }}
                                            </a>
                                            @break
                                            @case('edit')
                                            <a href="{{ action('Admin\\'.$title[1].'Controller@edit', $list->id)
                                                    }}">
                                                {{ $val['label'] }}
                                            </a>
                                            @break
                                            @case('auth_image')
                                            <a href="{{ action('Admin\\'.$title[1].'Controller@authImage', $list->id)
                                                    }}">
                                                {{ $val['label'] }}
                                            </a>
                                            @break
                                            @case('destroy')
                                            @component('admin.parts.btn.del')
                                            @slot('table', strtolower($title[1]))
                                            @slot('id', $list->id)
                                            @endcomponent
                                            @break
                                            @case('behost')
                                            @component('admin.parts.btn.behost')
                                            @slot('list', $list)
                                            @endcomponent
                                            @break
                                            @default
                                            @endswitch
                                        @endforeach
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
@endsection
