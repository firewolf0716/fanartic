<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Duty;
use App\Models\DutyCountry;
use App\Services\MatchService;

class DutyController extends Controller
{
    public function addpost() {
        if(Input::get('type') != 'country'){
            $duties = new Duty();
            $entry =  array(
                'name' => Input::get('duty_name'),
                'num' => Input::get('group_tariff'),
                'created_at' => Input::get('created_date1'),
                'updated_at' => Input::get('updated_date1')
            );
            $duties->name = Input::get('duty_name');
            $duties->num = Input::get('group_tariff');
            $duties->save();
        } else {
            $duties = new DutyCountry();
            $duties->country = Input::get('country');
            $duties->duty_id = Input::get('duty_id');
            $duties->country_tariff = Input::get('country_tariff');
            //$duties->created_at = Input::get('created_date2');
            //$duties->updated_at = Input::get('updated_date2');

            $duties->save();
        }
        return Redirect::to('admin/duty/list');
    }

    public function list() {
        $duties = Duty::get();
        $country_duties = MatchService::get_country_duties();
        return view('admin.duty.show')->with('duties', $duties)
                                        ->with('country_duties', $country_duties);
    }

    public function edit($id) {
        $duty = Duty::find($id);
        return view('admin.duty.edit')->with('duty', $duty);
    }

    public function countryedit($id) {
        $duties = Duty::get();
        $country_duty = DutyCountry::find($id);
        return view('admin.duty.countryedit')->with('country_duty', $country_duty)
                                            ->with('duties', $duties);
    }

    public function editpost() {
        $dutyid = Input::get('id');

        $entry =  array(
            'name' => Input::get('duty_name'),
            'num' => Input::get('group_tariff'),
            'created_at' => Input::get('created_date1'),
            'updated_at' => Input::get('updated_date1')
        );

        $duties = new Duty();
        $duties::update_duty($entry, $dutyid);

        return Redirect::to('admin/duty/list');
    }

    public function countryeditpost() {
        $countryduty_id = Input::get('id');

        $entry =  array(
            'country' => Input::get('country'),
            'country_tariff' => Input::get('group_tariff'),
            'duty_id' => Input::get('duty_id'),
            'created_at' => Input::get('created_date2'),
            'updated_at' => Input::get('updated_date2')
        );
        var_dump($entry);exit();

        $duties = new DutyCountry();
        $duties::update_countryduty($entry, $countryduty_id);

        return Redirect::to('admin/duty/list');
    }

    public function delete($id) {
        Duty::find($id)->delete();
        MatchService::remove_duty($id);
        return Redirect::to('admin/duty/list');
    }

    public function countrydelete($id) {
        DutyCountry::find($id)->delete();
        MatchService::remove_countryduty($id);
        return Redirect::to('admin/duty/list');
    }
}
