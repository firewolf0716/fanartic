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
    Route::group(['namespace' => 'Customer'], function () {
        Route::get('/', 'CustomerController@index');

        // widget
        Route::get('widget', function () {
            return View('widget.index');
        });
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
        Route::get('user/history', 'CustomerController@history');
        Route::get('user/historydetail/{group}', 'CustomerController@historydetail');
        Route::get('user/history/receive/{item}', 'CustomerController@receiveitem');
        //magazine
        Route::get('user/magazine', 'Customer\CustomerMagazineController@magazine');
        Route::post('user/magazine_post', 'Customer\CustomerMagazineController@magazine_post');
        //score
        Route::get('user/score', 'CustomerController@score');
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
        Route::get('{mallname}', 'CustomerController@mall');
        Route::get('{mallname}/{brandid}', 'CustomerController@mall_product_list');
        Route::get('{mallname}/{brandid}/{topid}', 'CustomerController@mall_product_list');
        Route::get('{mallname}/{brandid}/{topid}/{mainid}', 'CustomerController@mall_product_list');
        Route::get('{mallname}/{brandid}/{topid}/{mainid}/{categoryid}', 'CustomerController@mall_product_list');
    });
});

