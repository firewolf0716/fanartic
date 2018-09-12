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

Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['web']], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});

Route::get('lang/{lang}', 'Common\LanguageController@switchLang')->name('lang.switch');

Route::middleware(['basicAuth'])->group(function () {
    //All the routes are placed in here
    // Route::get('/', function() {
	// 	// return Redirect::to('customer/product/list/1');
	// });
    Route::get('/', 'Customer\CustomerController@index');	

    // widget
    Route::get('widget', function(){
        return View('widget.index');
    });

    Route::get('admin/login', 'Admin\AdminController@login');
	Route::get('admin/signout', 'Admin\AdminController@signout');
	Route::post('admin/signin', 'Admin\AdminController@signin');

	// Admin
	Route::get('admin','Admin\AdminController@login');
	Route::get('admin/dashboard','Admin\AdminController@dashboard');
	Route::get('admin/admins/add','Admin\AdminController@addadmin');
	Route::post('admin/admins/addpost','Admin\AdminController@addadminpost');
	Route::get('admin/admins/list','Admin\AdminController@listadmin');
	Route::get('admin/admins/edit/{id}','Admin\AdminController@editadmin');
	Route::post('admin/admins/editpost','Admin\AdminController@editadminpost');

	// Import
	Route::get('admin/import/csv','Admin\ImportController@importFromCsv');
	Route::post('admin/import/update_csv','Admin\ImportController@updateFromCsv');

	// Genre
	Route::get('admin/genre/add','Admin\GenreController@add');
	Route::post('admin/genre/addpost','Admin\GenreController@addpost');
	Route::get('admin/genre/list','Admin\GenreController@list');
	Route::get('admin/genre/edit/{id}','Admin\GenreController@edit');
	Route::post('admin/genre/editpost','Admin\GenreController@editpost');
	Route::get('admin/genre/delete/{id}','Admin\GenreController@delete');

	// Mall
	Route::get('admin/mall/add','Admin\MallController@add');
	Route::post('admin/mall/addpost','Admin\MallController@addpost');
	Route::get('admin/mall/list','Admin\MallController@list');
	Route::get('admin/mall/edit/{id}','Admin\MallController@edit');
	Route::post('admin/mall/editpost','Admin\MallController@editpost');
	Route::get('admin/mall/delete/{id}','Admin\MallController@delete');

	// Brand
	Route::get('admin/brand/add','Admin\BrandController@add');
	Route::post('admin/brand/addpost','Admin\BrandController@addpost');
	Route::get('admin/brand/list','Admin\BrandController@list');
	Route::get('admin/brand/edit/{id}','Admin\BrandController@edit');
	Route::post('admin/brand/editpost','Admin\BrandController@editpost');
	Route::get('admin/brand/delete/{id}','Admin\BrandController@delete');

	// Category
	Route::get('admin/category/add','Admin\CategoryController@addtop');
	Route::get('admin/category/add/{topcategoryid}','Admin\CategoryController@addmain');
	Route::get('admin/category/add/{topcategoryid}/{maincategoryid}','Admin\CategoryController@add');
	Route::post('admin/category/addpost','Admin\CategoryController@addpost');
	Route::get('admin/category/list','Admin\CategoryController@listtop');
	Route::get('admin/category/list/{topcategoryid}','Admin\CategoryController@listmain');
	Route::get('admin/category/list/{topcategoryid}/{maincategoryid}','Admin\CategoryController@list');
	Route::get('admin/category/edit/{topid}','Admin\CategoryController@edittop');
	Route::get('admin/category/edit/{topid}/{mainid}','Admin\CategoryController@editmain');
	Route::get('admin/category/edit/{topid}/{mainid}/{id}','Admin\CategoryController@edit');
	Route::get('admin/category/delete/{id}','Admin\CategoryController@delete');
	Route::post('admin/category/editpost','Admin\CategoryController@editpost');
	Route::get('admin/category/get-top-categorys','Admin\CategoryController@getTopCategorys');
	Route::get('admin/category/get-main-categorys/{gender}','Admin\CategoryController@getMainCategorys');
	Route::get('admin/category/get-sub-categorys/{mainid}','Admin\CategoryController@getSubCategorys');
	Route::get('admin/category/get-size-category/{subid}','Admin\CategoryController@getSizeCategory');
	
	// Size Category
	Route::get('admin/size/addcategory','Admin\SizeController@addcategory');
	Route::post('admin/size/addcategorypost','Admin\SizeController@addcategorypost');
	Route::get('admin/size/listcategory','Admin\SizeController@listcategory');
	Route::get('admin/size/editcategory/{id}','Admin\SizeController@editcategory');
	Route::post('admin/size/editcategorypost','Admin\SizeController@editcategorypost');

	// Size
	Route::get('admin/size/add','Admin\SizeController@add');
	Route::post('admin/size/addpost','Admin\SizeController@addpost');
	Route::get('admin/size/list','Admin\SizeController@list');
	Route::get('admin/size/edit/{id}','Admin\SizeController@edit');
	Route::post('admin/size/editpost','Admin\SizeController@editpost');

	// Color
	Route::get('admin/color/add','Admin\ColorController@add');
	Route::post('admin/color/addpost','Admin\ColorController@addpost');
	Route::get('admin/color/list','Admin\ColorController@list');
	Route::get('admin/color/edit/{id}','Admin\ColorController@edit');
	Route::post('admin/color/editpost','Admin\ColorController@editpost');

	// Event
	Route::get('admin/event/add','Admin\EventController@add');
	Route::post('admin/event/addpost','Admin\EventController@addpost');
	Route::get('admin/event/list','Admin\EventController@list');
	Route::get('admin/event/edit/{id}','Admin\EventController@edit');
	Route::post('admin/event/editpost','Admin\EventController@editpost');
	Route::get('admin/eventy/delete/{id}','Admin\EventController@delete');

	// Plan
	Route::get('admin/plan/add','Admin\PlanController@add');
	Route::post('admin/plan/addpost','Admin\PlanController@addpost');
	Route::get('admin/plan/list','Admin\PlanController@list');
	Route::get('admin/plan/edit/{id}','Admin\PlanController@edit');
	Route::post('admin/plan/editpost','Admin\PlanController@editpost');

	// Merchant Notify
	Route::get('admin/notifymerchant/add','Admin\MerchantNotifyController@add');
	Route::post('admin/notifymerchant/addpost','Admin\MerchantNotifyController@addpost');
	Route::get('admin/notifymerchant/list','Admin\MerchantNotifyController@list');
	Route::get('admin/notifymerchant/edit/{id}','Admin\MerchantNotifyController@edit');
	Route::get('admin/notifymerchant/delete/{id}','Admin\MerchantNotifyController@delete');
	Route::post('admin/notifymerchant/editpost','Admin\MerchantNotifyController@editpost');

	// Customer Notify
	Route::get('admin/notifycustomer/add','Admin\CustomerNotifyController@add');
	Route::post('admin/notifycustomer/addpost','Admin\CustomerNotifyController@addpost');
	Route::get('admin/notifycustomer/list','Admin\CustomerNotifyController@list');
	Route::get('admin/notifycustomer/edit/{id}','Admin\CustomerNotifyController@edit');
	Route::get('admin/notifycustomer/delete/{id}','Admin\CustomerNotifyController@delete');
	Route::post('admin/notifycustomer/editpost','Admin\CustomerNotifyController@editpost');

	// Admin Manage Merchant
	Route::get('admin/merchant_detaill/{id}','Admin\AdminController@detail_merchant_live');
	Route::get('admin/merchant_close/{id}','Admin\AdminController@merchant_close');
	Route::get('admin/merchant_open/{id}','Admin\AdminController@merchant_open');
	Route::get('admin/merchants/list','Admin\AdminController@manage_merchants');
	Route::get('admin/merchants/add','Admin\AdminController@merchant_add');
	Route::post('admin/merchants/addpost','Admin\AdminController@merchant_addpost');
	Route::post('admin/merchants/editpost','Admin\AdminController@merchant_editpost');
	Route::get('admin/merchant/getplan/{id}','Admin\AdminController@get_plan');
	// Route::get('admin/merchants','AdminController@manage_merchants');
	// Route::get('admin/merchant_approvew/{id}','AdminController@approve_merchant');
	// Route::get('admin/merchant_detailw/{id}','AdminController@detail_merchant_wait');
	// Route::get('admin/merchant_reject/{id}','AdminController@merchant_reject');

	//merchants
	Route::get('merchant', 'Merchant\MerchantloginController@merchant_signin');
	Route::get('merchant/signin', 'Merchant\MerchantloginController@merchant_signin');
	Route::post('merchant/signinpost', 'Merchant\MerchantloginController@merchant_signinpost');
	Route::get('merchant/signup', 'Merchant\MerchantloginController@merchant_signup');
	Route::post('merchant/signuppost', 'Merchant\MerchantloginController@merchant_signuppost');
	Route::get('merchant/signout', 'Merchant\MerchantloginController@merchant_signout');

	Route::get('merchant/dashboard', 'Merchant\MerchantController@merchant_dashboard');
	Route::get('merchant/setting', 'Merchant\MerchantController@merchant_setting');
	Route::get('merchant/getcity', 'Merchant\MerchantController@getcity');
	Route::post('merchant/editsetting', 'Merchant\MerchantController@merchant_editsetting');

	//merchant product
	Route::get('merchant/product/add', 'Merchant\MerchantproductController@merchant_product_add');
	Route::get('merchant/product/getscategory/{tcategory}', 'Merchant\MerchantproductController@merchant_getscategory');
	Route::get('merchant/product/getssizes/{tcategory}', 'Merchant\MerchantproductController@merchant_getsizecategory');
	Route::get('merchant/product/getparentprefers/{category}/{brand}', 'Merchant\MerchantproductController@merchant_getparentprefers');
	Route::post('merchant/product/addpost', 'Merchant\MerchantproductController@merchant_product_addpost');
	Route::post('merchant/product/editpost', 'Merchant\MerchantproductController@merchant_product_editpost');
	Route::get('merchant/product/edit/{id}', 'Merchant\MerchantproductController@merchant_product_edit');
	Route::get('merchant/product/edit_sku/{id}', 'Merchant\MerchantproductController@merchant_product_edit_sku');

	Route::get('merchant/product/manage', 'Merchant\MerchantproductController@merchant_product_manage');
	Route::get('merchant/product/manage/{product_status}', 'Merchant\MerchantproductController@merchant_product_manage_with_status');
	Route::get('merchant/product/sold', 'Merchant\MerchantproductController@merchant_product_sold');
	Route::get('merchant/product/csvupload', 'Merchant\MerchantproductController@merchant_product_csvupload');
	Route::get('merchant/product/cash_on_delivery', 'Merchant\MerchantproductController@merchant_product_cash_on_delivery');
	Route::get('merchant/product/shipping', 'Merchant\MerchantproductController@merchant_product_shipping');
	Route::get('merchant/product/accept_pay_shipping_delivery/{id}', 'Merchant\MerchantproductController@accept_pay_shipping_delivery');
	Route::get('merchant/product/decline_pay_shipping_delivery/{id}', 'Merchant\MerchantproductController@decline_pay_shipping_delivery');
	Route::get('merchant/product/accept_sold_product/{id}', 'Merchant\MerchantproductController@accept_sold_product');
	Route::get('merchant/product/remove_solded_product/{id}', 'Merchant\MerchantproductController@remove_solded_product');
	Route::post('merchant/product/load_from_csv', 'Merchant\MerchantproductController@importProductFromCSV');
	Route::get('merchant/product/csvupdate', 'Merchant\MerchantproductController@showUpdateProductCount');
	Route::post('merchant/product/update_product_count', 'Merchant\MerchantproductController@updateProductCountFromCSV');
	Route::post('merchant/product/set_sku', 'Merchant\MerchantproductController@merchant_product_set_sku');
	Route::get('merchant/product/delete/{product_id}/{product_status}', 'Merchant\MerchantproductController@mer_delete_product');
	Route::post('merchant/product/search', 'Merchant\MerchantproductController@merchant_search');
	Route::get('merchant/product/sales_management', 'Merchant\MerchantSaleManagementController@merchant_sales_management');
	Route::post('merchant/sale_management/search', 'Merchant\MerchantSaleManagementController@merchant_sales_management_search');

	Route::get('merchant/shipping/add', 'Merchant\MerchantShippingController@merchant_shipping_add');
	Route::post('merchant/shipping/addpost', 'Merchant\MerchantShippingController@merchant_shipping_updatepost');
	Route::get('merchant/shipping/list', 'Merchant\MerchantShippingController@merchant_shipping_list');
	Route::get('merchant/shipping/remove/{shipping_id}', 'Merchant\MerchantShippingController@merchant_shipping_remove');
	Route::get('merchant/shipping/edit/{shipping_id}', 'Merchant\MerchantShippingController@merchant_shipping_edit');
	Route::post('merchant/shipping/editpost', 'Merchant\MerchantShippingController@merchant_shipping_updatepost');
	Route::get('merchant/shipping/remove_price/{shipping_id}', 'Merchant\MerchantShippingController@merchant_shipping_remove_price');

	
	// Route::post('merchant/product/product_import_csv', function(){
	//     return view('merchant.product.product_import_csv');
	// });
	Route::get('merchant/product/product_import_csv', 'Merchant\MerchantproductController@product_import_csv');

	//sign
	Route::post('user/signuppost', 'Customer\CustomerUserController@signuppost');
	Route::get('user/signverify', 'Customer\CustomerUserController@signverify');
	Route::post('user/signinpost', 'Customer\CustomerUserController@signinpost');
	Route::get('user/signout', 'Customer\CustomerUserController@signout');
	//profile
	Route::get('user/profile', 'Customer\CustomerUserController@profile');
	Route::post('user/profilepost', 'Customer\CustomerUserController@profilepost');
	//favourite
	Route::get('user/favourite', 'Customer\CustomerFavController@favourite');
	Route::post('user/addFavourite', 'Customer\CustomerFavController@addFavourite');
	Route::get('user/favourite', 'Customer\CustomerFavController@favourite');
	Route::post('user/favitem_action', 'Customer\CustomerFavController@favitem_action');
	//cart
	Route::get('user/cart', 'Customer\CartController@cart');
	Route::post('user/addtocart', 'Customer\CartController@addtocart');
	Route::post('user/cart_remove_item', 'Customer\CartController@cart_remove_item');
	//address
	Route::get('user/address', 'Customer\CustomerAddressController@address');
	Route::get('user/addressadd', 'Customer\CustomerAddressController@addressadd');
	Route::post('user/address_add_post', 'Customer\CustomerAddressController@address_add_post');
	Route::get('user/address_flag/{addr_id}', 'Customer\CustomerAddressController@address_flag');
	Route::get('user/address_edit/{addr_id}', 'Customer\CustomerAddressController@address_edit');
	Route::post('user/address_edit_post', 'Customer\CustomerAddressController@address_edit_post');
	Route::get('user/address_delete/{addr_id}', 'Customer\CustomerAddressController@address_delete');
	//payment
	Route::get('user/credit', 'Customer\CustomerCardController@credit');
	//credit js post
	Route::get('user/removecard', 'Customer\CustomerCardController@delete_card');
	Route::post('user/add_card_post', 'Customer\CustomerCardController@add_card_post');
	Route::post('user/edit_card_post', 'Customer\CustomerCardController@edit_card_post');
	//order flow
	Route::get('user/checkflowinfo', 'Customer\CustomerMFlowController@checkflowinfo');
	Route::post('user/flow_post_ac', 'Customer\CustomerMFlowController@flow_post_ac');
	Route::get('user/checkflowconfirm', 'Customer\CustomerMFlowController@checkflowconfirm');
	Route::get('user/confirm_order', 'Customer\CustomerMFlowController@confirm_order');
	//order history
	Route::get('user/history', 'Customer\CustomerController@history');
	Route::get('user/historydetail/{group}', 'Customer\CustomerController@historydetail');
	Route::get('user/history/receive/{item}', 'Customer\CustomerController@receiveitem');
	//magazine
	Route::get('user/magazine', 'Customer\CustomerMagazineController@magazine');
	Route::post('user/magazine_post', 'Customer\CustomerMagazineController@magazine_post');
	//score
	Route::get('user/score', 'Customer\CustomerController@score');
//all
	Route::get('product/list', 'Customer\CustomerController@product_list');
	Route::get('product/list/{topid}', 'Customer\CustomerController@product_list');
	Route::get('product/list/{topid}/{mainid}', 'Customer\CustomerController@product_list');
	Route::get('product/list/{topid}/{mainid}/{categoryid}', 'Customer\CustomerController@product_list');
	Route::post('product/product_list_post', 'Customer\CustomerController@product_list_post');
	Route::get('product/detail/{productid}', 'Customer\CustomerController@product_detail');
//brand
	Route::get('/brands/{brandid}/goods/{productid}', 'Customer\CustomerController@product_detail');

	Route::get('/brands/{brandid}', 'Customer\CustomerController@brand');
	Route::get('/brands/{brandid}/{topid}', 'Customer\CustomerController@product_list_brand');
	Route::get('/brands/{brandid}/{topid}/{mainid}', 'Customer\CustomerController@product_list_brand');
	Route::get('/brands/{brandid}/{topid}/{mainid}/{categoryid}', 'Customer\CustomerController@product_list_brand');
//category
	Route::get('/category/fanartic/{topid}', 'Customer\CustomerController@product_list_category');
	Route::get('/category/fanartic/{topid}/{mainid}', 'Customer\CustomerController@product_list_category');
	Route::get('/category/fanartic/{topid}/{mainid}/{categoryid}', 'Customer\CustomerController@product_list_category');
//category in mall
	Route::get('/category/{mallname}/{topid}', 'Customer\CustomerController@product_list_mall');
	Route::get('/category/{mallname}/{topid}/{mainid}', 'Customer\CustomerController@product_list_mall');
	Route::get('/category/{mallname}/{topid}/{mainid}/{categoryid}', 'Customer\CustomerController@product_list_mall');
//category in mall/brand
	Route::get('/{mallname}', 'Customer\CustomerController@mall');
	Route::get('{mallname}/{brandid}', 'Customer\CustomerController@mall_product_list');
	Route::get('{mallname}/{brandid}/{topid}', 'Customer\CustomerController@mall_product_list');
	Route::get('{mallname}/{brandid}/{topid}/{mainid}', 'Customer\CustomerController@mall_product_list');
	Route::get('{mallname}/{brandid}/{topid}/{mainid}/{categoryid}', 'Customer\CustomerController@mall_product_list');
});

