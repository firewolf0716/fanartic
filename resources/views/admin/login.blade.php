<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Fanartic</title>

    <!-- Bootstrap -->
    <link href="{{ url('')}}/gvendor/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{ url('')}}/gvendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="{{ url('')}}/gvendor/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="{{ url('')}}/gvendor/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="{{ url('')}}/css/custom.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            
            {!! Form::open(array('id' => 'form_signin','url'=>'admin/signin')) !!}
            {{ Form::hidden('redirect', $redirect)}}
              <h1>Login(Admin)</h1>
              <div>
                <input type="text" name="username" class="form-control" placeholder="Username" required="" />
              </div>
              <div>
                <input type="password" name="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                <button class="btn btn-default submit">Log in</button>
              </div>

              <div class="clearfix"></div>

              
            {{ Form::close() }}
            
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
