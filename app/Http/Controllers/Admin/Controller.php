<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function check_admin_session() {
        if (Session::has('adminid')) {
            return true;
        } else {
            return false;
        }
    }
    public function get_merchant_session_id() {
        if (Session::has('merchantid')) {
            return Session::get('merchantid');
        } else {
            return 0;
        }
    }
    public function get_special_number($level) {
        if ($level >= 10) {
            return "⓪①②③④⑤⑥⑦⑧⑨";
        }
        $numbers = "⓿➊➋➌➍➎➏➐➑➒";
        return Str::substr($numbers, $level, 1);
    }
    public function get_level_split_string($level) {
        return "🅛🅔🅥🅔🅛➊". $this->get_special_number($level);
    }


    /**
     *
     * @var $users
     */
    protected $name;
    protected $model;

    /**
     *
     * @return void
     */
    public function __construct()
    {
        $route = Route::currentRouteName();
        if (explode(".", $route)[1] != 'sorting') {
            $this->name = explode(".", $route)[1];
            $model = 'App\\Models\\' . ucfirst(explode(".", $route)[1]);
            $this->model = new $model();
        }
    }

    /**
     * Show Index.
     *
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $query = $this->model->query();
        if (!empty($request->request)) {
            foreach ($this->searchQuery($request->request) as $k => $v) {
                if ($v != null) {
                    $query = $query->where($k, 'LIKE', '%' . $v . '%');
                }
            }
        }

        $lists = $query->get();

        $data = $this->searchData($request->request);

        $title = $this->model->getTitle();

        $forms = $this->model->getFormList();
        $search_forms = $this->model->getSearchFormList();
        $tables = $this->model->getTableList();

        return view('admin.layouts.index')->with(compact('title', 'forms', 'data', 'tables', 'lists', 'search_forms'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = $this->model->getTitle();
        $form_title = $this->name;
        $forms = $this->model->getFormList();
        return view('admin.layouts.create')->with(compact('forms', 'title', 'form_title'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $route = Route::currentRouteName();
        // generate password

        $post_data = $request->except(['main_img']);

        // validate
        $this->getValidateRules($request);

        // if file
        if ($request->hasFile('main_img')) {
/*            $file = ImageService::uploadImage(
                $request->file('main_img'),
                strtolower(explode(".", $route)[1])
            );
            $post_data['main_img'] = $file;*/
        }

        // save user
        $this->model->fill($post_data);
        $result = $this->model->save();
        // dd($result);

        // redirect
        return redirect('admin/' . $this->name);
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $title = $this->model->getTitle();
        $form_title = $this->name;
        $forms = $this->model->getFormList();
        $data = $this->model->find($id);
        return view('admin.layouts.show')->with(compact('data', 'forms', 'title', 'form_title'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $title = $this->model->getTitle();
        $form_title = $this->name;
        $forms = $this->model->getFormList();
        $data = $this->model->find($id);

        return view('admin.layouts.edit')->with(compact('data', 'forms', 'title', 'form_title'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $route = Route::currentRouteName();

        $post_data = $request->except(['main_img']);

        // validate
        $this->getValidateRules($request);

        $data = $this->model->find($id);

        // if file
        if ($request->hasFile('main_img')) {
/*            $file = ImageService::uploadImage(
                $request->file('main_img'),
                strtolower(explode(".", $route)[1])
            );
            $post_data['main_img'] = $file;*/
        }

        // save user
        $result = $data->update($post_data);
        // dd($result);

        // redirect
        return redirect('admin/' . $this->name . '/' . $id . '/edit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $this->model->find($id)->delete();
        return redirect('admin/' . $this->name);
    }

    /**
     * Sort method
     *
     */
    public function sorting()
    {
        if (!empty($_POST)) {
            $data = [];
            parse_str($_POST['sortitems'], $data);
            $model = 'App\\Models\\' . $_POST['model'];
            $this->model = new $model();
            foreach ($data['item'] as $key => $id) {
                $this->model
                    ->where('id', $id)
                    ->update(['sort' => $key]);
            }
            $response["status"] = "OK";
            $response["message"] = $data['item'];
            return $response;
        }
    }

    /**
     * Search method
     *
     * @param null $array
     * @return array $query
     */
    public function searchQuery($array = null)
    {
        $query = [];
        foreach ($array as $k => $v) {
            // checkbox
            if (is_array($v)) {
                $query[$k] = implode(",", $v);
                continue;
            }

            // normal
            $query[$k] = $v;
        }
        return $query;
    }

    /**
     * @param null $array
     * @return Collection
     */
    public function searchData($array = null)
    {
        $data = new Collection();
        foreach ($array as $k => $v) {
            if (null == $v) {
                continue;
            }
            // checkbox
            if (is_array($v)) {
                $data->$k = implode(",", $v);
                continue;
            }

            // normal
            $data->$k = $v;
        }
        return $data;
    }

    /*    public function addNotice($user_id, $name, $url)
        {

        }*/

    /**
     * Validate Rules
     *
     * @param $request
     * @return array
     */
    public function getValidateRules(Request $request)
    {

        return $this->validate($request, $this->model->getValidateList());
    }

    public function getList($title, $lists, $data)
    {
        $search_forms = $this->model->getSearchFormList();
        $tables = $this->model->getTableList();

        return view('admin.layouts.index')->with(compact('title', 'search_forms', 'data', 'tables', 'lists'));
    }

    public function unvalid($id)
    {
        $list = $this->model->find($id);
        $list->valid_flag = 0;
        $list->save();
        return redirect('admin/' . $this->name);
    }

}
