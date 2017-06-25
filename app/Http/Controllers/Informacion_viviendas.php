<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Informacion_vivienda;
use App\Residente;

class Informacion_viviendas extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

         return view ('service_view.tipo_vivienda');
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
         $vivienda= new Informacion_vivienda();
         $residencia= new Residente();

         $vivienda->tipo_vivienda_id_tipo_vivienda = $request->vivienda;
         $vivienda->zona_ub_id_zona_ub = $request->zona_ub;
         $vivienda->id_mparedes = $request->paredes;
         $vivienda->id_mpisos = $request->pisos;
         $vivienda->id_mtecho = $request->techos;
         $vivienda->tamagno_vivienda_id_tamaño_vivienda = $request->tamagno_vivienda;
         $vivienda->iluminacion_id_iluminacion = $request->iluminacion_vivienda;
         $vivienda->insta_sanitaria_id_insta_sanitaria = $request->insta_sanitaria_vivienda;
         $vivienda->num_ventana = $request->num_ventana;
         $vivienda->tipo_suminis_agua_id_tipo_suminis_agua = $request->suminis_agua;
         $vivienda->prov_agua_idprov_agua = $request->prov_agua;
         $vivienda->condicion_fisica = $request->condiciones;
         $vivienda->id_djuegode_sala = $request->sala;
         $vivienda->id_darea_comedor = $request->comedor;
         $vivienda->id_dtv = $request->tv;
         $vivienda->id_ddvd = $request->dvd;
         $vivienda->id_dequipo_sonido = $request->sonido;
         $vivienda->id_drefri = $request->refri;
         $vivienda->id_destufa  = $request->estufa;
         $vivienda->id_da_a  = $request->aire;
         $vivienda->id_dmicroondas = $request->micro;
         $vivienda->id_dlavadora = $request->lavadora;
         $vivienda->id_dabanico = $request->abanico;
         $vivienda->otro = $request->otros_mob;
         $vivienda->id_dcambio_resid = $request->cambio;
         
         $residencia->direccion = $request->dire_actual;
         $residencia->tiempo_residencia = $request->tiempo_residir;
         $residencia->telefono = $request->telefono;
         $residencia->residente_id_residente = $request->residente;
         $residencia->facilidad_id_facilidad = $request->facilidad;
         $residencia->tendencia_id_tendencia = $request->con_tendencia;
         $residencia->condicion_fisica = $request->con_fic_viv;
         $residencia->otra_facilidad = $request->otra_fac;
         $residencia->comentario = $request->com_adic;

          dd($request->com_adic);

         $vivienda->save();
         $residencia->save();
       
       
        
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
