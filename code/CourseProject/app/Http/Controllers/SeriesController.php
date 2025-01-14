<?php
namespace App\Http\Controllers;

use App\Models\Series;
use Illuminate\Http\Request;

class SeriesController extends Controller
{
    public function index()
    {
        $series = Series::all(); // Fetch all series from the database
        return view('trending', ['series' => $series]);
    }

    public function showSerie(){
        $movies = Series::where('is_movie', true)->get();
        // Pass the movies to the view
        return view('movies', ['movies' => $movies]);
    }

    public function watch($seriesId)
    {
        $series = Series::findOrFail($seriesId);
        return view('watch', ['series' => $series]);
    }



    public function showSeries(){
        $series = Series::where('is_movie', false)->get();
        // Pass the series to the view
        return view('series', ['series' => $series]);
    }

    public function myList()
    {
        // Retrieve the authenticated user
        $user = auth()->user();

        // Retrieve the user's MyList of series
        $myList = $user->series;

        // Return the My List view with the user's MyList of series
        return view('myList', ['myList' => $myList]);
    }


    public function addToMyList(Series $series)
    {
        // Add the series to the authenticated user's MyList
        auth()->user()->series()->attach($series);

        return redirect()->back()->with('success', 'Series added to MyList successfully.');
    }

    public function removeFromMyList(Series $series)
    {
        // Remove the series from the authenticated user's MyList
        auth()->user()->series()->detach($series);

        return redirect()->back()->with('success', 'Series removed from MyList successfully.');
    }

}

