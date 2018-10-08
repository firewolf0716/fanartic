<!DOCTYPE html>
<html lang="ja">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>@yield('title', '店舗管理画面')｜or not__</title>

    <!-- Bootstrap -->
    <link href="{{ asset('gvendor/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{ asset('gvendor/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
    <!-- NProgress -->
    <link href="{{ asset('gvendor/nprogress/nprogress.css')}}" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
{{--    <link href="{{ asset('gvendor/bootstrap-daterangepicker/daterangepicker.css')}}/" rel="stylesheet">--}}

    <!-- bootstrap-datetimepicker -->
{{--    <link href="{{ asset('gvendor/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css')}}/" rel="stylesheet">--}}

    <!-- Custom Theme Style -->
    <link href="{{ asset('css/custom.css')}}" rel="stylesheet">

    <!-- Datatables -->
    <link href="{{ asset('gvendor/datatables.net-bs/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{ asset('gvendor/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{ asset('gvendor/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{ asset('gvendor/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{ asset('gvendor/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')}}" rel="stylesheet">

    <!-- Bootstrap Colorpicker -->
    <link href="{{ asset('gvendor/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css')}}"
          rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/multi-select.css') }}"/>

    <!-- BEGIN Order Manage PAGE LEVEL STYLES -->
    <link href="{{ asset('gvendor/select2/select2.css')}}"/>
    <link href="{{ asset('gvendor/datatables/plugins/bootstrap/dataTables.bootstrap.css')}}"/>
    <link href="{{ asset('gvendor/bootstrap-datepicker/css/datepicker.css')}}"/>
    <!-- END Order Manage PAGE LEVEL STYLES -->

    <!-- BEGIN Order Manage THEME STYLES -->
    <link href="{{ asset('css/global/components-rounded.css')}}" id="style_components" rel="stylesheet" type="text/css">
    <link href="{{ asset('css/global/plugins.css')}}" rel="stylesheet" type="text/css">
    <link href="{{ asset('css/global/layout.css')}}" rel="stylesheet" type="text/css">
    <link href="{{ asset('css/global/default.css')}}" rel="stylesheet" type="text/css" id="style_color">
    <!-- <link href="../../assets/admin/layout3/css/custom.css" rel="stylesheet" type="text/css"> -->
    <!-- <link href="../../assets/admin/layout3/css/custom.css" rel="stylesheet" type="text/css"> -->
    <!-- END Order Manage THEME STYLES -->
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="{{url('merchant/dashboard')}}" class="site_title">店舗用管理画面</a>
                </div>

                <div class="clearfix"></div>
                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_info">
                        <span>こんにちは!</span>
                        <h2>{{ Auth::user()->name }}さん</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br/>

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <h3>共通</h3>
                        <ul class="nav side-menu">
                            <li><a href="{{ url('merchant/dashboard') }}"><i class="fa fa-home"></i> ダッシュボード</a>
                            </li>
                            <li class="navproduct"><a><i class="fa fa-table"></i> 商品管理 <span
                                            class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="{{ url('merchant/product/manage') }}">商品一覧（販売中）</a></li>
                                    <li><a href="{{ url('merchant/product/sold') }}">商品一覧（売切）</a></li>
                                    <li class="navproductadd"><a href="{{ url('merchant/product/add') }}">新規登録</a></li>
                                    <li><a href="{{ url('merchant/product/csvupload') }}">csvから登録</a></li>
                                    <li><a href="{{ url('merchant/product/csvupdate') }}">csvから在庫連携</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-bar-chart-o"></i> 受注管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="{{ url('merchant/product/order') }}">受注一覧</a></li>
                                    <li><a href="{{ url('merchant/product/shipping') }}">出荷一覧</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-dollar"></i> 売上管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="{{ url('merchant/product/sales_management') }}">売上分析</a></li>
                                    <li><a href="#">アクセス解析</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-edit"></i> 店舗設定 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="{{url('merchant/setting')}}">基本情報設定</a></li>
                                    <li><a href="#">メンバー管理</a></li>
                                    <li><a href="#">権限設定</a></li>
                                    <li><a href="#">パスワードの変更</a></li>
                                    <li><a> 配送設定 <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="{{ url('merchant/shipping/add') }}">新規登録</a>
                                            <li><a href="{{ url('merchant/shipping/list') }}">配送設定一覧</a>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    @if($authMerchant->id == 1)
                    <div class="menu_section">
                        <h3>ブランド用</h3>
                        <ul class="nav side-menu">
                            <li><a><i class="fa fa-sitemap"></i> サイト構築 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="#">トップページ編集</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-file-o"></i> コンテンツ管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="#">新着情報</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    @endif

                    @if($authMerchant->id == 3)
                    <div class="menu_section">
                        <h3>アーカイブ用</h3>
                        <ul class="nav side-menu">
                            <li><a><i class="fa fa-bar-chart-o"></i> 買取サービス <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="#">見積依頼一覧</a></li>
                                    <li><a href="#">見積中商品</a></li>
                                    <li><a href="#">落札商品</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    @endif
                </div>
                <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
                <!-- <div class="sidebar-footer hidden-small">
                    <a data-toggle="tooltip" data-placement="top" title="Settings">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                        <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Lock">
                        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                    </a>
                </div> -->
                <!-- /menu footer buttons -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown"
                               aria-expanded="false">
                                {{ Auth::user()->name }}さん
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li>
                                    <a href="{{ route('merchant.logout') }}">
                                        <i class="fa fa-sign-out pull-right"></i> ログアウト</a>
                                </li>
                            </ul>
                        </li>

                        <li role="presentation" class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown"
                               aria-expanded="false">
                                <i class="fa fa-bell-o"></i>
                                <span class="badge bg-green">1</span>
                            </a>
                            <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                                <li>
                                    <a>
                                        <span>タイトルが入ります</span>
                                        <span class="time">2018年9月1日</span>
                                        <span class="message">
                                            メッセージが入ります(60文字くらい？)メッセージが入ります(60文字くらい？)メッセージが入ります(60文字くらい？)
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <div class="text-center">
                                        <a>
                                            <strong>すべてのお知らせをみる</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            @yield('content')
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
            <div class="pull-right">
                fanaRtic by <a href="https://loop-fitb.com">LOOP</a>
            </div>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
    </div>
</div>
</body>
</html>