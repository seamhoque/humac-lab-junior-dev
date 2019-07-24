<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVariantProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('variant__products', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('v_product_name');
            $table->string('v_product_color');
            $table->string('v_product_size');
            $table->string('v_product_craft');
            $table->string('v_product_type');
            $table->string('v_product_proce');
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
        Schema::dropIfExists('variant__products');
    }
}
