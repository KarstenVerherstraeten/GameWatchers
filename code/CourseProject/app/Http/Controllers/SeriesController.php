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
}

