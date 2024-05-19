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

Route::get('/movies', function () {
    $controller = new SeriesController();
    return $controller->showSerie();
})->middleware(['auth', 'verified'])->name('movies');

Route::get('/series', function () {
    $controller = new SeriesController();
    return $controller->showSeries();
})->middleware(['auth', 'verified'])->name('series');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});


route::get('/series/{id}/games', function ($id) {
    $controller = new \App\Http\Controllers\GameController();
    return $controller->showRelatedGames($id);
})->middleware(['auth', 'verified'])->name('series.games');

Route::get('/myList', function () {
    $controller = new SeriesController();
    return $controller->myList();
})->middleware(['auth', 'verified'])->name('myList');

Route::get('/search', function (){
    $controller = new \App\Http\Controllers\SearchController();
    return $controller->search(request());
})->middleware(['auth', 'verified'])->name('search');

Route::post('/mylist/{series}/add-to-my-list',
    [SeriesController::class, 'addToMyList'
])->middleware(['auth', 'verified'])->name('myList.addToMyList');

Route::delete('/mylist/{series}/remove-from-my-list',
    [SeriesController::class, 'removeFromMyList'
])->middleware(['auth', 'verified'])->name('myList.removeFromMyList');



require __DIR__ . '/auth.php';
