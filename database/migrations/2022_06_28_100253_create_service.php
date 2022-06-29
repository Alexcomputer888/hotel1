<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateService extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('service', function (Blueprint $table) {
            $table->id();
            $table->text('title_vi')->unique();
            $table->text('title_en');
            $table->text('title_ru');
            $table->text('title_kr');
            $table->text('title_cn');
            $table->text('title_jp');
            $table->text('content_vi');
            $table->text('content_en');
            $table->text('content_ru');
            $table->text('content_kr');
            $table->text('content_cn');
            $table->text('content_jp');
            $table->text('photo');
            $table->string('slug')->unique();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('service');
    }
}
