<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
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

        DB::table('Planners')->insert(['name' => 'Jashmina','email' => 'jashmina@example.com','about'=> 'adsdawd','rate'=> 5,'followers'=> 45,]);
        DB::table('Planners')->insert(['name' => 'Dominic','email' => 'Dominic@example.com','about'=> 'abasdascd','rate'=> 3,'followers'=> 35,]);
        DB::table('Planners')->insert(['name' => 'Diron','email' => 'Diron@example.com','about'=> 'abcdsas','rate'=> 5,'followers'=> 53,]);
        DB::table('Planners')->insert(['name' => 'Derin','email' => 'Derin@example.com','about'=> 'absfascd','rate'=> 4,'followers'=> 42,]);
        DB::table('Planners')->insert(['name' => 'Jash','email' => 'Jash@example.com','about'=> 'abcsdfad','rate'=> 2,'followers'=> 242,]);
        DB::table('Planners')->insert(['name' => 'Pavi','email' => 'Pavi@example.com','about'=> 'aasfabcd','rate'=> 1,'followers'=> 424,]);
        DB::table('Planners')->insert(['name' => 'Prakash','email' => 'Prakash@example.com','about'=> 'abcasfd','rate'=> 5,'followers'=> 72,]);
        DB::table('Planners')->insert(['name' => 'Person-1','email' => 'Person_1@example.com','about'=> 'aefqbcd','rate'=> 4,'followers'=> 3453,]);
        DB::table('Planners')->insert(['name' => 'person-2','email' => 'person_2@example.com','about'=> 'abfsccd','rate'=> 2,'followers'=> 54,]);
        DB::table('Planners')->insert(['name' => 'person-3','email' => 'person_3@example.com','about'=> 'abrgwrcd','rate'=> 0,'followers'=> 435,]);
        DB::table('Planners')->insert(['name' => 'Vijay','email' => 'Vijay@example.com','about'=> 'ab36cd','rate'=> 5,'followers'=> 43,]);
        DB::table('Planners')->insert(['name' => 'Ajith','email' => 'Ajith@example.com','about'=> 'ab863.cd','rate'=> 4,'followers'=> 215,]);
        DB::table('Planners')->insert(['name' => 'Atharva','email' => 'Atharva@example.com','about'=> 'abescd','rate'=> 3,'followers'=> 51,]);
        DB::table('Planners')->insert(['name' => 'Vishal','email' => 'Vishal@example.com','about'=> 'aq3fc bcd','rate'=> 2,'followers'=> 0255,]);

    }
}
