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
