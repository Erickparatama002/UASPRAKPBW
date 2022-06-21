<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class BarangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');
        for($i = 1; $i <= 10; $i++)
        DB::table('barang')->insert([
            'nama' => $faker -> numerify(),
            'harga' => $faker ->randomFloat(),
            'stok' => $faker -> randomNumber(5, false)
            ]);
    }
}
