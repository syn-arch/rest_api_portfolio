<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'
], function () {
    Route::post('login', [AuthController::class, 'ldogin'])->name('login');
    Route::post('logout', [AuthController::class, 'logout']);
    Route::post('refresh', [AuthController::class, 'refrdesh']);
    Route::post('profile', [AuthController::class, 'index']);
});

Route::group(['middleware' => 'api', 'prefix' => 'auth'], function () {
    Route::get('profile', [ProfileController::class, 'index']);
    Route::put('profile', [ProfileController::class, 'update']);
});
