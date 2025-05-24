<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DeepSeekController;
use App\Http\Controllers\ArticleController;

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

Route::get('/', [DeepSeekController::class, 'index']);

Route::get('/deepseek', [DeepSeekController::class, 'index']);
Route::post('/deepseek', [DeepSeekController::class, 'process'])->name('deepseek.process');

Route::resource('articles', ArticleController::class);
