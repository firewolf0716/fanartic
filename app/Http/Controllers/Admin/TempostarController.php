<?php

namespace App\Http\Controllers\Admin;

use App\Components\TempostarComponent;
use App\Models\Tempostar;
use Illuminate\Http\Request;

class TempostarController extends Controller
{
    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $tempo_comp = new TempostarComponent(['ftp.tempostar.net', '1966_0', 'xrhyL19660']);

        // dd($tempo_comp->setStock("test-loop", 12));

        $this->model = new Tempostar();
        $title = $this->model->getTitle();
        $form_title = $this->name;
        $forms = $this->model->getFormList();
        $data = $this->model->find($id);
        return view('admin.layouts.show_zaiko')->with(compact('data', 'forms', 'title', 'form_title'));
    }
}
