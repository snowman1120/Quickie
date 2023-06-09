<?php
/**
 * File name: 2020_03_25_094817_create_stores_payouts_table.php
 * Last modified: 2020.04.30 at 06:29:44
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateStoresPayoutsTable extends Migration
{

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stores_payouts', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('store_id')->unsigned();
            $table->string('method', 127)->nullable();
            $table->double('amount', 9, 2)->default(0);
            $table->dateTime('paid_date')->nullable();
            $table->text('note')->nullable();
            $table->timestamps();
            $table->foreign('store_id')->references('id')->on('stores')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('stores_payouts');
    }
}
