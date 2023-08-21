<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Planner extends Model
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $primaryKey = 'plannerID';


    protected $fillable = [
        'plannerID',
        'name',
        'location',
        'dob',
        'password',
        'rate',
        'profileIMG',
        'image1',
        'image2',
        'image3',
        'contact',
        'email',
        'description'
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function services()
    {
        return $this->belongsToMany(Service::class, 'planner_services', 'plannerID', 'serviceID');
    }

    public function friends()
    {
        return $this->belongsToMany(Planner::class, 'friends', 'plannerID', 'friendPlannerID');
    }
}
