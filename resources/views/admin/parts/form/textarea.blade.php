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
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">{{ $form['label'] }}</label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        <textarea id="{{ $key }}" name="{{ $key }}@if(isset($form['translate']) && $form['translate'])[{{ $form['lang'] }}]@endif" cols="30" rows="10" class="form-control"><?php echo $val ?></textarea>
        @if(isset($form['memo']) && !empty($form['memo'])) <span class="help-block"><?php echo $form['memo'] ?> </span> @endif
        <span class="help-block">{{$errors->first($key)}}</span>
    </div>
</div>
