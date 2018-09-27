<!doctype html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <title>or Not__ | 探しているアイテム</title>
    <meta name="viewport" content="width=device-width">
    <meta name="format-detection" content="telephone=no">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link href="{{asset('css/hiraku.min.css')}}" rel="stylesheet">
    <link href="{{asset('css/modaal.min.css')}}" rel="stylesheet">
    <link href="{{asset('css/style.css')}}" rel="stylesheet">
    <script src="{{asset('js/vendor/jquery-2.1.4.min.js')}}"></script>
    <script src="{{asset('gvendor/parsleyjs/dist/parsley.min.js')}}"></script>
</head>

<body>
<div class="l-body">
    <header class="header">
        <div class="header__inner">
            <div class="header__button" data-header-button></div>
            <div class="header__button-search" data-header-search-button>
                <i class="c-icon header__button-search__icon"></i>
            </div>
            <div class="header__sitename">
                <a href="/">
                    <img src="{{asset('images/logo.png')}}" alt="" width="150">
                </a>
            </div>

        </div>
        <!--/.header__inner-->
    </header>
    <!--/.header-->
    <div class="l-content">
        @include('include.session_message')
        @yield('content')
        @include('include.checked_item')
    </div>
    <!--/.l-content-->
    @include('include.footer')

    <input type="hidden" name="_token" id="token_layout" value="{{ csrf_token() }}">
    <script src="{{asset('js/vendor/hiraku.min.js')}}"></script>
    <script src="{{asset('js/vendor/modaal.min.js')}}"></script>
    <script src="{{asset('js/plugins.js')}}"></script>
    <script src="{{asset('js/script.js')}}"></script>
    <script>
        $(function () {
            var topcategory = "{{$tcategory->category_id}}";
            if (topcategory == '1') {
                $('#top_women').removeClass('is-current');
                $('#top_men').addClass('is-current');
            }
            else if (topcategory == '2') {
                $('#top_men').removeClass('is-current');
                $('#top_women').addClass('is-current');
            }
        });
    </script>
</div>
</body>

</html>
<!--/.l-body-->