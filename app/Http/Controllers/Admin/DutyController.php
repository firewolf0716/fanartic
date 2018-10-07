<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Duty;
use App\Models\DutyCountry;
use App\Services\MatchService;

use Countries;

class DutyController extends Controller
{
    public function addpost()
    {
        if (Input::get('type') != 'country') {
            $duties = new Duty();
            $entry = array(
                'name' => Input::get('duty_name'),
                'num' => Input::get('group_duty'),
            );
            $duties->name = Input::get('duty_name');
            $duties->num = Input::get('group_duty');
            $duties->save();
        } else {
            $duties = new DutyCountry();
            $duties->country = Input::get('country');
            $duties->duty_id = Input::get('duty_id');
            $duties->country_duty = Input::get('country_duty');

            $duties->save();
        }
        return Redirect::to('admin/duty/list');
    }

    public function list()
    {
        $duties = Duty::get();
        $country_duties = MatchService::get_country_duties();
        $countries = Countries::getList('en', 'php');
        return view('admin.duty.show')->with('duties', $duties)
            ->with('country_duties', $country_duties)
            ->with('countries', $countries);
    }

    public function edit($id)
    {
        $duty = Duty::find($id);
        return view('admin.duty.edit')->with('duty', $duty);
    }

    public function countryedit($id)
    {
        $duties = Duty::get();
        $country_duty = DutyCountry::find($id);

        $countries = Countries::getList('en', 'php');
        return view('admin.duty.countryedit')->with('country_duty', $country_duty)
            ->with('duties', $duties)
            ->with('countries', $countries);
    }

    public function editpost()
    {
        $dutyid = Input::get('id');

        $duty = Duty::find($dutyid);
        $duty->name = Input::get('duty_name');
        $duty->num = Input::get('group_duty');
        $duty->save();

        return Redirect::to('admin/duty/list');
    }

    public function countryeditpost()
    {
        $countryduty_id = Input::get('id');

        $countryduty = DutyCountry::find($countryduty_id);;
        $countryduty->country_duty = Input::get('group_duty');
        $countryduty->duty_id = Input::get('duty_id');
        $countryduty->country = Input::get('country');
        $countryduty->save();

        return Redirect::to('admin/duty/list');
    }

    public function delete($id)
    {
        Duty::find($id)->delete();
        MatchService::remove_duty($id);
        return Redirect::to('admin/duty/list');
    }

    public function countrydelete($id)
    {
        DutyCountry::find($id)->delete();
        MatchService::remove_countryduty($id);
        return Redirect::to('admin/duty/list');
    }
}
