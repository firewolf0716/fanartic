<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="utf-8">
</head>
<body>
<h2>【サービス名】＜会員本登録完了のお知らせ＞</h2>
<h2>{{ $data['user_name'] }}さん</h2><br />
<p>[service name] ヘの本登録が完了しました！</p><br />
<p>下記のURLからログインしていただけます。<br/>
    --------------------------------------------------------------------------<br/>
    ■ ログインURL：{{ route('login') }}
</p>
<br/>
@include('emails.ja.include.footer')
