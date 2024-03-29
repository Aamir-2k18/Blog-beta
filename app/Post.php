<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model {

    use SoftDeletes;

    protected $fillable = ['title', 'type', 'images', 'body'];
    protected $dates = ['deleted_at'];

    public function comment() {
        return $this->hasMany(Comment::class);
    }

    public function category() {
        return $this->belongsToMany('App\Category','categories_posts','post_id', 'category_id');
//        return $this->belongsToMany(Category::class)->withPivot('post_id', 'category_id');
    }

    public function tag() {
        return $this->belongsToMany('App\Tag', 'posts_tags', 'post_id', 'tag_id');
//        return $this->belongsToMany(Tag::class)->withPivot('post_id', 'tag_id');
    }

}
