<div class="form-group">
    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">{{ $form['label'] }}</label>
    <div class="col-md-6 col-sm-6 col-xs-12">
        @if(!empty($data->$key))
            <img src="{{ env('AWS_URL') . '/' . strtolower($title[1]) . '/' . $data->$key }}" alt="" width="300"><br>
            <br>
        @endif
        @if(!empty($form['memo'])) <span class="help-block">{{ $form['memo'] }} </span> @endif
    </div>
</div>