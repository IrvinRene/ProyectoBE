<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tipo_vivienda;
use App\Zona_ub;
use App\Material_pared;
use App\Material_piso;
use App\Num_personas;
class Tipo_viviendas extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
       // $tipo_viviendas = Tipo_vivienda::pluck('tipo_vivienda');
        return view ('form');




       // $Tipo_viviendas = tipo_vivienda::all();
       // return \View::make('form')->with('tipo_vivienda',$tipo_vivienda);
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

         $vivienda= new Tipo_vivienda();
         $vivienda->tipo_vivienda = $request->vivienda;


         $zona= new Zona_ub();
          $zona->zona_ub = $request->zona_ubs;

          $pared= new Material_pared();
          $pared->material_pared = $request->material_pareds;

           $piso= new Material_piso();
          $piso->material_piso = $request->material_pisos;

         $zona->save();
         $vivienda->save();
          $pared->save();
          $piso->save();
         dd('Datos guardados');

         //dd($request->vivienda);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
