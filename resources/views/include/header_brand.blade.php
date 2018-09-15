@php
$path = Request::path();
@endphp
<div class="header__nav-primary-wrap" data-header-primary>
    <ul class="header__nav-primary">
        @if(count($womencategories) > 0)
            <li><span class="header__nav-primary__button" data-header-primary__button
                      id="top_women">WOMEN</span>
                <div class="header__nav-primary__list">
                    <ul class="header__nav-primary__list__menu">
                        <li><a href="#">NEW</a></li>
                        <li><a href="{{ route('mall',$mallname) }}">BRAND</a></li>
                        @php $i=0; @endphp
                        @foreach($womencategories as $key => $womencategory)
                            @if($i < 5)
                                @php
                                    $url = $mallname.'/women/'.str_replace('/', '-',$womencategory->category_name_en);
                                    $i++;
                                @endphp
                                <li @if(strpos($path, $url) !== false) class="active" @endif>
                                    <a href="/{{$url}}">{{$womencategory->category_name}}</a>
                                </li>
                            @endif
                        @endforeach
                        <li><a href="#">EDITORIAL</a></li>
                        <li><a href="#">SALE</a></li>
                        <span class="slide-line"></span>
                    </ul>
                </div>
            </li>
        @endif
        @if(count($mencategories) > 0)
            <li><span class="header__nav-primary__button" data-header-primary__button id="top_men">MEN</span>
                <div class="header__nav-primary__list">
                    <ul class="header__nav-primary__list__menu">
                        <li class="active"><a href="#">NEW</a></li>
                        <li><a href="{{ route('mall',$mallname) }}">BRAND</a></li>
                        @php $i=0; @endphp
                        @foreach($mencategories as $key => $mencategory)
                            @if($i < 5)
                                @php
                                    $url = $mallname.'/men/'.str_replace('/', '-',
                                    $mencategory->category_name_en);
                                    $i++;
                                @endphp
                                <li @if(strpos($path, $url) !== false) class="active" @endif>
                                    <a href="/{{$url}}">{{$mencategory->category_name}}</a>
                                </li>
                            @endif
                        @endforeach
                        <li><a href="#">SALE</a></li>
                        <span class="slide-line"></span>
                    </ul>
                </div>
            </li>
        @endif
    </ul>
</div>