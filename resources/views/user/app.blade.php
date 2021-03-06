<!doctype html>
<html class="no-js" lang="en">
<head>
    @include('user/layouts/head')

</head>
<body class="at-home" style="font-family: Work Sans;
            font-size: 15px;
            font-weight: 300;
            line-height: 1.5em;
            text-align: left;
            text-transform: none;">
<div class="sticky-container">
    <ul class="sticky">
        <li>
            <p><a href="{{ $facebook->value }}" target="_blank"><img src="{{ asset('facebook-circle.png')}}" width="32" height="32"></a></p>
        </li>
        <li>

            <p><a href="{{ $twitter->value }}" target="_blank"><img src="{{ asset('twitter-circle.png')}}" width="32" height="32"></a></p>
        </li>
        <li>

            <p><a href="{{ $youtube->value }}" target="_blank"><img src="{{ asset('youtube-circle.png') }}" width="32" height="32"></a></p>
        </li>
        <li>

            <p><a href="{{ $instagram->value }}" target="_blank"><img src="{{ asset('instagram-circle.png') }}" width="32" height="32"></a></p>
        </li>
        <li>

            <p><a href="https://wa.me/{{ $whatsapp->value }}" target="_blank"><img src="{{ asset('whatsapp-circle.png') }}" width="32" height="32"></a></p>
        </li>

    </ul>
</div>
<!-- Preloader Start -->
<div class="preloader-outer">
    <div class="at-preloader-holder">
        <img src="{{ asset('user/images/loader.png')}}" alt="laoder img">
        <div class="at-loader"></div>
    </div>
</div>
<!-- Preloader End -->
<!-- Wrapper Start -->
<div id="at-wrapper" class="at-wrapper at-haslayout">
@section('facebook-comments')
@show
<!-- start header -->
{{--@if((Request::path() == '/'))--}}
{{--    @include('user/layouts/navhome')--}}
{{--@else--}}
{{--    @include('user/layouts/navhome')--}}
{{--@endif--}}
<!-- end header -->
{{--    @include('user.layouts.navdesktop')--}}
@if($agent->isMobile())
    @include('user.layouts.navmobile')
@else
    @include('user.layouts.navdesktop')
@endif

@section('main-content')
@show


<!-- start footer -->
@include('user/layouts/footer')
</body>
</html>
