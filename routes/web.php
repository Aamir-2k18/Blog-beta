<?php

/*
  |--------------------------------------------------------------------------
  | Web Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register web routes for your application. These
  | routes are loaded by the RouteServiceProvider within a group which
  | contains the "web" middleware group. Now create something great!
  |
 */

Route::get('/', 'PageController@index');
Route::get('/about', 'PageController@about');
Route::get('/contact', 'PageController@contact');
Route::get('/blog', 'PageController@blog');
Route::get('/category', 'PageController@category');
Route::get('/post', 'PageController@post');

Route::resource('/posts', 'PostController');

Route::get('/popular', 'PostController@popular');

Route::resource('/categories', 'CategoryController');

Route::resource('/tags', 'TagController');

Route::resource('/newsletter', 'NewsletterController');
Route::resource('/contactform', 'ContactController');
Route::resource('/comment', 'CommentController');

Route::resource('/search', 'SearchController');


//Route::resource('/sm', 'SocialMediaController');

//Route::resource('/comments', 'CommentController');