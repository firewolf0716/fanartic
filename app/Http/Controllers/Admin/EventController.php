<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Events;

class EventController extends Controller
{
    public function add() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        return view('admin.event.add');
    }
    public function addpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        // $entry =  array(
        //     'event_title' => Input::get('event_title'),
        //     'event_title_en' => Input::get('event_title_en'),
        //     'event_condition' => Input::get('event_condition'),
        //     'event_duration' => Input::get('reservation-time'),
        //     'event_content' => Input::get('event_content'),
        //     'created_at' => Input::get('create_date'),
        //     'updated_at' => Input::get('update_date')
        // );
        $event = new Event();
        $event->event_title = Input::get('event_title');
        $event->event_title_en = Input::get('event_title_en');
        $event->event_condition = Input::get('event_condition');
        $event->event_duration = Input::get('event_duration');
        $event->event_content = Input::get('event_content');
        $event->save();
        return Redirect::to('admin/event/list');
    }

    public function list() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        $events = Events::get();
        return view('admin.event.list')->with('events', $events);
    }

    public function edit($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }
        $event = Events::find($id);
        return view('admin.event.edit')->with('event', $event);
    }

    public function delete($id) {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        Events::find($id)->delete();
        return Redirect::to('admin/event/list');
    }
    public function editpost() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }
        
        // $entry =  array(
        //     'event_title' => Input::get('event_title'),
        //     'event_title_en' => Input::get('event_title_en'),
        //     'event_condition' => Input::get('event_condition'),
        //     'event_duration' => Input::get('reservation-time'),
        //     'event_content' => Input::get('event_content'),
        //     'created_at' => Input::get('create_date'),
        //     'updated_at' => Input::get('update_date')
        // );
        $id = Input::get('event_id');
        $event = Events::find($id);
        $event->event_title = Input::get('event_title');
        $event->event_title_en = Input::get('event_title_en');
        $event->event_condition = Input::get('event_condition');
        $event->event_duration = Input::get('event_duration');
        $event->event_content = Input::get('event_content');
        $event->save();
        return Redirect::to('admin/event/list');
    }
}
