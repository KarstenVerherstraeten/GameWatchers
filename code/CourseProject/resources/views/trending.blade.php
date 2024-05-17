<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Trending') }}
        </h2>
    </x-slot>



    @foreach($series as $seriesDetails)
        <x-series-box
            :image="$seriesDetails->image"
            :title="$seriesDetails->title"
            :description="$seriesDetails->description"
            :seriesId="$seriesDetails->id"
            :inMyList="$seriesDetails->users->contains(auth()->user())"
            :streamUrl="$seriesDetails->video"
        />
    @endforeach
</x-app-layout>
