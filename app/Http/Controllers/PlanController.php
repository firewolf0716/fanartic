<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Plans;

class PlanController extends Controller
{
    //
    public function add() {
        $fee_types = Plans::get_plan_types();
        return view('admin.plan.add')->with('fee_types', $fee_types);
    }
    public function addpost(){
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

    public function list(){
        $plans = Plans::get_plans();
        return view('admin.plan.list')->with('plans', $plans);
    }

    public function edit($id){
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

    public function editpost(){
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
