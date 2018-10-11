@php
    $path = Request::path();
@endphp
<div class="header__nav-primary-wrap" data-header-primary>
    <ul class="header__nav-primary">
        @php
            $women_active = '';
            $men_active = '';
            if (session('cate_type')){
                if(session('cate_type') == 'women')
                    $women_active = 'is-current';
                else if(session('cate_type') == 'men'){
                    $men_active = 'is-current';
                }
            } else {
                $women_active = 'is-current';
            }

        @endphp
        @if(count($women_categories) > 0)
            <li><span class="header__nav-primary__button {{ $women_active}}" data-header-primary__button
                      id="top_women">{{ __('header.レディース') }}</span>
                <div class="header__nav-primary__list">
                    <ul class="header__nav-primary__list__menu">
                        <li><a href="#">{{ __('common.新規') }}</a></li>
                        <li><a href="{{ route('mall', ['mallname' => $mallname]) }}">{{ __('header.ブランド') }}</a>
						</li>
                        @php $i=0; @endphp
                        @foreach($women_categories as $key => $womencategory)
                            @if($i < 5)
                                @php
                                    $url = $mallname.'/women/'.str_replace('/', '-',$womencategory->category_name_en);
                                    $i++;
                                @endphp
                                <li @if(strpos($path, $url) !== false) class="active" @endif>
                                    <a href="{{ url($url) }}">{{$womencategory->category_name}}</a>
                                </li>
                            @endif
                        @endforeach
                        <li><a href="#">{{ __('common.SALE') }}</a></li>
                        <span class="slide-line"></span>
                    </ul>
                </div>
            </li>
        @endif
        @if(count($men_categories) > 0)
            <li><span class="header__nav-primary__button {{ $men_active}}" data-header-primary__button id="top_men">{{ __('header.メンズ')
            }}</span>
                <div class="header__nav-primary__list">
                    <ul class="header__nav-primary__list__menu">
                        <li class="active"><a href="#">{{ __('common.新規') }}</a></li>
                        <li><a href="{{ route('mall', ['mallname' => $mallname]) }}">{{ __('header.ブランド') }}</a></li>
                        @php $i=0; @endphp
                        @foreach($men_categories as $key => $mencategory)
                            @if($i < 5)
                                @php
                                    $url = $mallname.'/men/'.str_replace('/', '-',
                                    $mencategory->category_name_en);
                                    $i++;
                                @endphp
                                <li @if(strpos($path, $url) !== false) class="active" @endif>
                                    <a href="{{ url($url) }}">{{$mencategory->category_name}}</a>
                                </li>
                            @endif
                        @endforeach
                        <li><a href="#">{{ __('common.SALE') }}</a></li>
                        <span class="slide-line"></span>
                    </ul>
                </div>
            </li>
        @endif
    </ul>
    <div class="u-sp">
        <ul class="header__nav-primary__buttons">
            <li><a href="{{ route('login') }}">ログインする</a></li>
            <li><a href="{{ route('register') }}">会員登録する</a></li>
        </ul>
        <ul class="header__nav-primary__list__menu">
            <li>
                <div class="is-link" js-data-header-modal-sp="header-lang">JP / JPY（￥）<i></i></div>
            </li>
        </ul>
    </div>
</div>
