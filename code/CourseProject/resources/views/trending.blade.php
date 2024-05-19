<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Trending') }}
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

    <!-- Iframe for streaming -->
    <div id="streamingContainer" class="hidden" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; background-color: #000;">
        <iframe id="streamingIframe" width="100%" height="100%" frameborder="0" allowfullscreen></iframe>
        <button onclick="closeStreaming()" style="position: absolute; top: 10px; right: 10px; padding: 10px 20px; background-color: #ff0000; color: #fff; border: none; border-radius: 5px;">Close</button>
    </div>

    <script>
        function startStreaming(url) {
            document.getElementById('streamingIframe').src = url;
            document.getElementById('series-container').style.display = 'none';
            document.getElementById('streamingContainer').classList.remove('hidden');
        }

        function closeStreaming() {
            document.getElementById('streamingIframe').src = '';
            document.getElementById('streamingContainer').classList.add('hidden');
            document.getElementById('series-container').style.display = 'block';
        }
    </script>
</x-app-layout>
