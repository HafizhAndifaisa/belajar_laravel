<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/halo',function (){
    return "Halo bang";
});

// Route::get('/blog',function(){
//     return view('blog');
// });

Route::get('/dosen', 'App\Http\Controllers\DosenController@index');
// Route::get('/pegawai/{nama}','App\Http\Controllers\PegawaiController@index');
Route::get('formulir','App\Http\Controllers\PegawaiController@formulir');
Route::post('formulir/proses','App\Http\Controllers\PegawaiController@proses');

Route::get('/blog', 'App\Http\Controllers\BlogController@home');
Route::get('/blog/tentang', 'App\Http\Controllers\BlogController@tentang');
Route::get('/blog/kontak', 'App\Http\Controllers\BlogController@kontak');

//route crud
// Route::get('/pegawai','App\Http\Controllers\PegawaiController@index');
Route::get('/pegawai/tambah','App\Http\Controllers\PegawaiController@tambah');
Route::post('/pegawai/store','App\Http\Controllers\PegawaiController@store');
Route::get('/pegawai/edit/{id}','App\Http\Controllers\PegawaiController@edit');
Route::post('/pegawai/update','App\Http\Controllers\PegawaiController@update');
Route::get('/pegawai/hapus/{id}','App\Http\Controllers\PegawaiController@hapus');
Route::get('/pegawai/cari','App\Http\Controllers\PegawaiController@cari');

Route::get('/input','App\Http\Controllers\ValidateController@input');
Route::post('/proses','App\Http\Controllers\ValidateController@proses');
// eloquent
Route::get('/pegawai','App\Http\Controllers\PegawaiController@index');

Route::get('/enkripsi', 'App\Http\Controllers\EncryptDecryptController@enkripsi');
Route::get('/data', 'App\Http\Controllers\EncryptDecryptController@data');
Route::get('/data/{data_rahasia}', 'App\Http\Controllers\EncryptDecryptController@data_proses');
Route::get('/hash', 'App\Http\Controllers\EncryptDecryptController@hash');

Route::get('/upload', 'App\Http\Controllers\UploadController@upload');
Route::post('/upload/proses', 'App\Http\Controllers\UploadController@proses_upload');
Route::get('/upload/hapus/{id}', 'App\Http\Controllers\UploadController@hapus');

Route::get('/session/tampil','App\Http\Controllers\TesController@tampilkanSession');
Route::get('/session/buat','App\Http\Controllers\TesController@buatSession');
Route::get('/session/hapus','App\Http\Controllers\TesController@hapusSession');

Route::get('/pesan','App\Http\Controllers\NotifController@index');
Route::get('/pesan/sukses','App\Http\Controllers\NotifController@sukses');
Route::get('/pesan/peringatan','App\Http\Controllers\NotifController@peringatan');
Route::get('/pesan/gagal','App\Http\Controllers\NotifController@gagal');

Route::get('/testerror','App\Http\Controllers\ErrorTestController@index');
Route::get('/testerror/{nama}','App\Http\Controllers\ErrorTestController@index');