@if(isset($customerid))
    <div class="l-column--sub">
        <h2 class="c-hd">{{ __('customer.最近チェックしたアイテム') }}</h2>
        <div class="c-items c-items--03">
            @if(isset($recent))
                @foreach($recent as $recentitem)
                    <div class="c-item c-item--03">
                        <div class="c-item__column">
                            <div class="c-item__column__figure">
                                @php
                                    $imageset = $recentimages[$recentitem->product_id];

                                    $file_get_path_0 = $imageset[0]->master_image_name;
                                    $prod_path = url('').'/images/products/'.$file_get_path_0;

                                    $prod_path02 = NULL;
                                    $file_get_path_1 = '';
                                    try{
                                        $file_get_path_1 = $imageset[1]->master_image_name;
                                        if (isset($file_get_path_1)) {
                                            $prod_path02 = url('').'/images/products/'.$file_get_path_1;
                                        }
                                    } catch(\Exception $ex){

                                    }
                                @endphp
                                <figure class="c-item__figure"><a
                                            href="{{url('brands/'.$recentitem->brand_name_en.'/goods/'.$recentitem->product_id)}}"><img
                                                style="width:440px; height:150px;" src="{{$prod_path}}" alt=""></a>
                                </figure>
                            </div>
                            <!--/.c-item__column__figure-->
                        </div>
                        <!--/.c-item__column-->
                    </div>
            @endforeach
        @endif
        <!--/.c-item-->
        </div>
        <!--/.c-items c-items--03-->
    </div>
@endif
