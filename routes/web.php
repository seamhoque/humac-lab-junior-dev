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

/*Route::get('/', function () {
    return view('welcome');
});*/

Route::get('/', 'ProductController@landing')->name('landing');
Route::get('add', 'ProductController@index')->name('product');
Route::get('variant_product', 'ProductController@variant_product')->name('variant_product');
Route::get('added_products', 'ProductController@added_products')->name('added_products');
