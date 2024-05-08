<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\SeriesController;
use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return view('welcome');
});

Route::get('/trending', function () {
    $controller = new SeriesController();
    return $controller->index();
})->middleware(['auth', 'verified'])->name('trending');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});



Route::get('/myList', function () {
    return view('myList');
})->middleware(['auth', 'verified'])->name('myList');

require __DIR__.'/auth.php';
