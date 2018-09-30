
@if(isset($form['translate']) && $form['translate'])
    @if(isset($data->$key))
        <?php $trans_val = $data->getTranslations($key);?>
        <?php $val = old($key, (isset($trans_val[$form['lang']]) ? $trans_val[$form['lang']] : ''))?>
    @else
        <?php $val = old($key);?>
    @endif

@else
@if(isset($data->$key))
    <?php $val = old($key, $data->$key);?>
@else
    <?php $val = old($key);?>
@endif
@endif

<div class="form-group @if(!empty($errors->first($key))) has-error @endif">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">{{ $form['label'] }} @if(isset($form['required']) && $form['required']) * @endif</label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <input type="text" id="{{ $key }}" name="{{ $key }}@if(isset($form['translate']) && $form['translate'])[{{ $form['lang'] }}]@endif" class="form-control
                                    col-md-7 col-xs-12" value="<?php echo $val ?>">
        @if(!empty($form['memo'])) <span class="help-block">{{ $form['memo'] }} </span> @endif
        <span class="help-block">{{$errors->first($key)}}</span>
    </div>
</div>
