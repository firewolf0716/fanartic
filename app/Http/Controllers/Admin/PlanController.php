<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Plans;

class PlanController extends Controller
{
    public function add() {
        return view('admin.plan.add');
    }
    public function addpost() {
        $plan = new Plans();
        $plan->plan_name = Input::get('plan_name');
        $plan->plan_opencost = Input::get('plan_opencost');
        $plan->plan_fixcost = Input::get('plan_fixcost');
        $plan->plan_domestic_fee = Input::get('plan_domestic_fee');
        $plan->plan_international_fee = Input::get('plan_international_fee');
        $plan->save();

        return Redirect::to('admin/plan/list');
    }

    public function list() {
        $plans = Plans::get();

        return view('admin.plan.list')->with('plans', $plans);
    }

    public function edit($id) {
        $plan = Plans::find($id);

        return view('admin.plan.edit')->with('plan', $plan);
    }

    public function editpost() {
        $id = Input::get('plan_id');
        /** @var Plans $plan */
        $plan = Plans::find($id);
        $plan->plan_name = Input::get('plan_name');
        $plan->plan_opencost = Input::get('plan_opencost');
        $plan->plan_fixcost = Input::get('plan_fixcost');
        $plan->plan_domestic_fee = Input::get('plan_domestic_fee');
        $plan->plan_international_fee = Input::get('plan_international_fee');
        $plan->save();

        return Redirect::to('admin/plan/list');
    }
}
