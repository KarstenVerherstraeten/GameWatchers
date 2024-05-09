<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('My List') }}
        </h2>
    </x-slot>


        @foreach($myList as $series)
        <div class="contentBox">
            <div class="series-item">
                <h3 class="title">{{ $series->title }}</h3>
                <p>{{ $series->description }}</p>

                <form action="{{ route('myList.removeFromMyList', $series) }}" method="post">
                    @csrf
                    @method('DELETE')
                    <button type="submit">Remove from MyList</button>
                <!-- Add any additional details you want to display -->
            </div>
        </div>
        @endforeach

</x-app-layout>
