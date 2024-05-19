<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Related Games for') }} {{ $series->title }}
        </h2>
    </x-slot>

    <div id="games-container">
        @forelse($series->games as $game)
            <div class="game-box">
                <img src="{{ $game->image }}" alt="{{ $game->title }}">
                <h3>{{ $game->title }}</h3>
                <p>{{ $game->description }}</p>
                @if($game->url)
                    <a href="{{ $game->url }}" target="_blank">{{ __('buy game') }}</a>
                @endif
            </div>
        @empty
            <p>{{ __('No related games found.') }}</p>
        @endforelse
    </div>
</x-app-layout>
