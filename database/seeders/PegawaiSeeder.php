<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class PegawaiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // DB::table('pegawai')->insert([
        //     'pegawai_nama'=>'Johny',
        //     'pegawai_jabatan'=>'Black Ops',
        //     'pegawai_umur'=>33,
        //     'pegawai_alamat'=>'Jl. Wak Goreng no. 22',
        // ]);
        $faker = Faker::create('id_ID');
        for($i = 1; $i <= 10; $i++){
 
            // insert data ke table pegawai menggunakan Faker
          DB::table('pegawai')->insert([
              'pegawai_nama' => $faker->name,
              'pegawai_jabatan' => $faker->jobTitle,
              'pegawai_umur' => $faker->numberBetween(25,40),
              'pegawai_alamat' => $faker->address
          ]);

      }
    }
}
