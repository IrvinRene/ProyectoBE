<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Noticia;
use storage;

class Regnoticia extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $noticias = Noticia::all();
      return view ('regnoticia', compact('noticias'));
        //
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
        $this->validate($request, [
          'titulo' => 'required',
          'descripcion' => 'required',
          'urlimgnot' => 'required'
        ]);
        $noticia = new Noticia();
        $noticia->titulo = $request->titulo;
        $noticia->descripcion = $request->descripcion;
        $noticia->urlimgnot = $request->urlimgnot;

        $img = $request->file('urlimgnot');
        $file_route = time().'_'.$img->getClienteOriginalName();
        storage::disk('imgnoticia')->put($file_route, file_get_contents($img->getRealPath()));
        $noticia->urlimgnot = $file_route;
        $noticia->save();
        if($noticia->save()){
          return back()->with('msj', 'Datos guardados');
        } else {
          return back()->with('errormsj', 'Los datos no se guardaron');
        }
        return view ('regnoticia');

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
