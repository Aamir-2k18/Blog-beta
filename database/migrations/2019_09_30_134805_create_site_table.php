<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSiteTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('site', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('about_section');
            $table->text('newsletter');
            $table->boolean('show_footer_bottom')->default(false);
            $table->string('copyright');
            $table->string('site_info');
            $table->text('address');
            $table->text('map');
            $table->string('email');
            $table->string('phone');
            $table->timestamp('inserted_at')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('updated_at')->default(DB::raw('CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP'));
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::dropIfExists('site');
    }

}
