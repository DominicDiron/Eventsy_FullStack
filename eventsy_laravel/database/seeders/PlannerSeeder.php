<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Planner;
use Illuminate\Support\Facades\Hash;
use DB;

class PlannerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

        $planner1 = Planner::create([
        'name'=>'Dominic Diron',
        'location'=>'Hatton',
        'dob'=>'1999-11-01',
        'password'=>Hash::make('12345'),
        'rate'=>5,
        'profileIMG'=>'https://picsum.photos/250?image=29',
        'image1'=>'https://picsum.photos/250?image=20',
        'image2'=>'https://picsum.photos/250?image=21',
        'image3'=>'https://picsum.photos/250?image=22',
        'image4'=>'https://picsum.photos/250?image=40',
        'image5'=>'https://picsum.photos/250?image=41',
        'contact'=>'+9477896078',
        'email'=>'diron@gmail.com',
        'description'=>'2019/CSC/007',
        'services' => 'Event booking,Event planning,Birthday decorations',
        ]);

        $planner2 = Planner::create([
            'name'=>'Niroshan',
            'location'=>'Colombo',
            'dob'=>'1999-05-04',
            'password'=>Hash::make('12345'),
            'rate'=>3,
            'profileIMG'=>'https://picsum.photos/250?image=25',
            'image1'=>'https://picsum.photos/250?image=23',
            'image2'=>'https://picsum.photos/250?image=24',
            'image3'=>'https://picsum.photos/250?image=26',
            'image4'=>'https://picsum.photos/250?image=27',
            'image5'=>'https://picsum.photos/250?image=28',
            'contact'=>'+94778819120',
            'email'=>'niro@gmail.com',
            'description'=>'2019/CSC/008',
            'services' => 'Hall booking,Event planning,Hall decorations',
            ]);

            $planner3 = Planner::create([
                'name'=>'Rashmika',
                'location'=>'Kandy',
                'dob'=>'2005-02-15',
                'password'=>Hash::make('12345'),
                'rate'=>4,
                'profileIMG'=>'https://picsum.photos/250?image=1',
                'image1'=>'https://picsum.photos/250?image=2',
                'image2'=>'https://picsum.photos/250?image=3',
                'image3'=>'https://picsum.photos/250?image=4',
                'image4'=>'https://picsum.photos/250?image=5',
                'image5'=>'https://picsum.photos/250?image=6',
                'contact'=>'+94766573972',
                'email'=>'rash@gmail.com',
                'description'=>'2019/CSC/009',
                'services' => 'Transport,Venue booking',
                ]);
                
                $planner4 = Planner::create([
                    'name'=>'Senal',
                    'location'=>'Anuradhapura',
                    'dob'=>'1999-05-04',
                    'password'=>Hash::make('12345'),
                    'rate'=>3,
                    'profileIMG'=>'https://picsum.photos/250?image=25',
                    'image1'=>'https://picsum.photos/250?image=23',
                    'image2'=>'https://picsum.photos/250?image=24',
                    'image3'=>'https://picsum.photos/250?image=26',
                    'image4'=>'https://picsum.photos/250?image=27',
                    'image5'=>'https://picsum.photos/250?image=28',
                    'contact'=>'+94752484352',
                    'email'=>'senal@gmail.com',
                    'description'=>'2019/CSC/010',
                    'services' => 'Hall booking,Event planning,Hall decorations',
                    ]);
                    
            $planner5 = Planner::create([
                    'name'=>'Athithan',
                    'location'=>'Jaffna',
                    'dob'=>'1999-11-10',
                    'password'=>Hash::make('12345'),
                    'rate'=>3,
                    'profileIMG'=>'https://picsum.photos/250?image=25',
                    'image1'=>'https://picsum.photos/250?image=23',
                    'image2'=>'https://picsum.photos/250?image=24',
                    'image3'=>'https://picsum.photos/250?image=26',
                    'image4'=>'https://picsum.photos/250?image=27',
                    'image5'=>'https://picsum.photos/250?image=28',
                    'contact'=>'+94762600410',
                    'email'=>'athi@gmail.com',
                    'description'=>'2019/CSC/006',
                    'services' => 'Hall booking,Event planning,Hall decorations',
                    ]);
            
        //$planner1->friends()->attach($planner2);
        //$planner2->friends()->attach($planner1);

    }
}
