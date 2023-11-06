<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PlannerController;
use App\Http\Controllers\UserController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
/*
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
*/
/////////////////// Planners ///////////////////////////
Route::get('/planners',[PlannerController::class,'index']);
Route::get('/getCurrentPlanner/{currentPlannerId}',[PlannerController::class,'getCurrentPlanner']);
Route::post('/updateProfile/{plannerId}',[PlannerController::class,'updateProfile']);
Route::get('/getRequests/{plannerId}',[PlannerController::class,'getRequests']);
Route::get('/getFriends/{plannerId}',[PlannerController::class,'getFriends']);
Route::post('/accept/{friendId}',[PlannerController::class,'acceptFriend']);
Route::post('/deleteFriend/{friendId}',[PlannerController::class,'deleteFriend']);

Route::post('/addToFavourite/{currentPlannerId}/{plannerId}',[PlannerController::class,'addToFavourite']);//OK
Route::get('/getFavourites/{plannerId}',[PlannerController::class,'getFavourites']);
Route::post('/deleteFavourite/{favouriteID}',[PlannerController::class,'deleteFavourite']);
//Route::post('/plannerHirePlanner/{currentPlannerId}/{plannerId}',[PlannerController::class,'plannerHirePlanner']);
Route::get('/getUserBookRequests/{currentPlannerId}',[PlannerController::class,'getUserBookRequests']);//OK
Route::get('/getPlannerInProgress/{currentPlannerId}',[PlannerController::class,'getPlannerInProgress']);//ok
Route::get('/getPlannerCompleted/{currentPlannerId}',[PlannerController::class,'getPlannerCompleted']);//ok
Route::get('/getPlannerCancelled/{currentPlannerId}',[PlannerController::class,'getPlannerCancelled']);//ok

Route::post('/acceptUserRequest/{userbookingID}',[PlannerController::class,'acceptUserRequest']);//OK
Route::post('/cancelUserRequest/{userbookingID}',[PlannerController::class,'cancelUserRequest']);//OK

Route::post('/completeUserBooking/{userbookingID}',[PlannerController::class,'completeUserBooking']);//OK




////////////////Users///////////////////////////////////////
Route::get('/getCurrentUser/{currentUserId}',[UserController::class,'getCurrentUser']);
Route::post('/updateUserProfile/{userId}',[UserController::class,'updateUserProfile']);
Route::post('/userFavouritePlanner/{currentId}/{plannerId}',[UserController::class,'userFavouritePlanner']);
Route::get('/getUserFavourites/{currentUserId}',[UserController::class,'getUserFavourites']);
Route::delete('/deleteUserFavourite/{favouriteID}',[UserController::class,'deleteUserFavourite']);

Route::post('/userHirePlanner/{currentUserId}/{plannerId}',[UserController::class,'userHirePlanner']);
Route::get('/getSentRequests/{currentUserId}',[UserController::class,'getSentRequests']);
Route::delete('/cancelSentRequest/{userBookingID}',[UserController::class,'cancelSentRequest']);

Route::get('/getUserInProgress/{currentUserId}',[UserController::class,'getUserInProgress']);
Route::get('/getUserComplete/{currentUserId}',[UserController::class,'getUserComplete']);
Route::get('/getUserCancelled/{currentUserId}',[UserController::class,'getUserCancelled']);