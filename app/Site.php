<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Site extends Model
{
   protected $table = 'site';
   protected $fillable = ['about_section','newsletter','show_footer_bottom','copyright','site_info'];
}
