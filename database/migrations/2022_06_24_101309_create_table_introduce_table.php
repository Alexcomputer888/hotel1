<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableIntroduceTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('introduce', function (Blueprint $table) {
            $table->id();
            $table->text('title')->unique();
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
        Schema::dropIfExists('introduce');
    }
}
