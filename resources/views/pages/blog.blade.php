@extends('base')
@section('page-title','Blog')
@section('content')
<!-- s-content
================================================== -->
<section class="s-content">

    <div class="row masonry-wrap">
        <div class="masonry">

            <div class="grid-sizer"></div>
            @foreach($posts as $post)
            <?php // dd($post->category) ?>
            <article class="masonry__brick entry format-standard" data-aos="fade-up">

                <div class="entry__thumb">
                    <a href="{{url('/posts/'.$post->slug)}}">
                        <img src="{{url('images/'.($post->image=='' || $post->image=='n/a'?'default.jpg':$post->image))}}" title="{{$post->title}}" alt="{{$post->title}}"/>
                    </a>
                </div>

                <div class="entry__text">
                    <div class="entry__header">

                        <div class="entry__date">
                            <a href="#">{{$post->created_at->format('j F, Y')}}</a>
                        </div>
                        <h1 class="entry__title">
                            <a href="{{url('/posts/'.$post->slug)}}">{{ucfirst($post->title)}}</a>
                        </h1>
                    </div>
                    <div class="entry__excerpt">
                        <p>
                            {{substr($post->body,0,90).'....'}}
                        </p>
                    </div>

                    @if($post->category->count() > 0)
                    <div class="entry__meta">
                        <span class="entry__meta-links">
                            @foreach ($post->category as $category)
                           <a href="{{url('/categories/'.strtolower($category->slug))}}">{{ucfirst($category->name)}}</a>
                            @endforeach                          
                        </span>
                    </div>
                    @endif
                </div>

            </article> <!-- end article -->
            @endforeach
        </div> <!-- end masonry -->
    </div> <!-- end masonry-wrap -->

    <div class="row">
        <div class="col-full">
            {!! $posts->links() !!}
        </div>
    </div>

</section> <!-- s-content -->
@endsection