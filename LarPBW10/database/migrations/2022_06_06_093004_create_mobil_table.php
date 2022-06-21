<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMobilTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mobil', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nama',30);
            $table->integer('tahun');
            $table->string('warna',30);
            $table->string('jenis',30);
            $table->integer('mesin/cc');
            $table->integer('km');
            $table->string('plat_daerah',30);
            $table->string('Kondisi',30);
            $table->integer('harga');
            $table->string('foto');
            $table->integer('spk');
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
        Schema::dropIfExists('mobil');
    }
}
