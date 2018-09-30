<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">{{ $form['label'] }}</label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        {!! nl2br($data->$key) !!}
        @if(!empty($form['memo'])) <span class="help-block">{{ $form['memo'] }} </span> @endif
    </div>
</div>