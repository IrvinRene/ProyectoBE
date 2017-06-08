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

Route::get('/', function () {
    return view('welcome');
});


Auth::routes();

Route::get('/home', 'HomeController@index');

Route::resource('/form', 'Informacion_viviendas');
<<<<<<< HEAD
Route::resource('/noticias', 'Noticias');
Route::get('/economics', 'economicsController@index');
=======

Route::get('/regnoticia', 'Regnoticia@index');
Route::post('/noticia', 'Regnoticia@store');
>>>>>>> f33ec9556cc02ce48241ba607a48fe325fbf3e4e
