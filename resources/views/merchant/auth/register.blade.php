<!DOCTYPE html>
<html lang="ja">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Merchant</title>

    <!-- Bootstrap -->
    <link href="{{asset('gvendor/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{ asset('gvendor/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
    <!-- NProgress -->
    <link href="{{ asset('gvendor/nprogress/nprogress.css')}}" rel="stylesheet">
    <!-- Animate.css -->
    <link href="{{ asset('gvendor/animate.css/animate.min.css')}}" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="{{ asset('css/custom.css')}}" rel="stylesheet">
</head>

<body class="login">
<div>
    <a class="hiddenanchor" id="signup"></a>
    <a class="hiddenanchor" id="signin"></a>

    <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="login_content">
                <form method="POST" action="{{ route('merchant.register') }}" aria-label="{{ __('Register') }}">
                    @csrf
                    <h1>登録(Merchant)</h1>
                    <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                        <input type="text" name="name" class="form-control" placeholder="Name"/>
                        @if ($errors->has('name'))
                            <span class="help-block">{{ $errors->first('name')}}</span>
                        @endif
                    </div>
                    <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                        <input type="text" name="email" class="form-control" placeholder="Email"/>
                        @if ($errors->has('email'))
                            <span class="help-block">{{ $errors->first('email')}}</span>
                        @endif
                    </div>
                    <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                        <input type="password" name="password" class="form-control" placeholder="Password"/>
                        @if ($errors->has('password'))
                            <span class="help-block">{{ $errors->first('password')}}</span>
                        @endif
                    </div>
                    <div>
                        <button class="btn btn-default submit">Register</button>
                    </div>

                    <div class="clearfix"></div>
                </form>

            </section>
        </div>
    </div>
</div>
</body>
</html>
