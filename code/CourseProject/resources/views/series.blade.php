<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Series') }}
        </h2>
    </x-slot>

    <div id="series-container">
        @foreach($series as $seriesDetails)
            <x-series-box
                :image="$seriesDetails->image"
                :title="$seriesDetails->title"
                :description="$seriesDetails->description"
                :relatedGames="$seriesDetails->relatedGames"
                :seriesId="$seriesDetails->id"
                :inMyList="$seriesDetails->users->contains(auth()->user())"
                :streamUrl="$seriesDetails->video"
            />
        @endforeach
    </div>


</x-app-layout>
