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
	  
    return view('welcome' );
});

Route::get('input_form', function () {
	  
    return view('admin/input_form' );
});

Route::get('hover', function () {
	  
    return view('test_hover' );
});


Route::get('php', function () {
	  
    return view('test_php' );
});


Route::get('/tasks', 'TasksController@index');

Route::get('test_2', 'ViewPhotoController@view_photo'); // вывод на экран из БД

Route::get('/tasks/{task}', 'TasksController@show');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');



//Route::post('/content/foto', 'UserController@index');

Route::get('/content/foto', 'UserController@index');// test !

Route::get('test_2', 'UserController@index');// test !


Route::post('test', 'BDInsertController@BD_insert'); // необходимая часть для работы 






Route::get('/content/foto', 'LinkController@link');

Auth::routes();


//Route::get('send', 'mailComtroller@send');

Route::get('/users', 'pagination@users');

Route::get('/photo', 'BDViewPaginationController@photo_pagination'); // Деление вывода на экран из БД на страницы!

Route::get('hello', function () {
    return view('hello' );
});


Route::get('admin', function () {
    return view('admin\input_form' );
});

//Route::get('content\foto', function () {
//    return view('content\foto' , $input );
//});


Route::get('foto', function () {
    return view('content\foto' );
});


//Route::match(['get','post'],'/contact',['uses'=>'ContactController@show','as'=>'contact']);

