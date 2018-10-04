<div class="members__column__nav">
  <ul class="members__nav">
    <li><a href="{{url('user/cart')}}">{{ __('customer.カート') }}</a></li>
    <li><a href="{{url('user/favorite')}}">{{ __('customer.お気に入り') }}</a></li>
    <li><a href="{{url('user/wish')}}">{{ __('customer.探しているアイテム') }}</a></li>
    <li><a href="{{url('user/history')}}">{{ __('customer.注文履歴') }}</a></li>
    <li><a href="{{url('user/score')}}">{{ __('customer.ポイント') }}</a></li>
    <li><a href="#">{{ __('customer.会員情報') }}</a>
      <ul class="members__nav__sub">
        <li><a href="{{url('user/profile')}}">{{ __('customer.会員情報変更') }}</a></li>
        <li><a href="{{url('user/address')}}">{{ __('customer.お届け先の変更・追加') }}</a></li>
        <li><a href="{{url('user/credit')}}">{{ __('customer.クレジットカード情報') }}</a></li>
        <li><a href="{{url('user/magazine')}}">{{ __('customer.メールマガジン') }}</a></li>
        <li><a href="{{url('logout')}}">{{ __('auth.ログアウト') }}</a></li>
      </ul>
    </li>
  </ul>
</div>
<!--/.members__column__nav-->
