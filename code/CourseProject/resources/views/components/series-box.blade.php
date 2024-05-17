<div class="contentBox">
    <img src="{{ $image }}" alt="{{ $title }} banner" class="banner">
    <p class="title">{{ $title }}</p>
    <p>{{ $description }}</p>

    <div class="buttons">
        <form action="{{ route('myList.addToMyList', $seriesId) }}" method="post">
            @csrf
            @if(!$inMyList)
                <button type="submit">Add to MyList</button>
            @else
                <button type="button" disabled>Already in <a href="{{ route('myList') }}">MyList</a></button>
            @endif
        </form>
        <button onclick="startStreaming('{{ $streamUrl }}')">Watch</button>
        <button>View Related games</button>
    </div>

    <div class="gameList"></div>
</div>


<!-- helped by ChatGPT for the Iframe-->
<!-- Iframe for streaming -->
<div id="streamingContainer" class="hidden">
    <iframe id="streamingIframe" width="100%" height="500px" frameborder="0" allowfullscreen></iframe>
    <button onclick="closeStreaming()">Close</button>
</div>

<script>
    function startStreaming(url) {
        document.getElementById('streamingIframe').src = url;
        document.getElementById('streamingContainer').classList.remove('hidden');
    }

    function closeStreaming() {
        document.getElementById('streamingIframe').src = '';
        document.getElementById('streamingContainer').classList.add('hidden');
    }
</script>
