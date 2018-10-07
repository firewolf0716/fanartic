@if(isset($data->$key))
    <?php $val = $data->$key; ?>
@else
    <?php $val = old($key); ?>
@endif
<div class="form-group @if(!empty($errors->first($key))) has-error @endif">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">{{ $form['label'] }} @if(isset($form['required']) && $form['required']) * @endif</label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <select name="{{ $key }}" id="{{ $key }}" class="form-control">
            <option value=""></option>
            @foreach($form['values'] as $k=> $v)
                <option value="{{ $k }}" @if($val !== NULL && $k == $val) selected @endif>{{ $v }}</option>
            @endforeach
        </select>
        @if(!empty($form['memo'])) <span class="help-block">{{ $form['memo'] }} </span> @endif
        <span class="help-block">{{$errors->first($key)}}</span>
    </div>
</div>