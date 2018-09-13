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
Route::get('currency/{currency}', 'Common\CurrencyController@switchCurrency')->name('currency.switch');

Route::middleware(['basicAuth'])->group(function () {
    Route::group(['namespace' => 'Customer'], function () {
        Route::get('/', 'CustomerController@index');

        // widget
        Route::get('widget', function () {
            return View('widget.index');
        });

        //sign
        Route::post('user/signuppost', 'UserController@signuppost');
        Route::get('user/signverify', 'UserController@signverify');
        Route::post('user/signinpost', 'UserController@signinpost');
        Route::get('user/signout', 'UserController@signout');

        //profile
        Route::get('user/profile', 'UserController@profile');
        Route::post('user/profilepost', 'UserController@profilepost');

        //favorite
        Route::get('user/favorite', 'FavoriteController@favorite');
        Route::post('user/addFavorite', 'FavoriteController@addFavourite');
        Route::post('user/favitem_action', 'FavoriteController@favitem_action');
        //cart
        Route::get('user/cart', 'CartController@cart');
        Route::post('user/addtocart', 'CartController@addtocart');
        Route::post('user/cart_remove_item', 'CartController@cart_remove_item');

        //address
        Route::get('user/address', 'AddressController@address');
        Route::get('user/addressadd', 'AddressController@addressadd');
        Route::post('user/address_add_post', 'AddressController@address_add_post');
        Route::get('user/address_flag/{addr_id}', 'AddressController@address_flag');
        Route::get('user/address_edit/{addr_id}', 'AddressController@address_edit');
        Route::post('user/address_edit_post', 'AddressController@address_edit_post');
        Route::get('user/address_delete/{addr_id}', 'AddressController@address_delete');
        //payment
        Route::get('user/credit', 'CardController@credit');
        //credit js post
        Route::get('user/removecard', 'CardController@delete_card');
        Route::post('user/add_card_post', 'CardController@add_card_post');
        Route::post('user/edit_card_post', 'CardController@edit_card_post');
        //order flow
        Route::get('user/checkflowinfo', 'MFlowController@checkflowinfo');
        Route::post('user/checkflowinfoPost', 'MFlowController@checkflowinfoPost');
        Route::get('user/checkflowconfirm', 'MFlowController@checkflowconfirm');
        Route::get('user/confirm_order', 'MFlowController@confirm_order');
        //order history
        Route::get('user/history', 'HistoryController@history');
        Route::get('user/historydetail/{group}', 'HistoryController@historydetail');
        Route::get('user/history/receive/{item}', 'HistoryController@receiveitem');
        //magazine
        Route::get('user/magazine', 'MagazineController@magazine');
        Route::post('user/magazine_post', 'MagazineController@magazine_post');
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

