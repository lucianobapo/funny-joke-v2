<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//Route::get('/', ['uses'=>'\ErpNET\Models\v1\Controllers\PostController@home']);
//Route::resource('partners', '\ErpNET\Models\Controllers\PartnersController');

Auth::routes();

Route::get('/home', 'HomeController@index');

//Route::resource('/post', '\ErpNET\Models\v1\Controllers\PostController');
//Route::resource('/page', '\ErpNET\Models\v1\Controllers\PageController');
//Route::resource('/user', '\ErpNET\Models\v1\Controllers\UserController');