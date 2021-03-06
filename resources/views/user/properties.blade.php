@extends('user/app')

{{--meta tags--}}
@section('meta')
    <title>{{ $seo->page_title }}</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1"/>
    <meta name="author" content="{{ $seo->author }}">
    <!-- description -->
    <meta name="title" content="{{ $seo->title }}">
    <meta name="description" content="{{ $seo->description }}">
    <!-- keywords -->
    <meta name="keywords" content="{{ $seo->keywords }}">
    <meta name="language" content="{{ $seo->language }}">
    <meta name="revisit-after" content="{{ $seo->revisit_after }}">
@endsection
{{--end meta tags--}}

@section('main-content')
    <!-- Inner Banner Start -->
    <div class="at-haslayout at-innerbannerholder" style="background: url({{ Storage::url($background->value) }})">
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="col-12 col-md-12">
                    <div class="at-innerbannercontent">
                        <div class="at-title"><h2>All Properties</h2></div>
                        <ol class="at-breadcrumb">
                            <li><a href="{{ url('/') }}">Home</a></li>
                            <li>Properties</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Home Slider End -->
    <!-- Recommended Section Start -->
    <section class="at-haslayout at-main-section at-sectionbg" id="at-haslayout" >
        <div class="container">
            <div class="row justify-content-center">
                <div class="at-category-gallery at-haslayout" id="featured-properties" style="margin-top:-80px;">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="at-tagsshare-holder" style="margin-bottom:40px;">
                            <ul class="at-widgettag">
                                <li><a href="{{ url('properties') }}" style="background-color:#018038;color: #fff;">All</a></li>
                                @foreach($locations as $location)
                                    <li><a href="{{ route('location',$location->slug) }}">{{ $location->name }}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    @foreach($properties as $featured)
                        <div class="col-sm-12 col-md-6 col-lg-6 float-left tr-trip-imgs bottom" style="margin-top:1.5px;margin-right: -28px;">
                            <figure>
                                <a href="{{ route('property',$featured->slug) }}">
                                    <img src="{{ Storage::url($featured->image) }}" alt="img description">
                                </a>
                                <figcaption>
                                    <div class="at-trip-content">
                                        <h3>{{ $featured->title }}</h3>
                                        <h4>{{ $featured->price }} <span>(Ksh)</span></h4>
                                    </div>
                                </figcaption>
                            </figure>
                        </div>
                    @endforeach
                    <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 float-left at-btnarea hidden-lg hidden-md">
                        {{ $properties->links('vendor.pagination.default') }}
                    </div>
                </div>
            </div>
        </div>
    </section>

    </div>
@endsection

