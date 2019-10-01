<?php

namespace App\Http\Controllers;

use App\Site;
use App\Page;
use App\Post;
use App\Category;
use App\Tag;
use App\SocialMedia;
use Illuminate\Http\Request;

class MainController extends Controller {

    public function __construct() {
        $this->posts = Post::latest()->paginate(8);
        $this->categories = Category::all();
        $this->tags = Tag::all();
        $this->SocialMedia = SocialMedia::all();
        $this->popular = Post::latest()->limit(6)->get();
        $this->nav = Page::select('title', 'slug')->get();
        $this->siteInfo = Site::all()->first();
    }

//    public function search(Request $request) {
//        dd($request->q);
//    }

}
