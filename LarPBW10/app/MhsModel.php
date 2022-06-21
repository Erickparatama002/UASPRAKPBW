<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MhsModel extends Model
{
    protected $table = 'mahasiswa';

    protected $fillable = [
        'nim','nama','gender','jurusan','bidangminat'
    ];
}
