<div class="footer">
    <div class="footer__nav">
        <div class="l-wrapper">
            <h2 class="footer__nav__hd" data-accordion="">{{ __('header.ブランド') }}</h2>
            <div class="footer__nav__list-wrap">
                <ul class="footer__nav__list footer__nav__list--col04">
                    @foreach($brands as $brand)
                        <li><a href="{{'/'.$mallname.'/'.$brand->brand_name_en}}">{{$brand->brand_name}}</a></li>
                    @endforeach
                </ul>
            </div>
            <div class="footer__nav__column">
                <div class="footer__nav__column__col">
                    <h2 class="footer__nav__hd" data-accordion="">{{ __('common.サポート') }}</h2>
                    <div class="footer__nav__list-wrap">
                        <ul class="footer__nav__list">
                            <li><a href="{{ route('page.terms_customer') }}">{{ __('common.ユーザーご利用規約') }}</a></li>
                            <li><a href="{{ route('page.terms_merchant') }}">{{ __('common.出店者ご利用規約') }}</a></li>
                            <li><a href="{{ route('page.tokusho') }}">{{ __('common.特定商取引法に基づく表記') }}</a></li>
                            <li><a href="{{ route('page.privacy') }}">{{ __('common.プライバシーポリシー') }}</a></li>
                            <li><a href="{{ route('page.help') }}">{{ __('common.ヘルプ') }}</a></li>
                        </ul>
                    </div>
                </div>
                <!--/.footer__nav__column__col-->
                <div class="footer__nav__column__col">
                    <h2 class="footer__nav__hd" data-accordion="">{{ __('common.接触') }}</h2>
                    <div class="footer__nav__list-wrap">
                        <ul class="footer__nav__list">
                            <li><a href="{{ route('page.company') }}">{{ __('common.運営会社情報') }}</a></li>
                            <li><a href="{{ route('page.recruit') }}">{{ __('common.採用情報') }}</a></li>
                            <li><a href="{{ route('page.sitemap') }}">{{ __('common.サイトマップ') }}</a></li>
                            <li><a href="{{ route('page.contact') }}">{{ __('common.お問合わせ') }}</a></li>
                        </ul>
                    </div>
                </div>
                <!--/.footer__nav__column__col-->
                <div class="footer__nav__column__col">
                    <h2 class="footer__nav__hd">{{ __('common.国 / 言語') }}</h2>
                    <ul class="footer__nav__country">
                        <ul class="footer__nav__list">
                            <li><a href="{{ route('page.company') }}">{{ __('common.日本') }}</a></li>
                            <li><a href="{{ route('page.recruit') }}">{{ __('common.中国') }}</a></li>
                            <li><a href="{{ route('page.sitemap') }}">{{ __('common.アメリカ') }}</a></li>
                            <li><a href="{{ route('page.contact') }}">{{ __('common.韓国') }}</a></li>
                        </ul>
                    </ul>

                    <h2 class="footer__nav__hd">{{ __('common.フォローする') }}</h2>
                    <ul class="footer__nav__sns">
                        <li><a href="#"><i class="c-icon footer__nav__sns__icon--twitter"></i></a></li>
                        <li><a href="#"><i class="c-icon footer__nav__sns__icon--facebook"></i></a></li>
                        <li><a href="#"><i class="c-icon footer__nav__sns__icon--instagram"></i></a></li>
                        <li><a href="#"><i class="c-icon footer__nav__sns__icon--pinterest"></i></a></li>
                    </ul>
                </div>
                <!--/.footer__nav__column__col-->
            </div>
            <!--/.footer__nav__column-->
        </div>
        <!--/.l-wrapper-->
    </div>
    <!--/.footer__nav-->
    <div class="footer__copyrights">
        <p>&copy; or Not__ INC. ALL RIGHTS RESERVED.</p>
    </div>
    <!--/.footer__copyrights-->
</div>
<!--/.footer-->
