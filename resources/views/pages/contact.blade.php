@extends('base')
@section('page-title','Contact')
@section('content')
<!-- s-content
    ================================================== -->
<section class="s-content s-content--narrow">

    <div class="row">

        <div class="s-content__header col-full">
            <h1 class="s-content__header-title">
                Feel Free To Contact Us.
            </h1>
        </div> <!-- end s-content__header -->

        <div class="s-content__media col-full">
            <div id="map-wrap">
                {!! $siteInfo->map !!}
            </div> 
        </div> <!-- end s-content__media -->

        <div class="col-full s-content__main">


            {!! $page->body !!}
            <div class="row">
                <div class="col-six tab-full">
                    <h3>Where to Find Us</h3>

                    <p>
                        {!! $siteInfo->address !!}

                    </p>

                </div>

                <div class="col-six tab-full">
                    <h3>Contact Info</h3>

                    <p>  {!! $siteInfo->email !!} <br>
                        {{$siteInfo->phone}}
                    </p>

                </div>
            </div> <!-- end row -->

            <h3>Say Hello.</h3>

            <form name="cForm" id="cForm" method="post" action="{{url('/contactform')}}">
                <fieldset>
                    @csrf
                    @if($message = Session::get('success'))
                    <div class="alert-box alert-box--success hideit">{{$message}} <i class="fa fa-times alert-box__close"></i></div> 
                    @endif 
                    <div class="form-field">
                        <input name="name" type="text" id="name" class="full-width" placeholder="Your Name" value="{{old('name')}}">
                        @if($errors->has('name'))<div class="alert-box alert-box--error hideit"> {{$errors->first('name')}} <i class="fa fa-times alert-box__close"></i></div>@endif
                    </div>

                    <div class="form-field">
                        <input name="email" type="text" id="email" class="full-width" placeholder="Your Email" value="{{old('email')}}">
                      @if($errors->has('email'))  <div class="alert-box alert-box--error hideit">{{$errors->first('email')}} <i class="fa fa-times alert-box__close"></i></div>@endif
                    </div>

                    <div class="form-field">
                        <!--<input name="cWebsite" type="text" id="cWebsite" class="full-width" placeholder="Website"  value="">-->
                    </div>

                    <div class="message form-field">
                        <textarea name="message" id="message" class="full-width" placeholder="Your Message" >{{old('message')}}</textarea>
                       @if($errors->has('message')) <div class="alert-box alert-box--error hideit">{{$errors->first('message')}} <i class="fa fa-times alert-box__close"></i></div>@endif
                    </div>

                    <button type="submit" class="submit btn btn--primary full-width">Submit</button>

                </fieldset>
            </form> <!-- end form -->


        </div> <!-- end s-content__main -->

    </div> <!-- end row -->

</section> <!-- s-content -->
@endsection