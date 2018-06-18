<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', 'AdminController@login');
Route::get('admin/login', 'AdminController@login');
Route::get('admin/signout', 'AdminController@signout');
Route::post('admin/signin', 'AdminController@signin');
//admin
Route::get('admin','AdminController@login');
Route::get('admin/dashboard','AdminController@dashboard');

Route::get('admin/genre/add','GenreController@add');
Route::post('admin/genre/addpost','GenreController@addpost');
Route::get('admin/genre/list','GenreController@list');
Route::get('admin/genre/edit/{id}','GenreController@edit');
Route::post('admin/genre/editpost','GenreController@editpost');

Route::get('admin/mall/add','MallController@add');
Route::post('admin/mall/addpost','MallController@addpost');
Route::get('admin/mall/list','MallController@list');
Route::get('admin/mall/edit/{id}','MallController@edit');
Route::post('admin/mall/editpost','MallController@editpost');

Route::get('admin/brand/add','BrandController@add');
Route::post('admin/brand/addpost','BrandController@addpost');
Route::get('admin/brand/list','BrandController@list');
Route::get('admin/brand/edit/{id}','BrandController@edit');
Route::post('admin/brand/editpost','BrandController@editpost');

Route::get('admin/category/add','CategoryController@add');
Route::post('admin/category/addpost','CategoryController@addpost');
Route::get('admin/category/list','CategoryController@list');
Route::get('admin/category/edit/{id}','CategoryController@edit');
Route::post('admin/category/editpost','CategoryController@editpost');

Route::get('admin/size/add','SizeController@add');
Route::post('admin/size/addpost','SizeController@addpost');
Route::get('admin/size/list','SizeController@list');
Route::get('admin/size/edit/{id}','SizeController@edit');
Route::post('admin/size/editpost','SizeController@editpost');
Route::get('admin/size/addcategory','SizeController@addcategory');
Route::post('admin/size/addcategorypost','SizeController@addcategorypost');
Route::get('admin/size/listcategory','SizeController@listcategory');
Route::get('admin/size/editcategory/{id}','SizeController@editcategory');
Route::post('admin/size/editcategorypost','SizeController@editcategorypost');

Route::get('admin/color/add','ColorController@add');
Route::post('admin/color/addpost','ColorController@addpost');
Route::get('admin/color/list','ColorController@list');
Route::get('admin/color/edit/{id}','ColorController@edit');
Route::post('admin/color/editpost','ColorController@editpost');

Route::get('admin/event/add','EventController@add');
Route::post('admin/event/addpost','EventController@addpost');
Route::get('admin/event/list','EventController@list');
Route::get('admin/event/edit/{id}','EventController@edit');
Route::post('admin/event/editpost','EventController@editpost');

Route::get('admin/plan/add','PlanController@add');
Route::post('admin/plan/addpost','PlanController@addpost');
Route::get('admin/plan/list','PlanController@list');
Route::get('admin/plan/edit/{id}','PlanController@edit');
Route::post('admin/plan/editpost','PlanController@editpost');

Route::get('admin/notifymerchant/add','MerchantNotifyController@add');
Route::post('admin/notifymerchant/addpost','MerchantNotifyController@addpost');
Route::get('admin/notifymerchant/list','MerchantNotifyController@list');
Route::get('admin/notifymerchant/edit/{id}','MerchantNotifyController@edit');
Route::post('admin/notifymerchant/editpost','MerchantNotifyController@editpost');

Route::get('admin/notifycustomer/add','CustomerNotifyController@add');
Route::post('admin/notifycustomer/addpost','CustomerNotifyController@addpost');
Route::get('admin/notifycustomer/list','CustomerNotifyController@list');
Route::get('admin/notifycustomer/edit/{id}','CustomerNotifyController@edit');
Route::post('admin/notifycustomer/editpost','CustomerNotifyController@editpost');
//merchants
Route::get('merchant', 'MerchantloginController@merchant_login');
Route::get('merchant/login', 'MerchantloginController@merchant_login');
Route::post('merchant/signin', 'MerchantloginController@merchant_signin');
Route::post('merchant/signup', 'MerchantloginController@merchant_signup');
Route::get('merchant/signout', 'MerchantloginController@merchant_signout');

Route::get('merchant/dashboard', 'MerchantController@merchant_dashboard');
Route::get('merchant/setting', 'MerchantController@merchant_setting');
Route::get('merchant/getcity', 'MerchantController@getcity');
Route::post('merchant/editsetting', 'MerchantController@merchant_editsetting');
//merchant product
Route::get('merchant/product/add', 'MerchantproductController@merchant_product_add');
// Route::get('merchant_product_manage', 'MerchantproductController@merchant_product_manage');
// Route::get('merchant_product_sold', 'MerchantproductController@merchant_product_sold');
// Route::get('merchant_product_csvupload', 'MerchantproductController@merchant_product_csvupload');

// Route::get('mer_product_details/{id}', 'MerchantproductController@mer_product_details');
// Route::get('mer_edit_product/{id}', 'MerchantproductController@mer_edit_product');
// Route::get('mer_delete_product/{id}', 'MerchantproductController@mer_delete_product');

// Route::post('merchant_product_addpost', 'MerchantproductController@merchant_product_addpost');
// Route::post('merchant_product_editpost', 'MerchantproductController@merchant_product_editpost');
// //product
// Route::get('mer_product_getmaincategory', 'ProductController@mer_product_getmaincategory');
// Route::get('product_getcolor', 'ProductController@product_getcolor');
// Route::get('mer_product_getsubcategory', 'ProductController@mer_product_getsubcategory');
// Route::get('mer_product_getsecondsubcategory', 'ProductController@mer_product_getsecondsubcategory');
// Route::get('mer_product_getmerchantshop','ProductController@mer_product_getmerchantshop');
// Route::get('get_spec_related_to_cat_mer', 'MerchantproductController@get_spec_related_to_cat');
// Route::get('product_get_spec','ProductController@product_get_spec');

//merchant
