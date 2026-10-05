<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInstructionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('instructions', function (Blueprint $table) {
            $table->id();
            $table->text('kegiatan');
            $table->text('sub_kegiatan');
            $table->foreignId('category_id');
            $table->foreignId('rekening_id');
            $table->foreignId('account_id');
            $table->foreignId('transport_id');
            $table->string('t_berangkat');
            $table->foreignId('destination_id');
            $table->string('lama');
            $table->date('tgl_berangkat');
            $table->date('tgl_pulang');
            $table->text('ket');
            $table->string('terima');
            $table->text('sub_komponen');
            $table->string('terbilang');
            $table->string('jumlah')->nullable()->default(0);
            $table->string('hadir');
            $table->string('arahan');
            $table->string('masalah');
            $table->string('saran');
            $table->string('lain');
            $table->string('status')->nullable()->default(2);
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
        Schema::dropIfExists('instructions');
    }
}
