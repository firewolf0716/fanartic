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
    Route::get('apply', 'Auth\RegisterController@showRegistrationForm')->name('merchant.apply'); // 応募フォーム
    Route::post('register', 'Auth\RegisterController@register')->name('merchant.register'); // 応募フォーム
    Route::get('login', 'Auth\LoginController@showLoginForm')->name('merchant.login');
    Route::post('login', 'Auth\LoginController@login')->name('merchant.loginPost');
    Route::get('logout', 'Auth\LoginController@logout')->name('merchant.logout');
});

/*
|--------------------------------------------------------------------------
| 2) Merchant ログイン後
|--------------------------------------------------------------------------
*/
Route::group(['prefix' => 'merchant', 'namespace' => 'Merchant', 'middleware' => 'auth:merchant'], function () {

    Route::get('/','DashBoardController@index');
    Route::get('dashboard', 'DashBoardController@index')->name('merchant.dashboard');

    //merchant product
    Route::get('product/add', 'MerchantproductController@add');
    Route::get('product/getscategory/{tcategory}', 'MerchantproductController@getscategory');
    Route::get('product/get_size/{categoryId}', 'MerchantproductController@get_size');
    Route::get('product/getparentprefers/{category}/{brand}', 'MerchantproductController@getparentprefers');
    Route::post('product/addpost', 'MerchantproductController@addpost');
    Route::get('product/edit/{id}', 'MerchantproductController@edit');
    Route::post('product/editpost', 'MerchantproductController@editpost');
    Route::get('product/edit_sku/{id}', 'MerchantproductController@edit_sku');

    Route::get('product/manage', 'MerchantproductController@manage');
    Route::get('product/manage/{product_status}', 'MerchantproductController@product_manage_with_status');
    Route::get('product/sold', 'MerchantproductController@sold');
    Route::get('product/csvupload', 'MerchantproductController@product_csvupload');
    Route::get('product/order', 'MerchantproductController@order');  //  order friewolf
    Route::get('product/firewolforder', 'MerchantproductController@firewolforder');  //  order friewolf
    Route::post('/product/getorders', 'MerchantproductController@getorders');  //  order friewolf
    Route::get('product/shipping', 'MerchantproductController@shipping');
    Route::get('product/accept_pay_shipping_delivery/{id}', 'MerchantproductController@accept_pay_shipping_delivery');
    Route::get('product/decline_pay_shipping_delivery/{id}', 'MerchantproductController@decline_pay_shipping_delivery');
    Route::get('product/accept_sold_product/{id}', 'MerchantproductController@accept_sold_product');
    Route::get('product/remove_solded_product/{id}', 'MerchantproductController@remove_solded_product');
    Route::post('product/load_from_csv', 'MerchantproductController@importProductFromCSV');
    Route::get('product/csvupdate', 'MerchantproductController@showUpdateProductCount');
    Route::post('product/update_product_count', 'MerchantproductController@updateProductCountFromCSV');
    Route::post('product/set_sku', 'MerchantproductController@set_sku');
    Route::get('product/delete/{product_id}/{product_status}', 'MerchantproductController@delete_product');
    Route::post('product/search', 'MerchantproductController@search');
    Route::get('product/sales_management', 'MerchantSaleManagementController@sales_management');
    Route::post('sale_management/search', 'MerchantSaleManagementController@sales_management_search');

    Route::get('shipping/add', 'MerchantShippingController@shipping_add');
    Route::post('shipping/addpost', 'MerchantShippingController@shipping_updatepost');
    Route::get('shipping/list', 'MerchantShippingController@shipping_list');
    Route::get('shipping/remove/{shipping_id}', 'MerchantShippingController@shipping_remove');
    Route::get('shipping/edit/{shipping_id}', 'MerchantShippingController@shipping_edit');
    Route::post('shipping/editpost', 'MerchantShippingController@shipping_updatepost');
    Route::get('shipping/remove_price/{shipping_id}', 'MerchantShippingController@shipping_remove_price');

    Route::get('product/product_import_csv', 'MerchantproductController@import_csv');

    // merchant setting
    Route::group(['prefix' => 'setting'], function () {
        Route::get('/', 'MerchantController@setting');
        Route::get('/status', 'MerchantController@setting'); //店舗ステータス変更
        Route::get('/edit', 'MerchantController@setting'); // 店舗詳細情報変更
        Route::get('/np', 'MerchantController@setting'); // NP後払い
    });
    Route::get('getcity', 'MerchantController@getcity');
    Route::post('editsetting', 'MerchantController@editsetting');
});

