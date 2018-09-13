<div class="header__nav-primary-wrap" data-header-primary>
    <ul class="header__nav-primary">
        <li><span class="header__nav-primary__button" data-header-primary__button
                  id="top_women">WOMEN</span>
            <div class="header__nav-primary__list">
                <ul class="header__nav-primary__list__menu">
                    <li><a href="#">NEW</a></li>
                    <li><a href="{{url('brands')}}">BRAND</a></li>
                    @php $i=0; @endphp
                    @foreach($womencategories as $key => $womencategory)
                        @if($i < 5)
                            @php
                                $url = '/';
                                if(isset($listtype)){
                                    if($listtype == 'malls'){
                                        $url = url('').'/category/fanartic/women/'.str_replace('/', '-', $womencategory->category_name_en);
                                    } else if($listtype == 'mall_brands'){
                                        $url = url('').'/category/'.$mallname.'/women/'.str_replace('/', '-', $womencategory->category_name_en);
                                    } else if($listtype == 'mall_brand_products'){
                                        $url = url('').'/'.$mallname.'/'.$brandname.'/women/'.str_replace('/', '-', $womencategory->category_name_en);
                                    } else if($listtype == 'brand_products'){
                                        $url = url('').'/brands/'.$brandid.'/women/'.str_replace('/', '-', $womencategory->category_name_en);
                                    }
                                }
                                $i++;
                            @endphp
                            <li><a href="{{$url}}">{{$womencategory->category_name}}</a></li>
                        @endif
                    @endforeach
                    <li><a href="#">EDITORIAL</a></li>
                    <li><a href="#">SALE</a></li>
                    <span class="slide-line"></span>
                </ul>
            </div>
        </li>
        <li><span class="header__nav-primary__button" data-header-primary__button id="top_men">MEN</span>
            <div class="header__nav-primary__list">
                <ul class="header__nav-primary__list__menu">
                    <li><a href="#">NEW</a></li>
                    <li><a href="{{url('brands')}}">BRAND</a></li>
                    @php $i=0; @endphp
                    @foreach($mencategories as $key => $mencategory)
                        @if($i < 5)
                            @php
                                $url = '/';
                                if(isset($listtype)){
                                    if($listtype == 'malls'){
                                        $url = url('').'/category/fanartic/men/'.str_replace('/', '-', $mencategory->category_name_en);
                                    } else if($listtype == 'mall_brands'){
                                        $url = url('').'/category/'.$mallname.'/men/'.str_replace('/', '-', $mencategory->category_name_en);
                                    } else if($listtype == 'mall_brand_products'){
                                        $url = url('').'/'.$mallname.'/'.$brandname.'/men/'.str_replace('/', '-', $mencategory->category_name_en);
                                    } else if($listtype == 'brand_products'){
                                        $url = url('').'/brands/'.$brandid.'/men/'.str_replace('/', '-', $mencategory->category_name_en);
                                    }
                                }
                                $i++;
                            @endphp
                            <li><a href="{{$url}}">{{$mencategory->category_name}}</a></li>
                        @endif
                    @endforeach
                    <li><a href="#">SALE</a></li>
                    <span class="slide-line"></span>
                </ul>
            </div>
        </li>
    </ul>
</div>