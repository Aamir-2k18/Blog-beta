<!-- s-extra
      ================================================== -->
<section class="s-extra">

    <div class="row top">

        <div class="col-eight md-six tab-full popular">
            <h3>Popular Posts</h3>
            <?php // echo $myNumber;?>
            <?php // dd($popular);?>
            <div class="block-1-2 block-m-full popular__posts">
                @foreach($popular as $pop)
                <?php // dd($pop);?>
                <article class="col-block popular__post">
                    <a href="{{url('/posts/'.$pop->slug)}}" class="popular__thumb">
                        <img src="{{url('images/'.($pop->image=='' || $pop->image=='n/a'?'default.jpg':$pop->image))}}" title="{{$pop->title}}" alt="{{$pop->title}}"/>                        
                    </a>
                    <h5><a href="{{url('/posts/'.$pop->slug)}}">{{$pop->title}}</a></h5>
                    <section class="popular__meta">
                        <span class="popular__author"><span>By</span> <a href="#Author-link"> John Doe</a></span>
                        <span class="popular__date"><span>on</span> <time datetime="{{$pop->created_at->format('j F, Y')}}">{{$pop->created_at->format('j F, Y')}}</time></span>
                    </section>
                </article>
                @endforeach
            </div> <!-- end popular_posts -->

        </div> <!-- end popular -->

        <div class="col-four md-six tab-full about">
            <h3>About Us</h3>

            <p>
                {{ucfirst($siteInfo->about_section)}}
            </p>

            <ul class="about__social">
                @foreach($SocialMedia as $sm)
                <li>
                    <a href="{{$sm->url}}" title="{{$sm->name}}"><i class="fa {{$sm->icon}}" aria-hidden="true"></i></a>
                </li>
                @endforeach
                <!--                <li>
                                    <a href="#0"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                </li>-->
                <!--                <li>
                                    <a href="#0"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                </li>
                                <li>
                                    <a href="#0"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                                </li>
                                <li>
                                    <a href="#0"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                </li>-->
            </ul> <!-- end header__social -->
        </div> <!-- end about -->

    </div> <!-- end row -->

    <div class="row bottom tags-wrap">
        <div class="col-full tags">
            <h3>Tags</h3>
            <div class="tagcloud">
                @foreach($tags as $tag)
                    <a href="{{url('/tags/'.strtolower($tag->slug))}}">{{ucfirst($tag->name)}}</a>
                @endforeach
            </div> <!-- end tagcloud -->
        </div> <!-- end tags -->
    </div> <!-- end tags-wrap -->

</section> <!-- end s-extra -->