<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Decision;
use App\Recurso;

class economicsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $decisions = Decision::all();
        $recursos = Recurso::all();
        return view ('service_view.economic', compact('decisions','recursos'));


    }

//
}
