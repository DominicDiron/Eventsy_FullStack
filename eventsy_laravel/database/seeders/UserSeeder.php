<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use DB;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

        $user1 = User::create([
        'name'=>'aji',
        'location'=>'badulla',
        'dob'=>'1999-03-22',
        'password'=>Hash::make('12345'),
        'profileIMG'=>'https://picsum.photos/250?image=29',
        'contact'=>'+9477896078',
        'email'=>'aji@gmail.com',

        ]);

        $user2 = User::create([
            'name'=>'user2',
            'location'=>'Hatton',
            'dob'=>'1999-11-01',
            'password'=>Hash::make('12345'),
            'profileIMG'=>'https://picsum.photos/250?image=25',
            'contact'=>'+94750248108',
            'email'=>'user2@gmail.com',
            ]);

        $user3 = User::create([
                'name'=>'user3',
                'location'=>'Colombo',
                'dob'=>'2005-02-15',
                'password'=>Hash::make('12345'),
                'profileIMG'=>'https://picsum.photos/250?image=10',
                'contact'=>'+94773915572',
                'email'=>'user3@gmail.com',
                ]);
    }
}
