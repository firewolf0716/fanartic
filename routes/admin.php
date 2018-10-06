<?php

/*
|--------------------------------------------------------------------------
| Admin Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*
|--------------------------------------------------------------------------
| 1) Admin 認証不要
|--------------------------------------------------------------------------
*/

Route::group(['prefix' => 'admin', 'namespace' => 'Admin'], function () {
    Route::get('login', 'AdminController@login')->name('admin.login');
    Route::get('signout', 'AdminController@signout');
    Route::post('signin', 'AdminController@signin');
});

/*
|--------------------------------------------------------------------------
| 2) Admin ログイン後
|--------------------------------------------------------------------------
*/
Route::group(['prefix' => 'admin', 'namespace' => 'Admin'/*,'middleware' => 'auth:admin'*/], function () {
	// Admin
	Route::get('/','AdminController@login');
	Route::get('dashboard','AdminController@dashboard');
	Route::get('admins/add','AdminController@addadmin');
	Route::post('admins/addpost','AdminController@addadminpost');
	Route::get('admins/list','AdminController@listadmin');
	Route::get('admins/edit/{id}','AdminController@editadmin');
	Route::post('admins/editpost','AdminController@editadminpost');

	// Import
	Route::get('import/csv','ImportController@importFromCsv');
	Route::post('import/update_csv','ImportController@updateFromCsv');

	// Genre
	Route::get('genre/add','GenreController@add');
	Route::post('genre/addpost','GenreController@addpost');
	Route::get('genre/list','GenreController@list');
	Route::get('genre/edit/{id}','GenreController@edit');
	Route::post('genre/editpost','GenreController@editpost');
	Route::get('genre/delete/{id}','GenreController@delete');

	// Mall
	Route::get('mall/add','MallController@add');
	Route::post('mall/addpost','MallController@addpost');
	Route::get('mall/list','MallController@list');
	Route::get('mall/edit/{id}','MallController@edit');
	Route::post('mall/editpost','MallController@editpost');
	Route::get('mall/delete/{id}','MallController@delete');

    // Duty
    Route::post('duty/addpost','DutyController@addpost');
    Route::get('duty/list','DutyController@list');
    Route::get('duty/edit/{id}','DutyController@edit');
    Route::get('duty/countryedit/{id}','DutyController@countryedit');
    Route::post('duty/editpost','DutyController@editpost');
    Route::post('duty/countryeditpost','DutyController@countryeditpost');
    Route::get('duty/delete/{id}','DutyController@delete');
    Route::get('duty/countrydelete/{id}','DutyController@countrydelete');

	// Brand
	Route::get('brand/add','BrandController@add');
	Route::post('brand/addpost','BrandController@addpost');
	Route::get('brand/list','BrandController@list');
	Route::get('brand/edit/{id}','BrandController@edit');
	Route::post('brand/editpost','BrandController@editpost');
	Route::get('brand/delete/{id}','BrandController@delete');

	// Category
	Route::get('category/add','CategoryController@addtop');
	Route::get('category/add/{topcategoryid}','CategoryController@addmain');
	Route::get('category/add/{topcategoryid}/{maincategoryid}','CategoryController@add');
	Route::post('category/addpost','CategoryController@addpost');
	Route::get('category/list','CategoryController@listtop');
	Route::get('category/list/{topcategoryid}','CategoryController@listmain');
	Route::get('category/list/{topcategoryid}/{maincategoryid}','CategoryController@list');
	Route::get('category/edit/{topid}','CategoryController@edittop');
	Route::get('category/edit/{topid}/{mainid}','CategoryController@editmain');
	Route::get('category/edit/{topid}/{mainid}/{id}','CategoryController@edit');
	Route::get('category/delete/{id}','CategoryController@delete');
	Route::post('category/editpost','CategoryController@editpost');
	Route::get('category/get-top-categorys','CategoryController@getTopCategorys');
	Route::get('category/get-main-categorys/{gender}','CategoryController@getMainCategorys');
	Route::get('category/get-sub-categorys/{mainid}','CategoryController@getSubCategorys');
	Route::get('category/get-size-category/{subid}','CategoryController@getSizeCategory');

	// Size Category
	Route::get('size/addcategory','SizeController@addcategory');
	Route::post('size/addcategorypost','SizeController@addcategorypost');
	Route::get('size/listcategory','SizeController@listcategory');
	Route::get('size/editcategory/{id}','SizeController@editcategory');
	Route::post('size/editcategorypost','SizeController@editcategorypost');

	// Size
	Route::get('size/add','SizeController@add');
	Route::post('size/addpost','SizeController@addpost');
	Route::get('size/list','SizeController@list');
	Route::get('size/edit/{id}','SizeController@edit');
	Route::post('size/editpost','SizeController@editpost');

	// Color
	Route::get('color/add','ColorController@add');
	Route::post('color/addpost','ColorController@addpost');
	Route::get('color/list','ColorController@list');
	Route::get('color/edit/{id}','ColorController@edit');
	Route::post('color/editpost','ColorController@editpost');

	// Event
	Route::get('event/add','EventController@add');
	Route::post('event/addpost','EventController@addpost');
	Route::get('event/list','EventController@list');
	Route::get('event/edit/{id}','EventController@edit');
	Route::post('event/editpost','EventController@editpost');
	Route::get('eventy/delete/{id}','EventController@delete');

	// Plan
	Route::get('plan/add','PlanController@add');
	Route::post('plan/addpost','PlanController@addpost');
	Route::get('plan/list','PlanController@list');
	Route::get('plan/edit/{id}','PlanController@edit');
	Route::post('plan/editpost','PlanController@editpost');

	// Merchant Notify
	Route::get('notifymerchant/add','MerchantNotifyController@add');
	Route::post('notifymerchant/addpost','MerchantNotifyController@addpost');
	Route::get('notifymerchant/list','MerchantNotifyController@list');
	Route::get('notifymerchant/edit/{id}','MerchantNotifyController@edit');
	Route::get('notifymerchant/delete/{id}','MerchantNotifyController@delete');
	Route::post('notifymerchant/editpost','MerchantNotifyController@editpost');

	// Customer Notify
	Route::get('notifycustomer/add','CustomerNotifyController@add');
	Route::post('notifycustomer/addpost','CustomerNotifyController@addpost');
	Route::get('notifycustomer/list','CustomerNotifyController@list');
	Route::get('notifycustomer/edit/{id}','CustomerNotifyController@edit');
	Route::get('notifycustomer/delete/{id}','CustomerNotifyController@delete');
	Route::post('notifycustomer/editpost','CustomerNotifyController@editpost');

	// Admin Manage Merchant
	Route::get('merchant_detaill/{id}','MerchantController@detail_live');
	Route::get('merchant_close/{id}','MerchantController@close');
	Route::get('merchant_open/{id}','MerchantController@open');
	Route::get('merchants/list','MerchantController@manage');
	Route::get('merchants/add','MerchantController@add');
	Route::post('merchants/addpost','MerchantController@add_post');
	Route::post('merchants/editpost','MerchantController@edit_post');
	Route::get('merchant/getplan/{id}','MerchantController@get_plan');
	// Route::get('merchants','AdminController@manage_merchants');
	// Route::get('merchant_approvew/{id}','AdminController@approve_merchant');
	// Route::get('merchant_detailw/{id}','AdminController@detail_merchant_wait');
	// Route::get('merchant_reject/{id}','AdminController@merchant_reject');
});
