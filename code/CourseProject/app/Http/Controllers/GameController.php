<?php

namespace App\Http\Controllers;

use App\Models\Series;
use Illuminate\Http\Request;

class GameController extends Controller
{
    public function showRelatedGames($id)
    {
        $series = Series::with('games')->findOrFail($id);
        return view('related_games', ['series' => $series]);
    }
}

