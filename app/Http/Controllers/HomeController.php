<?php

namespace App\Http\Controllers;
use App\State;
use App\House;
use App\SystemParameter;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $propertyType = HomeController::getParameter('propertyType');
        $rentalDuration = HomeController::getParameter('rentalDuration');
        $houseQuality = HomeController::getParameter('houseQuality');
        $rating = HomeController::getParameter('rating');
        $contractType = HomeController::getParameter('contractType');
        $titleType = HomeController::getParameter('titleType');
        $state = State::All();
        $houses = House::limit(6)->get();

        return view('welcome',compact(
            'houses',
            'state',
            'propertyType',
            'rentalDuration',
            'houseQuality',
            'rating' ,
            'contractType',
            'titleType'
            ));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function search(Request $request)
    {



        $price = $request->input('price');
        $rentalDuration = $request->input('rentalDuration');
        $houseQuality = $request->input('houseQuality');
        $rating = $request->input('rating');
        $contractType = $request->input('contractType');
        $state = $request->input('state');
        // $city = $request->input('city');
        $houses = House::where([
            ['price','like','%'. $price .'%'],
            ['rentalDuration','like','%'.$rentalDuration.'%'],
            ['houseQuality','like','%'.$houseQuality.'%'],
            ['rating','like', '%'.$rating.'%'],
            ['contractType','like', '%'.$contractType.'%'],
            ['state','like', '%'.$state.'%']
            // ['city','like', '%'.$city.'%']
         ])
         ->get();
        $propertyType = HomeController::getParameter('propertyType');
        $rentalDuration = HomeController::getParameter('rentalDuration');
        $houseQuality = HomeController::getParameter('houseQuality');
        $rating = HomeController::getParameter('rating');
        $contractType = HomeController::getParameter('contractType');
        $titleType = HomeController::getParameter('titleType');
        $state = State::All();

         return  view('welcome', compact(
            'houses',
            'state',
            'propertyType',
            'rentalDuration',
            'houseQuality',
            'rating' ,
            'contractType',
            'titleType'
        ));
    }

    public function getListCity($id){
        return State::join('cities', 'states.id','cities.fk_stateId')
        ->select('cities.id','cities.name')
        ->where('states.id',$id)
        ->get();
    }


        /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Parameter  $parameter
     * @return \Illuminate\Http\Response
     */
    public function getParameter($parameter)
    {
        //
        return SystemParameter::join('parameter', 'system_parameter.id', '=', 'parameter.fk_SystemParameterId')
            ->select('parameter.id', 'parameter.name', 'parameter.value')
            ->where('system_parameter.name', $parameter)
            ->get();
    }
}
