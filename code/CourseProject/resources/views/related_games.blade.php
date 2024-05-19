<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Related Games for') }} {{ $series->title }}
        </h2>
    </x-slot>

    <div id="games-container">
        @forelse($series->games as $game)
            <div class="game-box">
                <img src="{{ $game->image }}" alt="{{ $game->title }}" class="game-image">
                <h3 class="game-title">{{ $game->title }}</h3>
                <p class="game-description">{{ $game->description }}</p>
                @if($game->url)
                    <a href="{{ $game->url }}" target="_blank" class="game-link bg-blue-500">{{ __('Buy Game') }}</a>
                @endif
            </div>
        @empty
            <p class="no-games">{{ __('No related games found.') }}</p>
        @endforelse
    </div>

    <style>
        #games-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
            justify-content: center;
        }

        .game-box {
            background: #fff;
            margin: 10px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            width: 300px;
            box-sizing: border-box;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .game-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .game-image {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
        }

        .game-title {
            margin: 15px 0 10px;
            font-size: 1.25rem;
            color: #333;
        }

        .game-description {
            font-size: 1rem;
            color: #666;
            margin-bottom: 15px;
        }

        .game-link {
            display: inline-block;
            padding: 10px 15px;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .game-link:hover {
            background-color: #0056b3;
        }

        .no-games {
            font-size: 1.25rem;
            color: #666;
            text-align: center;
            width: 100%;
            margin-top: 20px;
        }
    </style>
</x-app-layout>
