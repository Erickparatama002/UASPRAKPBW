<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mobil extends Model
{
    protected $table = 'mobil';
    protected $fillable = ['nama','tahun','warna','jenis','mesin/cc','km','plat_daerah','Kondisi','harga','foto','spk'];
}
