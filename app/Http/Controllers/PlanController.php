<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Plans;

class PlanController extends Controller
{
    public function add() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $fee_types = Plans::get_plan_types();
        return view('admin.plan.add')->with('fee_types', $fee_types);
    }
    public function addpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $entry =  array(
            'plan_name' => Input::get('plan_name'),
            'plan_opencost' => Input::get('plan_opencost'),
            'plan_fixcost' => Input::get('plan_fixcost'),
            'fee_type_id' => Input::get('fee_type'),
            'plan_create' => Input::get('create_date'),
            'plan_update' => Input::get('update_date')
        );
        Plans::insert_plan($entry);
        return Redirect::to('admin/plan/list');
    }

    public function list() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $plans = Plans::get_plans();
        return view('admin.plan.list')->with('plans', $plans);
    }

    public function edit($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $search = Plans::get_plan($id);
        $fee_types = Plans::get_plan_types();
        if(isset($search)){
            $plan = $search[0];
            return view('admin.plan.edit')->with('plan', $plan)
                                        ->with('fee_types', $fee_types);
        } else{
            return Redirect::to('admin/plan/list');
        }
    }

    public function editpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }
        
        $entry =  array(
            'plan_name' => Input::get('plan_name'),
            'plan_opencost' => Input::get('plan_opencost'),
            'plan_fixcost' => Input::get('plan_fixcost'),
            'fee_type_id' => Input::get('fee_type'),
            'plan_create' => Input::get('create_date'),
            'plan_update' => Input::get('update_date')
        );
        $id = Input::get('plan_id');
        Plans::edit_plan($entry, $id);
        return Redirect::to('admin/plan/list');
    }
}
