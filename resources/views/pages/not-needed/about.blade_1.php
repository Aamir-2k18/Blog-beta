@extends('base')
@section('page-title','About')
@section('content')
<section class="s-content s-content--narrow">

    <div class="row">

        <div class="s-content__header col-full">
            <h1 class="s-content__header-title">
                Learn More About Us.
            </h1>
        </div> <!-- end s-content__header -->

        <div class="s-content__media col-full">
            <div class="s-content__post-thumb">
<!--                <img src="{{$page->image}}" 
                     srcset="" 
                     sizes="(max-width: 2000px) 100vw, 2000px" alt="" >-->
            </div>
        </div> <!-- end s-content__media -->

        <div class="col-full s-content__main">

            {{$page->body}}


        </div> <!-- end s-content__main -->

    </div> <!-- end row -->

</section> <!-- s-content -->
@endsection