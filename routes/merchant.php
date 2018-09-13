<?php

/*
|--------------------------------------------------------------------------
| Merchant Routes
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

/*
|--------------------------------------------------------------------------
| 1) Merchant 認証不要
|--------------------------------------------------------------------------
*/

Route::group(['prefix' => 'merchant', 'namespace' => 'Merchant'], function () {
    Route::get('/', 'MerchantloginController@merchant_signin')->name('merchant.top');
    Route::get('login', 'MerchantloginController@merchant_signin')->name('merchant.login');
    Route::post('signinpost', 'MerchantloginController@merchant_signinpost');
    Route::get('signup', 'MerchantloginController@merchant_signup');
    Route::post('signuppost', 'MerchantloginController@merchant_signuppost');
    Route::get('signout', 'MerchantloginController@merchant_signout');
});

/*
|--------------------------------------------------------------------------
| 2) Merchant ログイン後
|--------------------------------------------------------------------------
*/
Route::group(['prefix' => 'merchant', 'namespace' => 'Merchant'/*,'middleware' => 'auth:merchant'*/], function () {
    Route::get('dashboard', 'MerchantController@merchant_dashboard');
    Route::get('setting', 'MerchantController@merchant_setting');
    Route::get('getcity', 'MerchantController@getcity');
    Route::post('editsetting', 'MerchantController@merchant_editsetting');

    //merchant product
    Route::get('product/add', 'MerchantproductController@merchant_product_add');
    Route::get('product/getscategory/{tcategory}', 'MerchantproductController@merchant_getscategory');
    Route::get('product/getssizes/{tcategory}', 'MerchantproductController@merchant_getsizecategory');
    Route::get('product/getparentprefers/{category}/{brand}', 'MerchantproductController@merchant_getparentprefers');
    Route::post('product/addpost', 'MerchantproductController@merchant_product_addpost');
    Route::post('product/editpost', 'MerchantproductController@merchant_product_editpost');
    Route::get('product/edit/{id}', 'MerchantproductController@merchant_product_edit');
    Route::get('product/edit_sku/{id}', 'MerchantproductController@merchant_product_edit_sku');

    Route::get('product/manage', 'MerchantproductController@merchant_product_manage');
    Route::get('product/manage/{product_status}', 'MerchantproductController@merchant_product_manage_with_status');
    Route::get('product/sold', 'MerchantproductController@merchant_product_sold');
    Route::get('product/csvupload', 'MerchantproductController@merchant_product_csvupload');
    Route::get('product/cash_on_delivery', 'MerchantproductController@merchant_product_cash_on_delivery');
    Route::get('product/shipping', 'MerchantproductController@merchant_product_shipping');
    Route::get('product/accept_pay_shipping_delivery/{id}', 'MerchantproductController@accept_pay_shipping_delivery');
    Route::get('product/decline_pay_shipping_delivery/{id}', 'MerchantproductController@decline_pay_shipping_delivery');
    Route::get('product/accept_sold_product/{id}', 'MerchantproductController@accept_sold_product');
    Route::get('product/remove_solded_product/{id}', 'MerchantproductController@remove_solded_product');
    Route::post('product/load_from_csv', 'MerchantproductController@importProductFromCSV');
    Route::get('product/csvupdate', 'MerchantproductController@showUpdateProductCount');
    Route::post('product/update_product_count', 'MerchantproductController@updateProductCountFromCSV');
    Route::post('product/set_sku', 'MerchantproductController@merchant_product_set_sku');
    Route::get('product/delete/{product_id}/{product_status}', 'MerchantproductController@mer_delete_product');
    Route::post('product/search', 'MerchantproductController@merchant_search');
    Route::get('product/sales_management', 'MerchantSaleManagementController@merchant_sales_management');
    Route::post('sale_management/search', 'MerchantSaleManagementController@merchant_sales_management_search');

    Route::get('shipping/add', 'MerchantShippingController@merchant_shipping_add');
    Route::post('shipping/addpost', 'MerchantShippingController@merchant_shipping_updatepost');
    Route::get('shipping/list', 'MerchantShippingController@merchant_shipping_list');
    Route::get('shipping/remove/{shipping_id}', 'MerchantShippingController@merchant_shipping_remove');
    Route::get('shipping/edit/{shipping_id}', 'MerchantShippingController@merchant_shipping_edit');
    Route::post('shipping/editpost', 'MerchantShippingController@merchant_shipping_updatepost');
    Route::get('shipping/remove_price/{shipping_id}', 'MerchantShippingController@merchant_shipping_remove_price');

    Route::get('product/product_import_csv', 'MerchantproductController@product_import_csv');
});
