@extends('layouts.merchant_layout')

@section('title', 'Dashboard')

@section('content')
    <div class="">
        <div class="row">
            <div class="col-md-8 col-sm-8 col-xs-12">
                <div class="x_panel">
                    <div class="row x_title">
                        <h2>or Not__からのお知らせ</h2>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <ul>
                            <li>2018.10.02&emsp;<a href="">お知らせのタイトルが入ります</a></li>
                            <li>2018.10.02&emsp;<a href="">お知らせのタイトルが入ります</a></li>
                            <li>2018.10.02&emsp;<a href="">お知らせのタイトルが入ります</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
        </div>
        <div class="row top_tiles">
            <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <a href="">
                    <div class="tile-stats">
                        <h3><i class="fa fa-check-circle-o"></i>&emsp;本日の注文</h3>
                        <div class="count">150<span class="small">件</span></div>
                    </div>
                </a>
            </div>
            <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <a href="">
                    <div class="tile-stats tile-alert">
                        <h3><i class="fa fa-check-circle-o"></i>&emsp;未発送の注文</h3>
                        <div class="count">30<span class="small">件</span></div>
                    </div>
                </a>
            </div>
            <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <a href="">
                    <div class="tile-stats">
                        <h3><i class="fa fa-check-circle-o"></i>&emsp;お問い合わせ（未対応）</h3>
                        <div class="count">20<span class="small">件</span></div>
                    </div>
                </a>
            </div>
            <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <a href="">
                    <div class="tile-stats">
                        <h3><i class="fa fa-check-circle-o"></i>&emsp;本日の注文</h3>
                        <div class="count">1,500 <span class="small">件</span></div>
                    </div>
                </a>
            </div>
        </div>

        <div class="row top_tiles">
            <div class="animated flipInY col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <a href="">
                    <div class="tile-stats">
                        <h3><i class="fa fa-check-circle-o"></i>&emsp;10月2日の売上</h3>
                        <div class="count">15,000,000<span class="small">円</span></div>
                        <p>&emsp;</p>
                    </div>
                </a>
            </div>
            <div class="animated flipInY col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <a href="">
                    <div class="tile-stats">
                        <h3><i class="fa fa-check-circle-o"></i>&emsp;2018年10月の累計売上</h3>
                        <div class="count">35,000,000<span class="small">円</span></div>
                        <p>&emsp;</p>
                    </div>
                </a>
            </div>
            <div class="animated flipInY col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <a href="">
                    <div class="tile-stats">
                        <h3><i class="fa fa-check-circle-o"></i>&emsp;本日の注文</h3>
                        <div class="count">150<span class="small">件</span></div>
                        <p>前年比 -30.3%</p>
                    </div>
                </a>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>売上記録
                            <small>Weekly progress</small>
                        </h2>
                        <div class="filter">
                            <div id="reportrange" class="pull-right"
                                 style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
                                <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
                                <span>December 30, 2014 - January 28, 2015</span> <b class="caret"></b>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="demo-container" style="height:280px">
                                <div id="chart_plot_02" class="demo-placeholder"></div>
                            </div>
                            <div class="tiles">
                                <div class="col-md-4 tile">
                                    <span>アクセス数</span>
                                    <h2>231,809</h2>
                                    <span class="sparkline11 graph" style="height: 160px;">
                               <canvas width="200" height="60"
                                       style="display: inline-block; vertical-align: top; width: 94px; height: 30px;"></canvas>
                          </span>
                                </div>
                                <div class="col-md-4 tile">
                                    <span>販売数</span>
                                    <h2>1,809</h2>
                                    <span class="sparkline22 graph" style="height: 160px;">
                                <canvas width="200" height="60"
                                        style="display: inline-block; vertical-align: top; width: 94px; height: 30px;"></canvas>
                          </span>
                                </div>
                                <div class="col-md-4 tile">
                                    <span>アクセス数</span>
                                    <h2>231,809</h2>
                                    <span class="sparkline11 graph" style="height: 160px;">
                                 <canvas width="200" height="60"
                                         style="display: inline-block; vertical-align: top; width: 94px; height: 30px;"></canvas>
                          </span>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>運用マニュアル
                            <small>Manual</small>
                        </h2>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <article class="media event">
                            <a class="pull-left date">
                                <p class="month">4月</p>
                                <p class="day">23</p>
                            </a>
                            <div class="media-body">
                                <a class="title" href="#">頑張りましょう！</a>
                                <p>店長さんは死ぬ気で頑張ってください！！！</p>
                            </div>
                        </article>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>お知らせ
                            <small>News</small>
                        </h2>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        @foreach($notifyList as $notify)
                            @if($notify->hasMerchantId(Auth::user()->merchant_id))
                                <article class="media event">
                                    <a class="pull-left date">
                                        <p class="month">{{$notify->created_at->format('n')}}月</p>
                                        <p class="day">{{$notify->created_at->format('j')}}</p>
                                    </a>
                                    <div class="media-body">
                                        <a class="title" href="#">{{$notify->notify_name}}</a>
                                        <p>
                                            {{$notify->notify_memo}}
                                        </p>
                                    </div>
                                </article>
                            @endif
                        @endforeach
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>困った場合は
                            <small>Help</small>
                        </h2>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <article class="media event">
                            <a class="pull-left date">
                                <p class="month">4月</p>
                                <p class="day">23</p>
                            </a>
                            <div class="media-body">
                                <a class="title" href="#">頑張りましょう！</a>
                                <p>店長さんは死ぬ気で頑張ってください！！！</p>
                            </div>
                        </article>
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
@endsection
