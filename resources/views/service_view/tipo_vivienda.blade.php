
@extends('layouts.marco')

@section('tipo_vivienda')
<div class="container">
  
  <form class="form-horizontal" role="form" method="POST" action="{{ url('form')}}" >
      {{ csrf_field() }}
      <div class="row">
          <div class="col-md-12">
          <h4><strong>Tipo de Vivienda</strong></h4>
          <div class="col-md-6">
              <div class="form-group">
                  <label for="vivienda" class="col-sm-2 control-label" >Tipo</label>
                  <div id= "vivienda" class="col-sm-6">

                  {!! Form:: select('tipo_vivienda', App\Tipo_vivienda::pluck('tipo_vivienda'), null, array('class'=>'form-control', 'name'=>'vivienda','id'=>'id_d')) !!}  

                  <script src="/js/show.js"></script>
                    <div class="form" id="otro_div" style="display: none;">
                      <label class="col-sm-2 control-label" >Especifíque</label>
                      <textarea type="text" id="id_textarea" class="form-control" name="descripcion" placeholder="Especifíque"></textarea>
                    </div>
                  </div>
              </div>
          </div>
            <div class="col-md-6">
              <div class="form-group" id="otro_div">
                <label for="vivienda" class="col-sm-2 control-label" >Zona</label>
                <div class="col-sm-6">
                {!! Form:: select('zona_ubs', App\Zona_ub::pluck('zona_ub'), null, array('class'=>'form-control', 'name'=>'zona_ub')) !!}
                </div>
              </div>
            </div>
          </div>
        </div>
      <div class="row">
        <div class="col-md-12">
        <h4><strong>Materiales de Construcción</strong></h4>
          <div class="col-md-4">
            <div class="form-group">
              <label for="vivienda" class="col-sm-2 control-label" >Paredes</label>
                <div class="col-sm-6">
                {!! Form:: select('material_pared', App\Material_pared::pluck('material_pared'), null, array('class'=>'form-control', 'name'=>'vivienda', 'id'=>'id_pared')) !!}
                <script src="/js/show.js"></script>
                  <div class="form" id="pared" style="display: none;">
                    <label class="col-sm-2 control-label" >Especifíque</label>
                    <textarea type="text" id="id_textarea_pared" class="form-control" name="descripcion" placeholder="Especifíque"></textarea>
                  </div>
                </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="vivienda" class="col-sm-2 control-label" >Pisos</label>
                <div class="col-sm-6">
                {!! Form:: select('material_piso', App\Material_piso::pluck('material_piso'), null, array('class'=>'form-control', 'name'=>'zona_ub', 'id'=>'id_piso')) !!}
                 <script src="/js/show.js"></script>
                 <div class="form" id="piso" style="display: none;">
                    <label class="col-sm-2 control-label" >Especifíque</label>
                    <textarea type="text" id="id_textarea_piso" class="form-control" name="descripcion" placeholder="Especifíque"></textarea>
                  </div>
                </div>           
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group">
              <label for="vivienda" class="col-sm-2 control-label" >Techo</label>
                <div class="col-sm-6">
                {!! Form:: select('material_techo', App\Material_techo::pluck('material_techo'), null, array('class'=>'form-control', 'name'=>'zona_ub', 'id'=>'id_zinc')) !!}
                <script src="/js/show.js"></script>
                 <div class="form" id="zinc" style="display: none;">
                    <label class="col-sm-2 control-label" >Especifíque</label>
                    <textarea type="text" id="id_textarea_zinc" class="form-control" name="descripcion" placeholder="Especifíque"></textarea>
                  </div>
                </div> 
                 
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
        <h4><strong>La vivienda es:</strong></h4>
          <div class="col-md-3">
            <div class="form-group"> 
            <div class="col-sm-4">
             <label for="vivienda" class="col-sm-2 control-label" >Tamaño</label>
             </div>
              <div class="col-sm-6"> 
              {!! Form:: select('tamagno_vivienda', App\Tamagno_vivienda::pluck('tamagno_vivienda'), null, array('class'=>'form-control', 'name'=>'tamagno_vivienda')) !!}
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group"> 
            <div class="col-sm-4">
             <label for="vivienda" class="col-sm-2 control-label" >Iluminación</label>
            </div> 
            <div class="col-sm-6">  
               {!! Form:: select('material_techo', App\Iluminacion::pluck('tipo_iluminacion'), null, array('class'=>'form-control', 'name'=>'zona_ub', 'id'=>'id_ilum')) !!}
                <script src="/js/show.js"></script>
                 <div class="form" id="ilum" style="display: none;">
                    <label class="col-sm-2 control-label" >Especifíque</label>
                    <textarea type="text" id="id_textarea_ilum" class="form-control" name="descripcion" placeholder="Especifíque"></textarea>
                  </div>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="form-group"> 
              <div class="col-sm-4">
                 <label for="vivienda" class="col-sm-2 control-label" >Instalaciones sanitarias</label>
              </div>
              <div class="col-sm-6"> 
              {!! Form:: select('Insta_sanitaria', App\Insta_sanitaria::pluck('Insta_sanitaria'), null, array('class'=>'form-control', 'name'=>'Insta_sanitaria')) !!}
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <div class="col-md-4">
            <div class="form-group"> 
              <div class="col-sm-5">
                  <label for="vivienda" class="control-label" >Nº de Ventanas</label>
              </div>
              <div class="col-sm-5"> 
                <select class="form-control">
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                  <option>6</option>
                  <option>7</option>
                  <option>8</option>
                  <option>9</option>
                  <option>10</option>
                  <option>11</option>
                  <option>12</option>
                  <option>13</option>
                  <option>14</option>
                  <option>15</option>
               </select>
              </div>
            </div>
          </div>
          <div class="  col-md-4">
              <div class="form-group"> 
              <div class="col-sm-3">
                 <label for="vivienda" class="control-label" >Suministro de agua</label>
              </div>
              <div class="col-sm-6"> 
              {!! Form:: select('suminis_agua', App\Suminis_agua::pluck('suminis_agua'), null, array('class'=>'form-control', 'name'=>'suminis_agua')) !!}
              </div>
            </div>
          </div>
          <div class="  col-md-4">
              <div class="form-group"> 
              <div class="col-sm-5">
                 <label for="vivienda" class="control-label" >De dónde proviene</label>
              </div>
              <div class="col-sm-6"> 
              {!! Form:: select('prov_agua', App\Prov_agua::pluck('prov_agua'), null, array('class'=>'form-control', 'name'=>'prov_agua')) !!}
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <h4><strong>Condiciones físicas de la vivienda:</strong></h4>
          <div class="col-md-6">
            <textarea type="text" id="id_textarea_condicion" class="form-control" name="condiciones" placeholder="Describa las condiciones en las que se encuentra la vivineda..."></textarea>
          </div>
          <div class="col-md-6">
            <div class="col-sm-6">
             <h4><strong>Equipos y mobiliario con que cuenta su hogar</strong></h4>
            </div>
            <div class="col-sm-6">
            {!! Form:: select('prov_agua', App\Prov_agua::pluck('prov_agua'), null, array('class'=>'form-control', 'name'=>'prov_agua')) !!}
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <h4><strong>Eqiupo y mobiliario con que cuenta su hogar</strong></h4>
          <div class="col-md-3">
            <div class="col-sm-4">
             <label for="vivienda" class="control-label" >Juego de sala</label>
            </div>
            <div class="col-sm-6">
              {!! Form:: select('sala', App\Decision::pluck('decision'), null, array('class'=>'form-control', 'name'=>'sala')) !!}
            </div>
          </div>
          <div class="col-md-3">
          <div class="col-sm-6">
             <label for="vivienda" class="control-label" >Juego de Comedor</label>
            </div>
            <div class="col-sm-6">
              {!! Form:: select('sala', App\Decision::pluck('decision'), null, array('class'=>'form-control', 'name'=>'sala')) !!}
            </div>
          </div>
          <div class="col-md-3">
          <div class="col-sm-4">
             <label for="vivienda" class="control-label" >Televisión</label>
            </div>
            <div class="col-sm-6">
              {!! Form:: select('tv', App\Decision::pluck('decision'), null, array('class'=>'form-control', 'name'=>'tv')) !!}
            </div>
          </div>
          <div class="col-md-3">
          <div class="col-sm-4">
             <label for="vivienda" class="control-label" >DVD</label>
            </div>
            <div class="col-sm-6">
              {!! Form:: select('dvd', App\Decision::pluck('decision'), null, array('class'=>'form-control', 'name'=>'dvd')) !!}
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <div class="col-md-3">
            <div class="col-sm-5">
             <label for="vivienda" class="control-label" >Equipo de sonido</label>
            </div>
            <div class="col-sm-6">
              {!! Form:: select('sonido', App\Decision::pluck('decision'), null, array('class'=>'form-control', 'name'=>'sonido')) !!}
            </div>
          </div>
          <div class="col-md-3">
          <div class="col-sm-6">
             <label for="vivienda" class="control-label" >Refrigeradora</label>
            </div>
            <div class="col-sm-6">
              {!! Form:: select('refri', App\Decision::pluck('decision'), null, array('class'=>'form-control', 'name'=>'refri')) !!}
            </div>
          </div>
          <div class="col-md-3">
          <div class="col-sm-4">
             <label for="vivienda" class="control-label" >Estufa</label>
            </div>
            <div class="col-sm-6">
              {!! Form:: select('estufa', App\Decision::pluck('decision'), null, array('class'=>'form-control', 'name'=>'estufa')) !!}
            </div>
          </div>
          <div class="col-md-3">
          <div class="col-sm-4">
             <label for="vivienda" class="control-label" >A/C</label>
            </div>
            <div class="col-sm-6">
              {!! Form:: select('aire', App\Decision::pluck('decision'), null, array('class'=>'form-control', 'name'=>'aire')) !!}
            </div>
          </div>
        </div>
      </div>

       <div class="row">
        <div class="col-md-12">
          <div class="col-md-3">
            <div class="col-sm-5">
             <label for="vivienda" class="control-label" >Micro Onda</label>
            </div>
            <div class="col-sm-6">
              {!! Form:: select('micro', App\Decision::pluck('decision'), null, array('class'=>'form-control', 'name'=>'micro')) !!}
            </div>
          </div>
          <div class="col-md-3">
          <div class="col-sm-6">
             <label for="vivienda" class="control-label" >Lavadora</label>
            </div>
            <div class="col-sm-6">
              {!! Form:: select('lavadora', App\Decision::pluck('decision'), null, array('class'=>'form-control', 'name'=>'lavadora')) !!}
            </div>
          </div>
          <div class="col-md-3">
          <div class="col-sm-4">
             <label for="vivienda" class="control-label" >Abanico</label>
            </div>
            <div class="col-sm-6">
              {!! Form:: select('abanico', App\Decision::pluck('decision'), null, array('class'=>'form-control', 'name'=>'abanico')) !!}
            </div>
          </div>
          <div class="col-md-3">
          <div class="col-sm-3">
             <label for="vivienda" class="control-label" >Otros</label>
            </div>
            <div class="col-sm-8">
               <div class="form" id="ilum" style="display: block;">
                    <textarea type="text" id="id_textarea_ilum" class="form-control" name="descripcion" placeholder="Especifíque"></textarea>
                  </div>
            </div>
          </div>
        </div>
      </div>


<br>

      <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
          <button type="submit" class="btn btn-primary"> Crear </button>
          </div>
      </div>
  </form>
</div>

@endsection
