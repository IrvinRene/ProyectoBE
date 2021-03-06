<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Decision;
use App\Recurso;
use App\Lugar_trabajo;
use App\Condicion;
use App\Document;
use App\Preguntas;
use App\Situacion_economica;
use App\CreadorInputs;
use Illuminate\Support\Facades\DB;

class PreguntasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct(CreadorInputs $creador){

      $this->x = $creador;

      $this->middleware('auth');

    }

    public function index()
    {

      // $form = "<div class='row'>";
      // //SELECCIONO LOS SEGMENTOS PARA CREAR EL FROMULARIO EN BASE A LOS SEGMENTOS DE LA PREGUNTA
      // $segmentos = Preguntas::distinct()->select('segmento')->get();
      // foreach ($segmentos as $segmento) {
      //   if($segmento->segmento == 'A' || $segmento->segmento == 'B' ){
      //     $preguntas = Preguntas::where('segmento',$segmento->segmento)->where('id_pregunta',null)->get();
      //     $form = $form . '<div class="row panel panel-primary">
      //     <div class="panel-heading">'. $segmento .'</div>
      //     <div class="panel-body">';
      //     $form = $form . $this->crearpregunta($preguntas);
      //  }
      //   //CIERRE DE LOS DIV DE PANEL
      //   $form = $form . '
      //   </div>
      // </div>';
      // }
      //
      // $form = $form . "</div>";
      $segmentos = Preguntas::distinct()->select('segmento')->orderBy('segmento','ASC')->get();

      $form = '';
      foreach ($segmentos as $segmento) {
      //if($segmento->segmento == 'C' || $segmento->segmento == 'x'){
        $form = $form . '<div class="row panel panel-primary">
        <div class="panel-heading">'. $segmento .'</div>
        <div class="panel-body">';

        $preguntas = Preguntas::where('segmento',$segmento->segmento)->where('id_pregunta',null)->get();

        foreach ($preguntas as $pregunta) {

          $form = $form . '<div class="">';

          if($pregunta->tipo_resp != 'tabla' ){

              if($pregunta->dependencia == '1'){

                $form = $form. $this->crear($pregunta).'<br>';

                $form = $form . $this->buscarDEP($pregunta);

              }else{

                  $form = $form. $this->crear($pregunta).'<br>';
              }
          }else{
            if ($pregunta->tipo_resp == 'nada') {
              $form = $form . '</div><div class="row container">';
              $form = $form. '<div class="row">'.$this->crear($pregunta).'</div>';
              $form = $form . $this->buscarDEP($pregunta);
              $form = $form . '</div><div class="row">';

            }else{

              $form = $form . '</div><div class="row container">';
              $form = $form. '<div class="row">'.$this->crear($pregunta).'</div>';
              $form = $form . $this->creartabla($pregunta);
              $form = $form . '</div><div class="row">';

            }
          }
          # code...
          $form = $form . '</div>';
        }

        $form = $form . '
          </div>
        </div>';

        //$form = $this->preguntas($preguntas);
    // }
    }


      return view('preguntas',compact('form'));

        //$decisions = Decision::all();
        //$recursos = Recurso::all();

        //$lugar_trabajos = DB::table('lugar_trabajos')->where('id_lugar_trabajo', '<', 6)->get();
        //$condicions = DB::table('condicions')->where('id_condicion', '<', 3)->get();
        //$documents = Document::all();
        //return view ('service_view.economic', compact('decisions','recursos', 'lugar_trabajos', 'condicions'));
    }

    public function crear($pregunta)
    {
      $d = '';
      switch($pregunta->tipo_resp) {
        case "drop":{
          $datos = DB::table($pregunta->tabla)->select()->get();
          $d = $d . $this->x->drop($pregunta, $datos);
            break;
        }
        case "text":{
          $d = $d . $this->x->text($pregunta->id,$pregunta->pregunta,$pregunta->segmento);
          break;

        }
        case "check":{
          $datos = DB::table($pregunta->tabla)->select()->get();
          $d = $d . $this->x->crearcheck($pregunta,$datos);
          break;
        }
        case "nada":{
          $d = $d .$pregunta->pregunta;
          break;
        }
      }

      return $d;
      # code...
    }

    public function creartabla($pregunta)
    {
      $form ='<div class="row container">
        <h5>'.$pregunta->pregunta.'</h5>
        <table class="table table-bordered">
          <thead>
            <tr>';

            $datos = $this->buscarpreguntasdep($pregunta->id);
            foreach ($datos as $value) {
              $form = $form . '<th>'.$value->pregunta.'</th>';
            }

            $form = $form.'
            </tr>
          </thead>
          <tbody>
            <tr>';
              foreach ($datos as $value) {
                $form = $form . '<td>'.$this->crear($value).'</td>';
              }
              $form = $form.'
            </tr>
          </tbody>
        </table>
      </div>';

      return $form;


      # code...
    }

    public function buscarDEP($pregunta)
    {
      $form = '';
      $dependientesCiertas = Preguntas::where('id_pregunta',$pregunta->id)->where('parte','1')->get();

                    if ($dependientesCiertas->count()) {

                      $form = $form.'<div class="col-md-12" style="display:none" id="cierto['.$pregunta->id.']"><div class="well">';


                        foreach ($dependientesCiertas as $dato1) {
                            $form = $form. $this->crear($dato1).'<br>';
                        }


                      $form = $form.'</div></div>';
                      # code...
                    }


                $dependientesFalsas = Preguntas::where('id_pregunta',$pregunta->id)->where('parte','0')->get();


                  if ($dependientesFalsas->count()) {


                    $form = $form.'<div class="col-md-12" style="display:none" id="falso['.$pregunta->id.']"><div class="well">';

                        foreach ($dependientesFalsas as $dato2) {
                            $form = $form. $this->crear($dato2).'<br>';
                        }


                    $form = $form.'</div></div>';
                    # code...
                  }


                $dependientesnull = Preguntas::where('id_pregunta',$pregunta->id)->where('parte',null)->get();



                  if ($dependientesnull->count()) {

                    $form = $form.'<div class="row container" id="none['.$pregunta->id.']"><div class="well">';

                        foreach ($dependientesnull as $dato3) {
                            $form = $form. $this->crear($dato3).'<br>';
                        }


                    $form = $form.'</div></div>';
                    # code...
                  }
                return $form;
    }


    public function crearVacio($pregunta)
    {
      $form ='<div class="row container">
        <h5>'.$pregunta->pregunta.'</h5>
        <table class="table table-bordered">
          <thead>
            <tr>';

            $datos = $this->buscarpreguntasdep($pregunta->id);
            foreach ($datos as $value) {
              $form = $form . '<th>'.$value->pregunta.'</th>';
            }

            $form = $form.'
            </tr>
          </thead>
          <tbody>
            <tr>';
              foreach ($datos as $value) {
                $form = $form . '<td>'.$this->crear($value).'</td>';
              }
              $form = $form.'
            </tr>
          </tbody>
        </table>
      </div>';

      return $form;


      # code...
    }


    public function buscarpreguntasdep($id){

      $preguntas = Preguntas::where('id_pregunta',$id)->get();
      return $preguntas;
    }

    public function crearcheck($tabla, $id)
    {
      //recibe la tabla contenida en el campo de tabla en la base de datos de la tabla preguntas desde el switch cuando
      //cuando el tipo_resp = drop;
      $datos = DB::table($tabla)->select()->get();
      $fr = '<div class="row">
          <div class="col-xs-12 col-sm-6 col-md-12">
              <div class="panel panel-default">
                  <div class="panel-heading"></div>
                  <ul class="list-group">';
                  foreach ($datos as $dato) {
                    $fr = $fr . '
                      <li class="list-group-item">'.$dato->descrip.'
                          <div class="material-switch pull-right">
                              <input id="check['.$dato->id.']" value="'.$dato->id.'" name="check['.$dato->id.']" type="checkbox"/>
                              <label for="check['.$dato->id.']" class="label-success"></label>
                          </div>
                      </li>';
                    }
                    $fr = $fr .'
                  </ul>
              </div>
          </div>
      </div>';
      return $fr;
    }
    public function creartext($id)
    {
      $text = '<div class="col-md-6">
        <input type="text" id="'. $id .'" class="form-control" name="'. $id .'" placeholder=""></input>
      </div>';
      return $text;
    }

    public function store(Request $request)
    {
      $datos = $request->all();

      


      foreach ($datos as $key => $value) {
        if($key != "_token"){
          $pregunta = Preguntas::find($key);
          $lol = DB::insert('insert into respuestas (id_pregunta, respuesta) values (?, ?)', [$key, "{".$pregunta->pregunta.":".$value."}"]);
        }
      }

      return 'OK';

    }

    public function create()
    {
        //
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }


    public function update($id)
    {
        //
    }


    public function destroy($id)
    {
        //
    }


}
