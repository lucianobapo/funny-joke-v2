<?php

use Dingo\Api\Routing\Router;
use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:api');

Route::get('/categorias/todas',  [
    'as'=>'json.categorias',
    'uses'=> 'JsonController@getCategories'
]);

Route::get('/produtosDelivery/{categ}/{begin?}/{end?}',  [
    'as'=>'json.produtosDelivery',
    'uses'=> 'JsonController@produtosDelivery'
]);

Route::get('/partnerProviderId/{id}',  [
    'as'=>'json.partnerProviderId',
    'uses'=> 'JsonController@partnerProviderId'
]);

Route::get('/appVersion',  [
    'as'=>'json.appVersion',
    'uses'=> 'JsonController@appVersion'
]);

Route::get('/advice',  [
    'as'=>'json.appVersion',
    'uses'=> 'JsonController@advice'
]);

Route::post('/ordem',  [
    'as'=>'json.ordem',
    'uses'=> 'JsonController@ordem'
]);

$router = app(Router::class);

$routeConfigV1 = [
    'namespace' => 'App\Http\Controllers',
//            'prefix' => $this->app['config']->get('debugbar.route_prefix'),
];

$router
    ->version('v1', function (Router $router) use ($routeConfigV1) {
        $router
            ->group($routeConfigV1, function (Router $router) {

                $router->get('/post/{post}/showFile/{providerId}/{file}', ['as'=>'post.showFile', 'uses'=>'PostController@showFile']);
                $router->get('/post/{post}/showRandom/{providerId}/{file}', ['as'=>'post.showRandom', 'uses'=>'PostController@showRandom']);
                $router->get('/post/{post}/random', ['as'=>'post.random', 'uses'=>'PostController@random']);
//                $router->get('/post/{post}/edit', ['as'=>'post.edit', 'uses'=>'PostController@edit']);
                $router->get('/', ['as'=>'post.home', 'uses'=>'PostController@home']);
            });
    });