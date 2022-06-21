<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class MobilSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');
        for($i = 1; $i <= 20; $i++)
        DB::table('mobil')->insert([
            'nama' => $faker -> nama(),
            'tahun' => $faker ->tahun(),
            'warna' => $faker ->warna(),
            'jenis' => $faker ->jenis(),
            'mesin/cc' => $faker ->mesincc(),
            'km' => $faker ->km(),
            'plat_daerah' => $faker ->plat(),
            'Kondisi' => $faker ->kondisi(),
            'harga' => $faker ->harga()
            ]);
    }
}
