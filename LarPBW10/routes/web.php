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
    return view('login');
});

Route::get('/home', function () {
    return view('home');
});

Route::get('/mahasiswa', 'MhsController@mahasiswa');
Route::get('/mahasiswa/search', 'MhsController@search');

Route::get('/mahasiswa/formmhs','MhsController@formmhs');
Route::post('/mahasiswa/simpanMahasiswa','MhsController@simpanMhs');
Route::get('/mahasiswa/editMhs/{id}','MhsController@editMhs');
Route::put('/mahasiswa/updateMhs/{id}','MhsController@updateMhs');
Route::get('/mahasiswa/hapusMhs/{id}','MhsController@hapusMhs');

Route::get('user','AuthController@user')->middleware('auth');
Route::get('user/formuser','AuthController@formuser')->middleware('auth');
Route::post('user/simpanuser','AuthController@saveuser')->middleware('auth');
Route::get('/user/edituser/{id}','AuthController@edituser');
Route::put('/user/updateuser/{id}','AuthController@updateuser');
Route::get('/user/hapususer/{id}','AuthController@hapususer');

Route::get('/login','AuthController@login')->middleware('guest')->name('login');
Route::post('user/ceklogin','AuthController@ceklogin')->middleware('guest');
Route::get('/logout','AuthController@logout')->middleware('auth');

Route::get('/mobil','MobilController@tahun');

Route::get('/mahasiswa/add','APIController@add');









