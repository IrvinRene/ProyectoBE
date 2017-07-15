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



Route::get('/regnoticia', 'Regnoticia@index');
Route::post('/noticia', 'Regnoticia@store');

Route::resource('/residencia', 'Residencia');
Route::resource('/aspecto_salud', 'Aspecto_salud');

Route::resource('/datos_personales', 'Datos_personales');

Route::resource('/inscripcion','inscripcion');
Route::resource('/form','Formulario');


Auth::routes();

Route::get('/home', 'HomeController@index');

Auth::routes();

Route::get('/home', 'HomeController@index');

Auth::routes();

Route::get('/home', 'HomeController@index');

Auth::routes();

Route::get('/home', 'HomeController@index');

Route::get('/economics', 'economicsController@index');
Route::resource('/economics', 'economicsController');
Route::resource('/preguntas', 'PreguntasController');
Route::resource('/reportes', 'Reportes');
