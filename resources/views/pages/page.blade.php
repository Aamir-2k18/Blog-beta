@extends('base')
@section('page-title')  {{$page->title}} @endsection
@section('content')
<?php // dd($page);?>
<section class="s-content s-content--narrow">

    <div class="row">

        <div class="s-content__header col-full">
            <h1 class="s-content__header-title">
                {{$page->title}} {{($page->title == 'About' || $page->title == 'Contact')?' Us':''}}
            </h1>
        </div> <!-- end s-content__header -->

        <div class="s-content__media col-full">
            <div class="s-content__post-thumb">
                {{$page->image}}
            </div>
        </div> <!-- end s-content__media -->

        <div class="col-full s-content__main">

             {!! $page->body !!}

        </div> <!-- end s-content__main -->

    </div> <!-- end row -->

</section> <!-- s-content -->
    
@endsection