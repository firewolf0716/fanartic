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

Route::middleware(['basicAuth'])->group(function () {
    //All the routes are placed in here
    // Route::get('/', function() {
	// 	// return Redirect::to('customer/product/list/1');
	// });
    Route::get('/', 'CustomerController@index');	

    // widget
    Route::get('widget', function(){
        return View('widget.index');
    });

    Route::get('admin/login', 'AdminController@login');
	Route::get('admin/signout', 'AdminController@signout');
	Route::post('admin/signin', 'AdminController@signin');

	// Admin
	Route::get('admin','AdminController@login');
	Route::get('admin/dashboard','AdminController@dashboard');
	Route::get('admin/admins/add','AdminController@addadmin');
	Route::post('admin/admins/addpost','AdminController@addadminpost');
	Route::get('admin/admins/list','AdminController@listadmin');
	Route::get('admin/admins/edit/{id}','AdminController@editadmin');
	Route::post('admin/admins/editpost','AdminController@editadminpost');

	// Import
	Route::get('admin/import/csv','ImportController@importFromCsv');
	Route::post('admin/import/update_csv','ImportController@updateFromCsv');

	// Genre
	Route::get('admin/genre/add','GenreController@add');
	Route::post('admin/genre/addpost','GenreController@addpost');
	Route::get('admin/genre/list','GenreController@list');
	Route::get('admin/genre/edit/{id}','GenreController@edit');
	Route::post('admin/genre/editpost','GenreController@editpost');
	Route::get('admin/genre/delete/{id}','GenreController@delete');

	// Mall
	Route::get('admin/mall/add','MallController@add');
	Route::post('admin/mall/addpost','MallController@addpost');
	Route::get('admin/mall/list','MallController@list');
	Route::get('admin/mall/edit/{id}','MallController@edit');
	Route::post('admin/mall/editpost','MallController@editpost');
	Route::get('admin/mall/delete/{id}','MallController@delete');

	// Brand
	Route::get('admin/brand/add','BrandController@add');
	Route::post('admin/brand/addpost','BrandController@addpost');
	Route::get('admin/brand/list','BrandController@list');
	Route::get('admin/brand/edit/{id}','BrandController@edit');
	Route::post('admin/brand/editpost','BrandController@editpost');
	Route::get('admin/brand/delete/{id}','BrandController@delete');

	// Category
	Route::get('admin/category/add','CategoryController@addtop');
	Route::get('admin/category/add/{topcategoryid}','CategoryController@addmain');
	Route::get('admin/category/add/{topcategoryid}/{maincategoryid}','CategoryController@add');
	Route::post('admin/category/addpost','CategoryController@addpost');
	Route::get('admin/category/list','CategoryController@listtop');
	Route::get('admin/category/list/{topcategoryid}','CategoryController@listmain');
	Route::get('admin/category/list/{topcategoryid}/{maincategoryid}','CategoryController@list');
	Route::get('admin/category/edit/{topid}','CategoryController@edittop');
	Route::get('admin/category/edit/{topid}/{mainid}','CategoryController@editmain');
	Route::get('admin/category/edit/{topid}/{mainid}/{id}','CategoryController@edit');
	Route::get('admin/category/delete/{id}','CategoryController@delete');
	Route::post('admin/category/editpost','CategoryController@editpost');
	Route::get('admin/category/get-top-categorys','CategoryController@getTopCategorys');
	Route::get('admin/category/get-main-categorys/{gender}','CategoryController@getMainCategorys');
	Route::get('admin/category/get-sub-categorys/{mainid}','CategoryController@getSubCategorys');
	Route::get('admin/category/get-size-category/{subid}','CategoryController@getSizeCategory');
	
	// Size Category
	Route::get('admin/size/addcategory','SizeController@addcategory');
	Route::post('admin/size/addcategorypost','SizeController@addcategorypost');
	Route::get('admin/size/listcategory','SizeController@listcategory');
	Route::get('admin/size/editcategory/{id}','SizeController@editcategory');
	Route::post('admin/size/editcategorypost','SizeController@editcategorypost');

	// Size
	Route::get('admin/size/add','SizeController@add');
	Route::post('admin/size/addpost','SizeController@addpost');
	Route::get('admin/size/list','SizeController@list');
	Route::get('admin/size/edit/{id}','SizeController@edit');
	Route::post('admin/size/editpost','SizeController@editpost');

	// Color
	Route::get('admin/color/add','ColorController@add');
	Route::post('admin/color/addpost','ColorController@addpost');
	Route::get('admin/color/list','ColorController@list');
	Route::get('admin/color/edit/{id}','ColorController@edit');
	Route::post('admin/color/editpost','ColorController@editpost');

	// Event
	Route::get('admin/event/add','EventController@add');
	Route::post('admin/event/addpost','EventController@addpost');
	Route::get('admin/event/list','EventController@list');
	Route::get('admin/event/edit/{id}','EventController@edit');
	Route::post('admin/event/editpost','EventController@editpost');
	Route::get('admin/eventy/delete/{id}','EventController@delete');

	// Plan
	Route::get('admin/plan/add','PlanController@add');
	Route::post('admin/plan/addpost','PlanController@addpost');
	Route::get('admin/plan/list','PlanController@list');
	Route::get('admin/plan/edit/{id}','PlanController@edit');
	Route::post('admin/plan/editpost','PlanController@editpost');

	// Merchant Notify
	Route::get('admin/notifymerchant/add','MerchantNotifyController@add');
	Route::post('admin/notifymerchant/addpost','MerchantNotifyController@addpost');
	Route::get('admin/notifymerchant/list','MerchantNotifyController@list');
	Route::get('admin/notifymerchant/edit/{id}','MerchantNotifyController@edit');
	Route::get('admin/notifymerchant/delete/{id}','MerchantNotifyController@delete');
	Route::post('admin/notifymerchant/editpost','MerchantNotifyController@editpost');

	// Customer Notify
	Route::get('admin/notifycustomer/add','CustomerNotifyController@add');
	Route::post('admin/notifycustomer/addpost','CustomerNotifyController@addpost');
	Route::get('admin/notifycustomer/list','CustomerNotifyController@list');
	Route::get('admin/notifycustomer/edit/{id}','CustomerNotifyController@edit');
	Route::get('admin/notifycustomer/delete/{id}','CustomerNotifyController@delete');
	Route::post('admin/notifycustomer/editpost','CustomerNotifyController@editpost');

	// Admin Manage Merchant
	Route::get('admin/merchant_detaill/{id}','AdminController@detail_merchant_live');
	Route::get('admin/merchant_close/{id}','AdminController@merchant_close');
	Route::get('admin/merchant_open/{id}','AdminController@merchant_open');
	Route::get('admin/merchants/list','AdminController@manage_merchants');
	Route::get('admin/merchants/add','AdminController@merchant_add');
	Route::post('admin/merchants/addpost','AdminController@merchant_addpost');
	Route::post('admin/merchants/editpost','AdminController@merchant_editpost');
	Route::get('admin/merchant/getplan/{id}','AdminController@get_plan');
	// Route::get('admin/merchants','AdminController@manage_merchants');
	// Route::get('admin/merchant_approvew/{id}','AdminController@approve_merchant');
	// Route::get('admin/merchant_detailw/{id}','AdminController@detail_merchant_wait');
	// Route::get('admin/merchant_reject/{id}','AdminController@merchant_reject');

	//merchants
	Route::get('merchant', 'MerchantloginController@merchant_signin');
	Route::get('merchant/signin', 'MerchantloginController@merchant_signin');
	Route::post('merchant/signinpost', 'MerchantloginController@merchant_signinpost');
	Route::get('merchant/signup', 'MerchantloginController@merchant_signup');
	Route::post('merchant/signuppost', 'MerchantloginController@merchant_signuppost');
	Route::get('merchant/signout', 'MerchantloginController@merchant_signout');

	Route::get('merchant/dashboard', 'MerchantController@merchant_dashboard');
	Route::get('merchant/setting', 'MerchantController@merchant_setting');
	Route::get('merchant/getcity', 'MerchantController@getcity');
	Route::post('merchant/editsetting', 'MerchantController@merchant_editsetting');

	//merchant product
	Route::get('merchant/product/add', 'MerchantproductController@merchant_product_add');
	Route::get('merchant/product/getscategory/{tcategory}', 'MerchantproductController@merchant_getscategory');
	Route::get('merchant/product/getssizes/{tcategory}', 'MerchantproductController@merchant_getsizecategory');
	Route::get('merchant/product/getparentprefers/{category}/{brand}', 'MerchantproductController@merchant_getparentprefers');
	Route::post('merchant/product/addpost', 'MerchantproductController@merchant_product_addpost');
	Route::post('merchant/product/editpost', 'MerchantproductController@merchant_product_editpost');
	Route::get('merchant/product/edit/{id}', 'MerchantproductController@merchant_product_edit');
	Route::get('merchant/product/edit_sku/{id}', 'MerchantproductController@merchant_product_edit_sku');

	Route::get('merchant/product/manage', 'MerchantproductController@merchant_product_manage');
	Route::get('merchant/product/manage/{product_status}', 'MerchantproductController@merchant_product_manage_with_status');
	Route::get('merchant/product/sold', 'MerchantproductController@merchant_product_sold');
	Route::get('merchant/product/csvupload', 'MerchantproductController@merchant_product_csvupload');
	Route::get('merchant/product/cash_on_delivery', 'MerchantproductController@merchant_product_cash_on_delivery');
	Route::get('merchant/product/shipping', 'MerchantproductController@merchant_product_shipping');
	Route::get('merchant/product/accept_pay_shipping_delivery/{id}', 'MerchantproductController@accept_pay_shipping_delivery');
	Route::get('merchant/product/decline_pay_shipping_delivery/{id}', 'MerchantproductController@decline_pay_shipping_delivery');
	Route::get('merchant/product/accept_sold_product/{id}', 'MerchantproductController@accept_sold_product');
	Route::get('merchant/product/remove_solded_product/{id}', 'MerchantproductController@remove_solded_product');
	Route::post('merchant/product/load_from_csv', 'MerchantproductController@importProductFromCSV');
	Route::post('merchant/product/set_sku', 'MerchantproductController@merchant_product_set_sku');
	Route::get('merchant/product/delete/{product_id}/{product_status}', 'MerchantproductController@mer_delete_product');
	Route::post('merchant/product/search', 'MerchantproductController@merchant_search');
	
	Route::get('merchant/shipping/add', 'MerchantShippingController@merchant_shipping_add');
	Route::post('merchant/shipping/addpost', 'MerchantShippingController@merchant_shipping_updatepost');
	Route::get('merchant/shipping/list', 'MerchantShippingController@merchant_shipping_list');
	Route::get('merchant/shipping/remove/{shipping_id}', 'MerchantShippingController@merchant_shipping_remove');
	Route::get('merchant/shipping/edit/{shipping_id}', 'MerchantShippingController@merchant_shipping_edit');
	Route::post('merchant/shipping/editpost', 'MerchantShippingController@merchant_shipping_updatepost');
	Route::get('merchant/shipping/remove_price/{shipping_id}', 'MerchantShippingController@merchant_shipping_remove_price');
	

	// Route::post('merchant/product/product_import_csv', function(){
	//     return view('merchant.product.product_import_csv');
	// });
	Route::get('merchant/product/product_import_csv', 'MerchantproductController@product_import_csv');

	//sign
	Route::get('user/signup', 'CustomerController@signup');
	Route::post('user/signuppost', 'CustomerController@signuppost');
	Route::get('user', 'CustomerController@user');
	Route::get('user/signin', 'CustomerController@signin');
	Route::get('user/signverify', 'CustomerController@signverify');
	Route::post('user/signinpost', 'CustomerController@signinpost');
	Route::get('user/signout', 'CustomerController@signout');
	//profile
	Route::get('user/profile', 'CustomerController@profile');
	Route::post('user/profilepost', 'CustomerController@profilepost');
	//favourite
	Route::get('user/favourite', 'CustomerController@favourite');
	Route::post('user/addFavourite', 'CustomerController@addFavourite');
	Route::get('user/favourite', 'CustomerController@favourite');
	Route::post('user/favitem_action', 'CustomerController@favitem_action');
	//cart
	Route::get('user/cart', 'CustomerController@cart');	
	Route::post('user/addtocart', 'CustomerController@addtocart');
	Route::post('user/cart_remove_item', 'CustomerController@cart_remove_item');
	//address
	Route::get('user/address', 'CustomerController@address');
	Route::get('user/addressadd', 'CustomerController@addressadd');
	Route::post('user/address_add_post', 'CustomerController@address_add_post');
	Route::get('user/address_flag/{addr_id}', 'CustomerController@address_flag');
	Route::get('user/address_edit/{addr_id}', 'CustomerController@address_edit');
	Route::post('user/address_edit_post', 'CustomerController@address_edit_post');
	Route::get('user/address_delete/{addr_id}', 'CustomerController@address_delete');
	//payment
	Route::get('user/credit', 'CustomerController@credit');
	Route::get('user/credit_add', 'CustomerController@credit_add');
	Route::post('user/credit_add_post', 'CustomerController@credit_add_post');
	Route::get('user/credit_edit/{addr_id}', 'CustomerController@credit_edit');
	Route::post('user/credit_edit_post', 'CustomerController@credit_edit_post');
	Route::get('user/credit_delete/{addr_id}', 'CustomerController@credit_delete');
	//order flow
	Route::get('user/checkflowinfo', 'CustomerController@checkflowinfo');
	Route::post('user/flow_post_ac', 'CustomerController@flow_post_ac');
	Route::get('user/checkflowconfirm', 'CustomerController@checkflowconfirm');
	Route::get('user/confirm_order', 'CustomerController@confirm_order');
	//order history
	Route::get('user/history', 'CustomerController@history');
	Route::get('user/historydetail/{group}', 'CustomerController@historydetail');
	Route::get('user/history/receive/{item}', 'CustomerController@receiveitem');
	//magazine
	Route::get('user/magazine', 'CustomerController@magazine');
	Route::post('user/magazine_post', 'CustomerController@magazine_post');
	//score
	Route::get('user/score', 'CustomerController@score');

	Route::get('user/payment', function(){
		return view('customer.user.payment');
	});
//all
	Route::get('product/list', 'CustomerController@product_list');
	Route::get('product/list/{topid}', 'CustomerController@product_list');
	Route::get('product/list/{topid}/{mainid}', 'CustomerController@product_list');
	Route::get('product/list/{topid}/{mainid}/{categoryid}', 'CustomerController@product_list');
	Route::post('product/product_list_post', 'CustomerController@product_list_post');
	Route::get('product/detail/{productid}', 'CustomerController@product_detail');
//brand
	Route::get('/brands/{brandid}/goods/{productid}', 'CustomerController@product_detail');

	Route::get('/brands/{brandid}', 'CustomerController@brand');
	Route::get('/brands/{brandid}/{topid}', 'CustomerController@product_list_brand');
	Route::get('/brands/{brandid}/{topid}/{mainid}', 'CustomerController@product_list_brand');
	Route::get('/brands/{brandid}/{topid}/{mainid}/{categoryid}', 'CustomerController@product_list_brand');
//category
	Route::get('/category/fanartic/{topid}', 'CustomerController@product_list_category');
	Route::get('/category/fanartic/{topid}/{mainid}', 'CustomerController@product_list_category');
	Route::get('/category/fanartic/{topid}/{mainid}/{categoryid}', 'CustomerController@product_list_category');
//category in mall
	Route::get('/category/{mallname}/{topid}', 'CustomerController@product_list_mall');
	Route::get('/category/{mallname}/{topid}/{mainid}', 'CustomerController@product_list_mall');
	Route::get('/category/{mallname}/{topid}/{mainid}/{categoryid}', 'CustomerController@product_list_mall');
//category in mall/brand
	Route::get('/{mallname}', 'CustomerController@mall');
	Route::get('{mallname}/{brandid}', 'CustomerController@mall_product_list');
	Route::get('{mallname}/{brandid}/{topid}', 'CustomerController@mall_product_list');
	Route::get('{mallname}/{brandid}/{topid}/{mainid}', 'CustomerController@mall_product_list');
	Route::get('{mallname}/{brandid}/{topid}/{mainid}/{categoryid}', 'CustomerController@mall_product_list');
});

/*
Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['web', 'auth']], function () {
     \UniSharp\LaravelFilemanager\Lfm::routes();
 });
*/