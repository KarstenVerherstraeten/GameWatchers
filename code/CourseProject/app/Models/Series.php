<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Series extends Model
{
    use HasFactory;

    protected $table = 'series';

    protected $fillable = [
        'title',
        'description',
        'reladedGames',
        'is_movie',
        'image',
        'video'
    ];

    public function users()
    {
        return $this->belongsToMany(User::class, 'user_series')->withTimestamps();
    }

    public function games()
    {
        return $this->belongsToMany(Game::class, 'series_game');
    }

}
