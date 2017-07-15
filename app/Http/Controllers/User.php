<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class User extends Controller
{
  public function index(Request $request)
{
  $user = new User;
  $parametros['ruta'] 			= ['route' => 'user.store', 'class' => 'form-horizontal'];
  $parametros['metodo'] 			= 'POST';
  $parametros['nombre'] 			=  '';
  $parametros['email']			=  '';
  $parametros['password']			=  '';
  $parametros['idrol'] 			=  '';


  $parametros['button']           = 'Registrar';



  //lamamos al form de registro personas
  return view('user', compact(['user', 'parametros']));
}

/**
 * Show the form for creating a new resource.
 *
 * @return Response
 */
public function create(Request $request,$id)
{

}

/**
 * Store a newly created resource in storage.
 *
 * @return Response
 */
public function store(Request $request)
{


  $user = new User;

  $user->nombre 			= $request->input('nombre');
  $user->email			= $request->input('email');
  $user->password			= \Hash::make($request->input('password'));
  $user->save();

  return redirect()->back();
}

/**
 * Display the specified resource.
 *
 * @param  int  $id
 * @return Response
 */
public function show($id)
{
  //
}

/**
 * Show the form for editing the specified resource.
 *
 * @param  int  $id
 * @return Response
 */
public function edit($id)
{


}

/**
 * Update the specified resource in storage.
 *
 * @param  int  $id
 * @return Response
 */
public function update(Request $request, $id)
{


}


/**
 * Remove the specified resource from storage.
 *
 * @param  int  $id
 * @return Response
 */
public function destroy($id)
{

}
}
