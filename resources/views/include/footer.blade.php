<div class="footer">
    <div class="footer__nav">
        <div class="l-wrapper">
            <h2 class="footer__nav__hd" data-accordion="">BRAND</h2>
            <div class="footer__nav__list-wrap">
                <ul class="footer__nav__list footer__nav__list--col04">
                    @foreach($brands as $brand)
                        <li><a href="{{url('').'/brands/'.$brand->brand_name_en}}">{{$brand->brand_name}}</a></li>
                    @endforeach
                </ul>
            </div>
            <div class="footer__nav__column">
                <div class="footer__nav__column__col">
                    <h2 class="footer__nav__hd" data-accordion="">CATEGORY</h2>
                    <div class="footer__nav__list-wrap">
                        <ul class="footer__nav__list footer__nav__list--col02">
                            @foreach($maincategorys as $maincategory)
                                @php
                                    if(isset($listtype)){
                                        if($listtype == 'malls'){
                                            $url = url('').'/category/fanartic/men/'.str_replace('/', '-', $maincategory->category_name_en);
                                        } else if($listtype == 'mall_brands'){
                                            $url = url('').'/category/'.$mallname.'/men/'.str_replace('/', '-', $maincategory->category_name_en);
                                        } else if($listtype == 'mall_brand_products'){
                                            $url = url('').'/'.$mallname.'/'.$brandname.'/men/'.str_replace('/', '-', $maincategory->category_name_en);
                                        } else if($listtype == 'brand_products'){
                                            $url = url('').'/brands/'.$brandid.'/men/'.str_replace('/', '-', $maincategory->category_name_en);
                                        }
                                    }
                                @endphp
                                <li><a href="{{$url}}">{{$maincategory->category_name}}</a>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <!--/.footer__nav__column__col-->
                <div class="footer__nav__column__col">
                    <h2 class="footer__nav__hd" data-accordion="">SUPPORT</h2>
                    <div class="footer__nav__list-wrap">
                        <ul class="footer__nav__list">
                            <li><a href="{{ route('page.terms') }}">ご利用規約</a></li>
                            <li><a href="{{ route('page.tokusho') }}">特定商取引法に基づく表記</a></li>
                            <li><a href="{{ route('page.privacy') }}">プライバシーポリシー</a></li>
                            <li><a href="{{ route('page.cancel') }}">返金ポリシー</a></li>
                            <li><a href="{{ route('page.help') }}">ヘルプ</a></li>
                        </ul>
                    </div>
                </div>
                <!--/.footer__nav__column__col-->
                <div class="footer__nav__column__col">
                    <h2 class="footer__nav__hd" data-accordion="">CONTACT</h2>
                    <div class="footer__nav__list-wrap">
                        <ul class="footer__nav__list">
                            <li><a href="{{ route('page.company') }}">運営会社情報</a></li>
                            <li><a href="{{ route('page.recruit') }}">採用情報</a></li>
                            <li><a href="{{ route('page.sitemap') }}">サイトマップ</a></li>
                            <li><a href="{{ route('page.contact') }}">お問合わせ</a></li>
                        </ul>
                    </div>
                    <h2 class="footer__nav__hd">FOLLOW</h2>
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