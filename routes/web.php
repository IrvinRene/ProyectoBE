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

//Route::resource('/form', 'Informacion_viviendas');
Route::resource('/noticias', 'Noticias');
Route::get('/economics', 'economicsController@index');
Route::get('/regnoticia', 'Regnoticia@index');
Route::post('/noticia', 'Regnoticia@store');


Route::resource('/tipo_viv', 'Informacion_viviendas');
Route::resource('/info_academica', 'Info_academica');
Route::resource('/noticias', 'Noticias');
Route::get('/economics', 'economicsController@index');


Route::get('/regnoticia', 'Regnoticia@index');
Route::post('/noticia', 'Regnoticia@store');

Route::resource('/residencia', 'Residencia');
Route::resource('/aspecto_salud', 'Aspecto_salud');

Route::resource('/datos_personales', 'Datos_personales');
