<header class="header">
    <div class="header__content row">
        <div class="header__logo">
            <a class="logo" href="{{url('/')}}">
                <img src="{{url('/images/logo')}}" alt="{{config('app.name')}}">
            </a>
        </div> <!-- end header__logo -->

        <ul class="header__social">
            @foreach($SocialMedia as $sm)
            <li>
                <a href="{{$sm->url}}" title="{{$sm->name}}"><i class="fa {{$sm->icon}}" aria-hidden="true"></i></a>
            </li>
            @endforeach
        </ul> <!-- end header__social -->

        <a class="header__search-trigger" href="#0"></a>

        <div class="header__search">

 <form role="search" method="get" class="header__search-form" action="{{url('/search')}}">
    <label>
        <span class="hide-content">Search for:</span>
        <input type="search" class="search-field" placeholder="Type Keywords" value="" name="q" title="Search for:">
    </label>
    <input type="submit" class="search-submit" value="Search">
</form>

            <a href="#0" title="Close Search" class="header__overlay-close">Close</a>

        </div>  <!-- end header__search -->


        <a class="header__toggle-menu" href="#0" title="Menu"><sp                                                                an>Menu</span></a>

        <nav class="header__nav-wrap">

            <h2 class="header__nav-heading h6">Site Navigation</h2>

            <ul class="header__nav">
                @foreach($nav as $link)
                <li><a href="{{strtolower(url($link->slug))}}" title="{{ucfirst($link->title)}}">{{ucfirst($link->title)}}</a></li>
                @endforeach
                <li class="has-children">
                    <a href="#0" title="">Categories</a>
                    <ul class="sub-menu">
                        @foreach($categories as $category)
                        <li><a href="{{strtolower(url('/categories/'.$category->slug))}}">{{ucfirst($category->name)}}</a></li>
                        @endforeach
                    </ul>
                </li>

            </ul> <!-- end header__nav -->
            <a href="#0" title="Close Menu" class="header__overlay-close close-mobile-menu">Close</a>
        </nav> <!-- end header__nav-wrap -->
    </div> <!-- header-content -->
</header> <!-- header -->