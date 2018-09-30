<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\Duty;
use Monarobase\CountryList\CountryList;

class DutyController extends Controller
{
    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $country = new CountryList();
        $countries = (object)json_decode($country->getList('ja', 'json'));

        $this->model = new Duty();
        $title = $this->model->getTitle();
        $form_title = $this->name;
        $forms = $this->model->getFormList();
        $data = $this->model->find($id);
        return view('admin.duty.show')->with(compact('data', 'forms', 'title', 'form_title', 'countries'));
    }
}
