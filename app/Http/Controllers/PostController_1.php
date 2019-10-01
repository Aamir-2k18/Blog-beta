<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;

use App\Category;
use App\Comment;
use App\Tag;
use App\SocialMedia;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $title = str_replace('-', ' ', $slug);
        $post = Post::where(strtolower('title'), '=', strtolower($title))->firstOrFail();
//        dd($post->id);
        $previous = Post::where('id','<',$post->id)->orderBy('id','desc')->first();
        $next = Post::where('id','>',$post->id)->orderBy('id')->first();   
        
        $categories = Category::all();
        $tags = Tag::all();
        $SocialMedia = SocialMedia::all();
        
        return view('pages.post', compact('post','previous','next', 'categories', 'tags','SocialMedia'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        //
    }
}
