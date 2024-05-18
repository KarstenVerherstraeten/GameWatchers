<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @vite(['resources/css/app.css', 'resources/js/app.js', 'resources/css/welcome.css'])

    <title>GameWatchers</title>
</head>
<body>
<img class="logo" src="{{ asset('images/Logo.png') }}" alt="">

<h1 class="title">Welcome to GameWatchers</h1>
<p>GameWatchers is a website that allows you to keep track of your favorite series or movies that are related to games</p>

@if(auth()->check())
    <!-- keeps users from leaving the auth space-->
    <script>window.location.href = "{{ route('trending') }}";</script>
@endif

<div class="accountWrapper">
    <div class="account">
        <div class="accountSection">
            <p>Log in to continue!</p>
            <a href="{{ route('login') }}" class="btn">Log In</a>
        </div>
        <div class="accountSection">
            <p>Sign up now to get started!</p>
            <a href="{{ route('register') }}" class="btn">Sign Up</a>
        </div>
    </div>
</div>
</body>
</html>
