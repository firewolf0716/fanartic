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

Route::get('/', 'DashboardController@dashboard_merchant');

//merchants
Route::get('merchant_dashboard', 'DashboardController@dashboard_merchant');
//merchant product
Route::get('merchant_product_add', 'MerchantproductController@merchant_product_add');
Route::get('merchant_product_manage', 'MerchantproductController@merchant_product_manage');
Route::get('merchant_product_sold', 'MerchantproductController@merchant_product_sold');
Route::get('merchant_product_csvupload', 'MerchantproductController@merchant_product_csvupload');

Route::get('mer_product_details/{id}', 'MerchantproductController@mer_product_details');
Route::get('mer_edit_product/{id}', 'MerchantproductController@mer_edit_product');
Route::get('mer_delete_product/{id}', 'MerchantproductController@mer_delete_product');

Route::post('merchant_product_addpost', 'MerchantproductController@merchant_product_addpost');
//product
Route::get('mer_product_getmaincategory', 'ProductController@mer_product_getmaincategory');
Route::get('product_getcolor', 'ProductController@product_getcolor');
Route::get('mer_product_getsubcategory', 'ProductController@mer_product_getsubcategory');
Route::get('mer_product_getsecondsubcategory', 'ProductController@mer_product_getsecondsubcategory');
Route::get('mer_product_getmerchantshop','ProductController@mer_product_getmerchantshop');
Route::get('get_spec_related_to_cat_mer', 'MerchantproductController@get_spec_related_to_cat');
Route::get('product_get_spec','ProductController@product_get_spec');
