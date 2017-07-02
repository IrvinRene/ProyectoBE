<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Decision;
use App\Recurso;
use App\Lugar_trabajo;
use App\Condicion;
use App\Document;
use App\Situacion_economica;

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

    public function store(Request $request)
    {
      $situacionEco = new Situacion_economica();
      $situacionEco->formulario_id_formulario = '1';
      $situacionEco->id_dtrabaja = $request->id_decision;

        $situacionEco->lugar_trabajo_id_lugar_trabajo = ($request->id_decision2 == null)?1:$request->id_decision2;
        $situacionEco->condicion_id_condicion = ($request->id_decision3 == null)?1:$request->id_decision3;
      $situacionEco->porque_no = $request->porque_no;
      $situacionEco->nombre_empresa = $request->nombre_empresa1;
      $situacionEco->ocupacion = $request->ocupacion;
      $situacionEco->salario = $request->salario ? "":null;
      $situacionEco->telefono = $request->telefono?"":null;


      $situacionEco->save();





        //



         //dd($request->vivienda);
    }

//
}
