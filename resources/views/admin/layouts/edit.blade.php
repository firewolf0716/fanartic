@extends('layouts.adminlayout')

@section('title', $title[0] . '編集')

@section('content')

    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>{{ $title[0] }}編集</h3>
            </div>

        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_content">
                        <br/>
                        <form action="{{ action('Admin\\'.ucfirst($form_title).'Controller@update',['id' => $data->id])
                        }}"
                              method="post"
                              class="form-horizontal" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            @if(isset($forms['translatable']) && $forms['translatable'])
                                <div class="" role="tabpanel" data-example-id="togglable-tabs">
                                    <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#tab_content1" id="japanese-tab" role="tab" data-toggle="tab" aria-expanded="true">日本語</a>
                                        </li>
                                        <li role="presentation" class=""><a href="#tab_content2" role="tab" id="english-tab" data-toggle="tab" aria-expanded="false">英語</a>
                                        </li>
                                        <li role="presentation" class=""><a href="#tab_content3" role="tab" id="korean-tab" data-toggle="tab" aria-expanded="false">韓国語</a>
                                        </li>
                                    </ul>
                                    <div id="myTabContent" class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                                            @endif
                                            @foreach($forms as $key => $form)
                                                @if($key <> 'translatable')
                                                    <?php $form['lang'] = 'ja'; ?>
                                                    @switch($form['type'])
                                                    @case('hide')
                                                    @break
                                                    @case('textarea')
                                                    @include('admin.parts.form.textarea')
                                                    @break
                                                    @case('html')
                                                    @include('admin.parts.form.html')
                                                    @break
                                                    @case('language')
                                                    @php
                                                    $form['values'] = App\Services\CodeService::getLanguages();
                                                    @endphp
                                                    @include('admin.parts.form.select')
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
                                                @endif
                                            @endforeach
                                            @if(isset($forms['translatable']) && $forms['translatable'])
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
                                            @foreach($forms as $key => $form)
                                                @if(isset($form['translate']) && $form['translate'])
                                                    <?php $form['lang'] = 'en'; ?>
                                                    @switch($form['type'])
                                                    @case('textarea')
                                                    @include('admin.parts.form.textarea')
                                                    @break
                                                    @default
                                                    @include('admin.parts.form.text')
                                                    @endswitch
                                                @endif
                                            @endforeach
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
                                            @foreach($forms as $key => $form)
                                                @if(isset($form['translate']) && $form['translate'])
                                                    <?php $form['lang'] = 'ko'; ?>
                                                    @switch($form['type'])
                                                    @case('textarea')
                                                    @include('admin.parts.form.textarea')
                                                    @break
                                                    @default
                                                    @include('admin.parts.form.text')
                                                    @endswitch
                                                @endif
                                            @endforeach
                                        </div>
                                    </div>
                                    @endif
                                    <div class="ln_solid"></div>
                                    <div class="form-group">
                                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                            <button type="submit" class="btn btn-success">保存する</button>
                                        </div>
                                    </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection
