<!--- basic page needs
    ================================================== -->
<meta charset="utf-8">
<title>@yield('page-title') | {{config('app.name')}}</title>
<meta name="description" content="@yield('page-title') | {{config('app.name')}}">
<meta name="author" content="Aamir">

<!-- mobile specific metas
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS
================================================== -->
<link rel="stylesheet" href="{{url('/css/base.css')}}">
<link rel="stylesheet" href="{{url('/css/vendor.css')}}">
<link rel="stylesheet" href="{{url('/css/main.css')}}">
<link rel="stylesheet" href="{{url('/css/style.css')}}">

<!-- script
================================================== -->
<script src="{{url('/js/modernizr.js')}}"></script>
<script src="{{url('/js/pace.min.js')}}"></script>

<!-- favicons
================================================== -->
<link rel="shortcut icon" href="{{url('/favicon.ico')}}" type="image/x-icon">
<link rel="icon" href="{{url('/favicon.ico')}}" type="image/x-icon">
<style>
 .search-field {    color: #FFF !important;}
 p{text-align: justify;}
</style>