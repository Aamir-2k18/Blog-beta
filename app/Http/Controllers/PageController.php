<?php

namespace App\Http\Controllers;

use App\Site;
use App\Page;
use App\Post;
use App\Category;
use App\Tag;
use App\SocialMedia;
use Illuminate\Http\Request;

//use App\Http\Controllers\MainController;

class PageController extends MainController {

    public function __construct() {
        parent::__construct();
    }

//
    public function index() {
//        dd($this->SocialMedia);
        $home1 = Post::where('type', '=', 'home1')->first();
        $home2 = Post::where('type', '=', 'home2')->first();
        $home3 = Post::where('type', '=', 'home3')->first();

        return view('pages.home')
                        ->with('home1', $home1)
                        ->with('home2', $home2)
                        ->with('home3', $home3)
                        ->with('posts', $this->posts)
                        ->with('categories', $this->categories)
                        ->with('tags', $this->tags)
                        ->with('SocialMedia', $this->SocialMedia)
                        ->with('popular', $this->popular)
                        ->with('nav', $this->nav)
                        ->with('siteInfo', $this->siteInfo);
    }

//
    public function category() {
        return view('pages.category');
    }

//
//    public function post() {
//        return view('pages.post');
//    }
    //
    public function blog() {
         $page = Page::where('slug', '=', 'blog')->first();
        return view('pages.blog')->with('page', $page)
                        ->with('posts', $this->posts)
                        ->with('categories', $this->categories)
                        ->with('tags', $this->tags)
                        ->with('SocialMedia', $this->SocialMedia)
                        ->with('popular', $this->popular)
                        ->with('nav', $this->nav)
                        ->with('siteInfo', $this->siteInfo);
    }

//
    public function about() {
        $page = Page::where('title', '=', 'about')->first();
        return view('pages.page')
                        ->with('page', $page)
                        ->with('posts', $this->posts)
                        ->with('categories', $this->categories)
                        ->with('tags', $this->tags)
                        ->with('SocialMedia', $this->SocialMedia)
                        ->with('popular', $this->popular)
                        ->with('nav', $this->nav)
                        ->with('siteInfo', $this->siteInfo);
    }

//
    public function contact() {
        $page = Page::where('title', '=', 'contact')->first();
        return view('pages.contact')
                        ->with('page', $page)
                        ->with('posts', $this->posts)
                        ->with('categories', $this->categories)
                        ->with('tags', $this->tags)
                        ->with('SocialMedia', $this->SocialMedia)
                        ->with('popular', $this->popular)
                        ->with('nav', $this->nav)
                        ->with('siteInfo', $this->siteInfo);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
//
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
//
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Page  $page
     * @return \Illuminate\Http\Response
     */
    public function show(Page $page) {
//
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Page  $page
     * @return \Illuminate\Http\Response
     */
    public function edit(Page $page) {
//
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Page  $page
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Page $page) {
//
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Page  $page
     * @return \Illuminate\Http\Response
     */
    public function destroy(Page $page) {
//
    }

}
