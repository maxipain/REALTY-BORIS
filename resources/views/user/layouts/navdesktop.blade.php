<header id="at-header" class="at-header at-headervtwo at-haslayout">
    <div class="at-navigationarea">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <strong class="at-logo"><a href="{{ url('/') }}"><img src="{{ Storage::url($logo_desktop->value) }}" alt="company logo here"></a></strong>
                    <div class="at-rightarea">
                        <nav id="at-nav" class="at-nav navbar-expand-lg">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                <i class="lnr lnr-menu"></i>
                            </button>
                            <div class="collapse navbar-collapse at-navigation" id="navbarNav">
                                <ul class="navbar-nav">

                                    <li class="nav-item">
                                        <a href="{{ url('/') }}">Home</a>
                                        <span class="divider"></span>
                                    </li>

                                    <li class="nav-item">
                                        <a href="{{ url('about-us') }}">About</a>
                                        <span class="divider"></span>
                                    </li>
                                    <li class="nav-item">
                                        <a href="{{ url('properties') }}">Properties</a>
                                        <span class="divider"></span>
                                    </li>
                                    <li class="nav-item">
                                        <a href="{{ url('blog') }}">Blog</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="{{ url('contact-us') }}">Contact us</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                        <div class="at-loginarea float-right">
                            <div class="at-detailsbtn-topbar">
                                <a href="{{ url('contact-us') }}" class="at-btn at-btnactive">List with us</a>
                                <a href="{{ url('properties') }}" class="at-btn at-btnactive at-btntwo">Our properties</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
