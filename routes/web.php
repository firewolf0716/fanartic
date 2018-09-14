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

Auth::routes();
Route::get('logout', 'Auth\LoginController@logout')->name('logout');
Route::get('lang/{lang}', 'Common\LanguageController@switchLang')->name('lang.switch');
Route::get('currency/{currency}', 'Common\CurrencyController@switchCurrency')->name('currency.switch');

/*
|--------------------------------------------------------------------------
| 1) Customer 認証不要
|--------------------------------------------------------------------------
*/
Route::group(['namespace' => 'Customer'], function () {
    Route::get('/', 'CustomerController@index')->name('top');

    // widget
    Route::get('widget', function () {
        return View('widget.index');
    });
});

/*
|--------------------------------------------------------------------------
| 2) Customer ログイン後
|--------------------------------------------------------------------------
*/

Route::group(['prefix' => 'user', 'namespace' => 'Customer', 'middleware' => 'auth:user'], function () {
    //profile
    Route::get('profile', 'UserController@profile')->name('profile');
    Route::post('profilepost', 'UserController@profilepost')->name('profile.post');

    //favorite
    Route::get('favorite', 'FavoriteController@favorite')->name('favorite');
    Route::post('addFavorite', 'FavoriteController@addFavourite')->name('favorite.post');
    Route::post('favitem_action', 'FavoriteController@favitem_action')->name('favorite.action');
    //cart
    Route::get('cart', 'CartController@cart')->name('cart');
    Route::post('addtocart', 'CartController@addtocart')->name('cart.add');
    Route::post('cart_remove_item', 'CartController@cart_remove_item')->name('cart.remove');

    //address
    Route::get('address', 'AddressController@address')->name('address');
    Route::get('addressadd', 'AddressController@addressadd')->name('address.add');
    Route::post('address_add_post', 'AddressController@address_add_post')->name('address.add.post');
    Route::get('address_flag/{addr_id}', 'AddressController@address_flag')->name('address.flag');
    Route::get('address_edit/{addr_id}', 'AddressController@address_edit')->name('address.edit');
    Route::post('address_edit_post', 'AddressController@address_edit_post')->name('address.edit.post');
    Route::get('address_delete/{addr_id}', 'AddressController@address_delete')->name('address.remove');

    //payment
    Route::get('credit', 'CardController@credit')->name('credit');

    //credit js post
    Route::get('delete_card', 'CardController@delete_card')->name('card.remove');
    Route::post('add_card_post', 'CardController@add_card_post')->name('card.add.post');
    Route::post('edit_card_post', 'CardController@edit_card_post')->name('card.edit.post');

    //order flow
    Route::get('checkflowinfo', 'MFlowController@checkflowinfo')->name('check.info');
    Route::post('checkflowinfoPost', 'MFlowController@checkflowinfoPost')->name('check.info.post');
    Route::get('checkflowconfirm', 'MFlowController@checkflowconfirm')->name('check.conf');
    Route::get('confirm_order', 'MFlowController@confirm_order')->name('check.conf.order');

    //order history
    Route::get('history', 'HistoryController@history')->name('history');
    Route::get('historydetail/{group}', 'HistoryController@historydetail')->name('history.detail');
    Route::get('history/receive/{item}', 'HistoryController@receiveitem')->name('history.receive');

    //magazine
    Route::get('magazine', 'MagazineController@magazine')->name('magazine');
    Route::post('magazine_post', 'MagazineController@magazine_post')->name('magazine.post');

    //score
    Route::get('score', 'CustomerController@score')->name('score');
});

// フロント
Route::group(['namespace' => 'Customer'], function () {
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
