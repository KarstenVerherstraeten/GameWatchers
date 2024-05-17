<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Results') }}
        </h2>
    </x-slot>

    @foreach ($results as $result)
        <x-series-box
            :image="$result->image"
            :title="$result->title"
            :description="$result->description"
            :seriesId="$result->id"
            :inMyList="$result->users->contains(auth()->user())"
            :streamUrl="$result->video"
        />
    @endforeach
</x-app-layout>
