<div class="c-item c-item--02">
    <div class="c-item__column">
        <div class="c-item__column__figure">
            @php
                $imageset = $product->masterImages;
                
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
            <figure class="c-item__figure">
                <a href="{{url('')}}/brands/{{$product->brand_name}}/goods/{{$product->product_id}}"
                   class="image-block">
                    @if (empty($file_get_path_0))
                        <img src="http://placehold.jp/340x440.png" alt="No Image">
                    @elseif (empty($file_get_path_1))
                        <img style="height:300px; width:440px;" src="{{$prod_path}}" alt="">
                    @else
                        <img style="height:300px; width:440px;" src="{{$prod_path02}}" alt="">
                        <span>
                            <img style="height:300px; width:440px;" src="{{$prod_path}}" alt="">
                        </span>
                    @endif
                </a>
                <a href="#" class="fav-block"><i class="c-icon
                header__nav-secondary__icon--favorite"></i></a>
            </figure>
        </div>
        <!--/.c-item__column__figure-->
        <div class="c-item__column__data">
            <a href="">
                <h3 class="c-item__name">{{$product->product_name}}</h3>
                <ul class="c-item__data">
                    <li>{{$product->product_name_detail}}</li>
                </ul>
                <div class="c-item__price">
                    @if($product->priceRange()['min'] < $product->priceRange()['max'])
                        <strong>&yen;{{number_format($product->priceRange()['min'])}}-
                        &yen;{{number_format($product->priceRange()['max'])}}</strong>
                    @else
                        <strong>&yen;{{number_format($product->priceRange()['min'])}}</strong>
                    @endif
                </div>
            </a>
        </div>
        <!--/.c-item__column__data-->
    </div>
    <!--/.c-item__column-->
</div>