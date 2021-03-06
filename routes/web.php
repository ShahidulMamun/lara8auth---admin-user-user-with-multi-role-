<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Backend\AdminController;
use App\Http\Controllers\Backend\DashboardController;
use App\Http\Controllers\MuftiController;
use App\Http\Controllers\UserController;
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

//Admin (backend) Routs

Route::get('/admin/login', [AdminController::class, 'adminLoginForm'])->name('admin.login.form');
Route::post('/admin-login', [AdminController::class, 'adminLogin'])->name('admin.login');

Route::group(['prefix'=>'/admin','middleware'=>'admin'], function(){

    Route::get('/dashboard', [DashboardController::class, 'adminLoginForm'])->name('admin.dashboard');
    Route::get('/logout', [AdminController::class, 'adminLogout'])->name('admin.logout');
    
});

//Genaral User Routs
Route::group(['prefix'=>'user', 'middleware'=>['user','auth']], function(){
    Route::get('/dashboard', [UserController::class, 'userDashboard'])->name('user.dashboard');

});


//Mufti User Routs
Route::group(['prefix'=>'mufti', 'middleware'=>['mufti','auth']], function(){
 
   Route::get('/dashboard', [MuftiController::class, 'muftiDashboard'])->name('mufti.dashboard');

});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
