<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Decision;
use App\Recurso;
use App\Lugar_trabajo;
use App\Condicion;
use App\Document;
use App\Situacion_economica;
use App\Disciplina;
use App\Grupo_cultura;
use App\Tipo_enfermedad_impedimento;

class Formulario extends Controller
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
      $disciplinas = Disciplina::all();
      $culturas = Grupo_cultura::all();
      $enfermedades = Tipo_enfermedad_impedimento::all();


        return view('form', compact('decisions','recursos', 'lugar_trabajos', 'condicions', 'enfermedades', 'disciplinas', 'culturas'));
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
