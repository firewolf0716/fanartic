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

Route::get('/', function () {return view('welcome');});

//merchants
Route::get('merchant_dashboard', 'DashboardController@dashboard_merchant');
//merchant product
Route::get('merchant_product_add', 'MerchantproductController@merchant_product_add');
Route::get('merchant_product_manage', 'MerchantproductController@merchant_product_manage');
Route::get('merchant_product_sold', 'MerchantproductController@merchant_product_sold');
Route::get('merchant_product_csvupload', 'MerchantproductController@merchant_product_csvupload');
//product
Route::get('mer_product_getmaincategory', 'ProductController@mer_product_getmaincategory');
