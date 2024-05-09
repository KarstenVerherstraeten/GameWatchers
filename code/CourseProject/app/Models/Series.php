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
    ];

    public function users()
    {
        return $this->belongsToMany(User::class, 'user_series')->withTimestamps();
    }

}
