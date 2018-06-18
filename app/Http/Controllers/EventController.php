<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Events;

class EventController extends Controller
{
    //
    public function add(){
        return view('admin.event.add');
    }
    public function addpost(){
        $entry =  array(
            'event_title' => Input::get('event_title'),
            'event_title_en' => Input::get('event_title_en'),
            'event_condition' => Input::get('event_condition'),
            'event_duration' => Input::get('reservation'),
            'event_content' => Input::get('event_content'),
            'event_create' => Input::get('create_date'),
            'event_update' => Input::get('update_date')
        );
        Events::insert_event($entry);
        return Redirect::to('admin/event/list');
    }

    public function list(){
        $events = Events::get_events();
        return view('admin.event.list')->with('events', $events);
    }

    public function edit($id){
        $search = Events::get_event($id);
        if(isset($search)){
            $event = $search[0];
            return view('admin.event.edit')->with('event', $event);
        } else{
            return Redirect::to('admin/event/list');
        }
    }
    public function editpost(){
        $entry =  array(
            'event_title' => Input::get('event_title'),
            'event_title_en' => Input::get('event_title_en'),
            'event_condition' => Input::get('event_condition'),
            'event_duration' => Input::get('reservation'),
            'event_content' => Input::get('event_content'),
            'event_create' => Input::get('create_date'),
            'event_update' => Input::get('update_date')
        );
        $id = Input::get('event_id');
        Events::edit_event($entry, $id);
        return Redirect::to('admin/event/list');
    }
}
