<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Decision;
use App\Recurso;
use App\Lugar_trabajo;
use App\Condicion;
use App\Document;

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
        $lugar_trabajos = Lugar_trabajo::all();
        $condicions = Condicion::all();
        $documents = Document::all();
        return view ('service_view.economic', compact('decisions','recursos', 'lugar_trabajos', 'condicions'));


    }

//
}
