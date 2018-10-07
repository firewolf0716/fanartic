<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">{{ $form['label'] }}</label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        @php $vv = explode("->", $key); @endphp
        @if(count($vv) == 3)
            {{ $data->{$vv[0]}->{$vv[1]}->{$vv[2]} }}
        @elseif(count($vv) == 2)
            {{ $data->{$vv[0]}->{$vv[1]} }}
        @elseif(count($vv) == 1)
            {{ $data->{$vv[0]} }}
        @endif
    </div>
</div>