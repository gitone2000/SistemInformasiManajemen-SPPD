<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Admin',
            'email' => 'admin@gmail.com',
            'password' => Hash::make('admin'),
        ]);

        DB::table('users')->insert([
            'name' => 'Gondosari',
            'email' => 'gondosari@gmail.com',
            'password' => Hash::make('gondosari'),
        ]);

        DB::table('charges')->insert([
            'name' => 'Uang Harian',
        ]);

        DB::table('charges')->insert([
            'name' => 'Uang Makan',
        ]);

        DB::table('destinations')->insert([
            'name' => 'Pacitan',
        ]);

        DB::table('accounts')->insert([
            'name' => 'Umum',
        ]);

        DB::table('categories')->insert([
            'name' => 'Perjalanan Dibawah 8 Jam',
        ]);

        DB::table('transports')->insert([
            'name' => 'Kendaraan Umum',
        ]);

        DB::table('transports')->insert([
            'name' => 'Kendaraan Dinas',
        ]);


        DB::table('employes')->insert([
            'name' => 'dr. JOHAN TRI PUTRANTO',
            'nip' => '19800609 200903 1 002',
            'pangkat' => 'Pembina',
            'gol' => '(IV/b)',
            'jabatan' => 'Kepala Puskesmas Gondosari',
            'uharian' => '60000',
            'umakan' => '90000',
            'utransport' => '0'
        ]);

        DB::table('employes')->insert([
            'name' => 'TRI UTAMI, A.Md.Keb',
            'nip' => '19790305 200501 2 018',
            'pangkat' => 'Penata',
            'gol' => '(III/c)',
            'jabatan' => 'Bidan',
            'uharian' => '60000',
            'umakan' => '90000',
            'utransport' => '0'
        ]);

        DB::table('employes')->insert([
            'name' => 'AMBAR PRATIWI,A.Md.Kep',
            'nip' => '19930527 202203 2 005',
            'pangkat' => 'Pengatur',
            'gol' => '(II/c)',
            'jabatan' => 'Perawat',
            'uharian' => '60000',
            'umakan' => '90000',
            'utransport' => '0'
        ]);
    }
}
