@php
    $videoUrl = isset($_GET['videoUrl']) ? $_GET['videoUrl'] : '';
@endphp

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Watch') }}
        </h2>
    </x-slot>

    <div id="watch-container">
        <iframe width="100%" height="500px" src="{{ $videoUrl }}" frameborder="0" allowfullscreen></iframe>
        <a href="{{ route('trending') }}" class="back-button">Back to Trending</a>
    </div>
</x-app-layout>
