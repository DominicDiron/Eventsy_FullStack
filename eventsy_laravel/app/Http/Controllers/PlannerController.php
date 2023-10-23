<?php

namespace App\Http\Controllers;

use App\Models\Planner;
use App\Models\Service;
use Illuminate\Http\Request;
use DB;

class PlannerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $data = Planner::with('friends')->get();
        return $data;
    }

    public function getCurrentPlanner($currentPlannerId)
    {

       $currentPlanner = Planner::with('friends')->find($currentPlannerId);
       return $currentPlanner;
    }

    public function addFriend($currentId,$plannerId)
    {
        $friendId = $plannerId;
        $currentUser = Planner::find($currentId);
        $friend = Planner::find($friendId);
        $currentUser->friends()->attach($friend);
        
        return response()->json(['message' => 'Friend request sent.', 'status' => 'pending']);
    }

    public function updateProfile(Request $request,$plannerId)
    {
        $user = Planner::find($plannerId);

        if(!$user){
            return response()->json(['error'=>'User not found'],404);
        }

        $validatedData = $request->validate([
            'name' => 'string',
            'profileIMG' => 'url',
            'location' => 'string',
            'dob' => 'date',
            'image1' => 'url',
            'image2' => 'url',
            'image3' => 'url',
            'image4' => 'url',
            'image5' => 'url',
            'email' => 'email',
            'contact' => 'string',
            'description' => 'string',
            'services' => 'string',
        ]);

        if($user->update($validatedData)){
            return response()->json(['message' => 'Profile updated Successfully']);
        }        
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Planner  $planner
     * @return \Illuminate\Http\Response
     */
    public function show(Planner $planner)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Planner  $planner
     * @return \Illuminate\Http\Response
     */
    public function edit(Planner $planner)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Planner  $planner
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Planner $planner)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Planner  $planner
     * @return \Illuminate\Http\Response
     */
    public function destroy(Planner $planner)
    {
        //
    }
}
