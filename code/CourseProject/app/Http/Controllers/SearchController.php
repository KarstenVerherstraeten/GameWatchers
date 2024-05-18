<?php

namespace App\Http\Controllers;

use App\Models\Series;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function search(Request $request)
    {
        $query = $request->input('query');

        // Perform search logic using the query
        $results = series::where('title', 'like', '%' . $query . '%')->get();

        return view('searchResults', ['results' => $results]);
    }
}
