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
                <button type="button" disabled><a href="{{ route('myList') }}">Already in MyList</a></button>
            @endif
        </form>
        <button onclick="startStreaming('{{ $streamUrl }}')">Watch</button>
        <button onclick="viewRelatedGames('{{ route('series.games', $seriesId) }}')">View Related Games</button>
    </div>

    <div class="gameList"></div>
</div>


<script>
    function viewRelatedGames(url) {
        window.location.href = url;
    }
</script>
