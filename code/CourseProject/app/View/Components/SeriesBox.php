<?php

namespace App\View\Components;

use Illuminate\View\Component;

class SeriesBox extends Component
{
    public $image;
    public $title;
    public $description;
    public $seriesId;
    public $inMyList;
    public $streamUrl;

    public function __construct($image, $title, $description, $seriesId, $inMyList, $streamUrl)
    {
        $this->image = $image;
        $this->title = $title;
        $this->description = $description;
        $this->seriesId = $seriesId;
        $this->inMyList = $inMyList;
        $this->streamUrl = $streamUrl;
    }

    public function render()
    {
        return view('components.series-box');
    }
}
