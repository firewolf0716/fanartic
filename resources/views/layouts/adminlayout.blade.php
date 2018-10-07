<!DOCTYPE html>
<html lang="ja">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title></title>

    <!-- Bootstrap -->
    <link href="{{ url('')}}/gvendor/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{ url('')}}/gvendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="{{ url('')}}/gvendor/nprogress/nprogress.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="{{ url('')}}/gvendor/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- bootstrap-datetimepicker -->
    <link href="{{ url('')}}/gvendor/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="{{ url('')}}/css/custom.css" rel="stylesheet">

    <!-- Datatables -->
    <link href="{{ url('')}}/gvendor/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="{{ url('')}}/gvendor/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="{{ url('')}}/gvendor/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="{{ url('')}}/gvendor/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="{{ url('')}}/gvendor/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Colorpicker -->
    <link href="{{ url('')}}/gvendor/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{ url('') }}/css/multi-select.css" />
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="{{url('admin/dashboard')}}" class="site_title">fanaRtic backend</a>
                </div>

                <div class="clearfix"></div>
                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <img src="{{ URL::asset('images/img.jpg') }}" alt="..." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>{{ __('common.ようこそ!') }}</span>
                        <h2>{{Session::get('adminname')}}</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br />

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <h3>{{ __('common.共通') }}</h3>
                        <ul class="nav side-menu">
                            <li><a href="{{ url('admin') }}"><i class="fa fa-home"></i> {{ __('admin.ダッシュボード') }}</a></li>
                            <li><a><i class="fa fa-table"></i> {{ __('admin.マスター管理') }} <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a>{{ __('admin.モール') }}<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li class="sub_menu"><a href="{{url('admin/mall/add')}}">{{ __('auth.新規登録') }}</a></li>
                                            <li><a href="{{url('admin/mall/list')}}">{{ __('admin.モール一覧') }}</a></li>
                                        </ul>
                                    </li>
                                    <li><a>{{ __('admin.ジャンル') }}<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li class="sub_menu"><a href="{{url('admin/genre/add')}}">{{ __('auth.新規登録') }}</a></li>
                                            <li><a href="{{url('admin/genre/list')}}">{{ __('admin.ジャンル一覧') }}</a></li>
                                        </ul>
                                    </li>
                                    <li><a>{{ __('header.ブランド') }}<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li class="sub_menu"><a href="{{url('admin/brand/add')}}">{{ __('auth.新規登録') }}</a></li>
                                            <li><a href="{{url('admin/brand/list')}}">{{ __('common.ブランド一覧') }}</a></li>
                                        </ul>
                                    </li>
                                    <li><a>{{ __('admin.カテゴリ') }}<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li class="sub_menu"><a href="{{url('admin/category/add')}}">{{ __('auth.新規登録') }}</a></li>
                                            <li><a href="{{url('admin/category/list')}}">{{ __('admin.カテゴリ一覧') }}</a></li>
                                        </ul>
                                    </li>
                                    <li><a>{{ __('admin.カラー') }}<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li class="sub_menu"><a href="{{url('admin/color/add')}}">{{ __('auth.新規登録') }}</a></li>
                                            <li><a href="{{url('admin/color/list')}}">{{ __('admin.カラー一覧') }}</a></li>
                                        </ul>
                                    </li>
                                    <li><a>{{ __('admin.サイズカテゴリ') }}<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li class="sub_menu"><a href="{{url('admin/size/addcategory')}}">{{ __('auth.新規登録') }}</a></li>
                                            <li><a href="{{url('admin/size/listcategory')}}">{{ __('admin.サイズカテゴリ一覧') }}</a></li>
                                        </ul>
                                    </li>
                                    <li><a>{{ __('admin.サイズ') }}<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li class="sub_menu"><a href="{{url('admin/size/add')}}">{{ __('auth.新規登録') }}</a></li>
                                            <li><a href="{{url('admin/size/list')}}">{{ __('admin.サイズ一覧') }}</a></li>
                                        </ul>
                                    </li>
                                    <li><a>{{ __('admin.イベント') }}<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li class="sub_menu"><a href="{{url('admin/event/add')}}">{{ __('auth.新規登録') }}</a></li>
                                            <li><a href="{{url('admin/event/list')}}">{{ __('admin.イベント一覧') }}</a></li>
                                        </ul>
                                    </li>
                                    <li><a>{{ __('admin.お知らせ(店舗)') }}<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li class="sub_menu"><a href="{{url('admin/notifymerchant/add')}}">{{ __('auth.新規登録') }}</a></li>
                                            <li><a href="{{url('admin/notifymerchant/list')}}">{{ __('admin.お知らせ(店舗)一覧') }}</a></li>
                                        </ul>
                                    </li>
                                    <li><a>{{ __('admin.お知らせ(顧客)') }}<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li class="sub_menu"><a href="{{url('admin/notifycustomer/add')}}">{{ __('auth.新規登録') }}</a></li>
                                            <li><a href="{{url('admin/notifycustomer/list')}}">{{ __('admin.お知らせ(顧客)一覧') }}</a></li>
                                        </ul>
                                    </li>
                                    <li><a>{{ __('admin.出店プラン') }}<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li class="sub_menu"><a href="{{url('admin/plan/add')}}">{{ __('auth.新規登録') }}</a></li>
                                            <li><a href="{{url('admin/plan/list')}}">{{ __('admin.出店プラン一覧') }}</a></li>
                                        </ul>
                                    </li>
                                    <li><a>関税マスタ<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li class="sub_menu"><a href="{{url('admin/duty/create')}}">新規登録</a></li>
                                            <li><a href="{{url('admin/duty')}}">プラン一覧</a></li>
                                        </ul>
                                    </li>
                                    <li><a>インポートデータ<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li class="sub_menu"><a href="{{url('admin/import/csv')}}">{{ __('admin.csv からデータをインポートする') }}</a></li>
                                        </ul>
                                    </li>
                                    <li><a>{{ __('admin.関税') }}<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="{{url('admin/duty/list')}}">{{ __('admin.関税リスト') }}</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>


                            <li><a><i class="fa fa-table"></i> {{ __('admin.店舗管理') }} <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li class="sub_menu"><a href="{{url('admin/merchants/add')}}">{{ __('auth.新規登録') }}</a></li>
                                    <li><a href="{{url('admin/merchants/list')}}">{{ __('admin.店舗一覧') }}</a></li>
                                </ul>
                            </li>
                            @if(Session::get('adminper') == '1')
                            <li><a><i class="fa fa-table"></i> {{ __('admin.管理者') }} <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li class="sub_menu"><a href="{{url('admin/admins/add')}}">{{ __('admin.新規登録') }}</a></li>
                                    <li><a href="{{url('admin/admins/list')}}">{{ __('admin.管理者一覧') }}</a></li>
                                </ul>
                            </li>
                            @endif
                        </ul>
                    </div>
                </div>
                <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
                <div class="sidebar-footer hidden-small">
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
                </div>
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
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <img src="{{ URL::asset('images/img.jpg') }}" alt="">{{Session::get('adminname')}}
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li><a href="{{ route('admin.logout') }}">
                                    <i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                            </ul>
                        </li>

                        <li role="presentation" class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-bell-o"></i>
                                <span class="badge bg-green">6</span>
                            </a>
                            <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                                <li>
                                    <a>
                                        <span class="image"><img src="{{ URL::asset('images/img.jpg') }}" alt="Profile Image" /></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="{{ URL::asset('images/img.jpg') }}" alt="Profile Image" /></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="{{ URL::asset('images/img.jpg') }}" alt="Profile Image" /></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="{{ URL::asset('images/img.jpg') }}" alt="Profile Image" /></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <div class="text-center">
                                        <a>
                                            <strong>See All Alerts</strong>
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
