<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\SkillController;
use Illuminate\Support\Facades\Route;

Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'
], function () {
    Route::post('login', [AuthController::class, 'login'])->name('login');
    Route::get('me', [AuthController::class, 'me']);
    Route::post('logout', [AuthController::class, 'logout']);
    Route::post('refresh', [AuthController::class, 'refrdesh']);
});

Route::group(['middleware' => 'api'], function () {
    Route::get('profile', [ProfileController::class, 'index']);
    Route::put('profile', [ProfileController::class, 'update']);

    Route::get('skills', [SkillController::class, 'index']);
    Route::get('skills/{skill}', [SkillController::class, 'show']);
    Route::post('skills', [SkillController::class, 'store']);
    Route::put('skills/{skill}', [SkillController::class, 'update']);
    Route::delete('skills/{skill}', [SkillController::class, 'destroy']);
});
