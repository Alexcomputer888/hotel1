<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableRoomTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('room', function (Blueprint $table) {
            $table->id();
            $table->text('title')->unique();;
            $table->text('detail_vi');
            $table->text('detail_en');
            $table->text('detail_ru');
            $table->text('detail_kr');
            $table->text('detail_cn');
            $table->text('detail_jp');
            $table->text('content_vi');
            $table->text('content_en');
            $table->text('content_ru');
            $table->text('content_kr');
            $table->text('content_cn');
            $table->text('content_jp');
            $table->text('photo');
            $table->text('slug');
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
        Schema::dropIfExists('room');
    }
}
