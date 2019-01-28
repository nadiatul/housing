<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHousesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('houses', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->string('description');
            $table->string('propertyType');
            $table->string('titleType');
            $table->integer('bedroom');
            $table->integer('bathroom');
            $table->integer('landsize');
            $table->decimal('price',6,2);
            $table->integer('rentalDuration');
            $table->integer('houseQuality');
            $table->integer('rating');
            $table->integer('contractType');
            $table->integer('state');
            $table->integer('city');
            $table->integer('parking');
            $table->integer('createdBy');
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
        Schema::dropIfExists('houses');
    }
}
