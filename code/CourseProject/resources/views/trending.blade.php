<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Trending') }}
        </h2>
    </x-slot>

    <head>
        <link rel="stylesheet" href="{{ ('/to/welcome.css') }}">
    </head>

    <div class="contentBox">
        <p class="title">movieTitle</p>
        <p>Watch</p>
        <button>Add to MyList</button>
        <button>View Related games</button>

        <div class="gameList">

        </div>
    </div>
</x-app-layout>
