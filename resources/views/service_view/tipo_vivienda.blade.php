
@extends('layouts.marco')
@section('content')
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
              {!! Form:: select('tipo_iluminacion', App\Iluminacion::pluck('tipo_iluminacion'), null, array('class'=>'form-control', 'name'=>'tipo_iluminacion')) !!}
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




      <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
          <button type="submit" class="btn btn-primary"> Crear </button>
          </div>
      </div>
  </form>
</div>

@endsection
<!--<form>
<div class="container">
<div class="box">

<div class="form-horizontal" role="form" method="POST" action="{{ url('form')}}">
{{ csrf_field() }}
 <div class="row">
  <div class="col-md-6">
  <h4><strong>Tipo de Vivienda</strong></h4>
  <br>
  <div class="col-md-6">
    <div class="form-check">

      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Vivienda" id="Apartamento" value="option1" checked>Apartamento</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Vivienda" id="CasaEmergencia" value="option2">Casa de Emergencia</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Vivienda" id="Barriada" value="option3">Barriada Residencial</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Vivienda" id="Otros" value="option4">Otros</label>
    </div>




</div>
  <div class="col-md-6">
  <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Vivienda" id="Multifamiliar" value="option5">Multifamiliar</label>
    </div>
  
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Vivienda" id="Unifamiliar" value="option6">Unifamiliar</label>
    </div>

    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Vivienda" id="Construida" value="option7">Construida por la persona</label>
    </div>
  </div>
  <textarea class="form-control" rows="2" placeholder="Especifíque"></textarea>
</div>-->
<!--
  <div class="col-md-6">
  <h4><strong>Zona de Ubicación</strong></h4>
  <br>
  <div class="col-md-6">
      <div class="form-check">
        <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Zona" id="Rural" value="option1" checked>Rural</label>
      </div>
     <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Zona" id="Urbana" value="option2">Urbana</label>
      </div>
    </div>

  <div class="col-md-6">
     <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Zona" id="Semi_rural" value="option3" checked>Semi rural</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Zona" id="Semi_urbana" value="option4">Semi urbana</label>
    </div>

  </div>
</div>
 </div>
  <div class="row">
  <div class="col-md-12">
  <br>
  <br>
  <h4><strong>Materiales de Construcción</strong></h4>
  <br>
  <div class="col-md-4">
    <div class="col-md-4">
    <h4><strong>Paredes</strong></h4>
    </div>
    <div class="col-md-8"
   <div class="col-md-4">
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Paredes" id="Madera" value="option1" checked>Madera</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Paredes" id="Cemento" value="option2">Cemento</label>
    </div>
      <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Paredes" id="Otros" value="option3">Otros</label>
    </div>
     <textarea class="form-control" rows="2" placeholder="Especifíque"></textarea>
    </div>
    
</div>


  <div class="col-md-4">
  <div class="col-md-4">
    <h4><strong>Pisos</strong></h4>
    </div>
    <div class="col-md-8">
        <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Pisos" id="Madera1" value="option1" checked>Madera</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Pisos" id="Cemento1" value="option2">Cemento</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Pisos" id="Mosaico" value="option3">Mosáico</label>
    </div>
      <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Pisos" id="Baldosa" value="option4">Baldosa</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Pisos" id="Otros" value="option5">Otros</label>
    </div>
     <textarea class="form-control" rows="2" placeholder="Especifíque"></textarea>
  </div>

  </div>
   <div class="col-md-4">
   <div class="col-md-4">
    <h4><strong>Techo</strong></h4>
    </div>
    <div class="col-md-8">
        <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Techo" id="Zinc" value="option1" checked>Zinc</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Techo" id="Cemento" value="option2">Cemento</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Techo" id="Cielo" value="option3">Cielo raso</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Techo" id="Otros" value="option4">Otros</label>
    </div>
     <textarea class="form-control" rows="2" placeholder="Especifíque"></textarea>
    </div>
  </div>
 
</div>

  
 </div>


<div class="row">
<div class="col-md-12">
<br>
<br>
<div class="col-md-4">
<div class="col-md-6">
<h4><strong>La vivienda es: </strong></h4>
</div>
<div class="col-md-6">
<div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Tamano" id="Pequeña" value="option1" checked>Pequeña</label>
    </div>
    </div>
</div>
<div class="col-md-4">
<div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Tamano" id="Mediana" value="option2" checked>Mediana</label>
    </div>
</div>
<div class="col-md-4">
<div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Tamano" id="Grande" value="option3" checked>Grande</label>
    </div>
</div>
</div>
</div>  

<div class="row">
<br>
<br>
<div class="col-md-12">

<div class="col-md-6">
<div class="col-md-6">
<h4><strong>Iluminación: </strong></h4>
</div>
<div class="col-md-6">
<div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Iluminacion" id="Eléctrica" value="option1" checked>Luz eléctrica</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Iluminacion" id="Gas" value="option2">Lámpara de gas</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Iluminacion" id="Lampara" value="option3">Lampara de Keronsén</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Iluminacion" id="Luz" value="option4">Luz natural</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Iluminacion" id="Otros" value="option5">Otros</label>
    </div>
     <textarea class="form-control" rows="2" placeholder="Especifíque"></textarea>
</div>

</div>
<div class="col-md-6">
<div class="col-md-6">
<h4><strong>Instalaciones Sanitarias: </strong></h4>
</div>
<div class="col-md-6">
<div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Sanitarias" id="Letrina" value="option1" checked>Letrina</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Sanitarias" id="Higiénico" value="option2">Higiénico</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Sanitarias" id="Colectivo" value="option3">Colectivo</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Sanitarias" id="Individual" value="option4">Individual</label>
    </div>
     <label class="mr-sm-2" for="inlineFormCustomSelect">Nº de ventanas</label>
  <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="inlineFormCustomSelect">
    <option selected>Elige un numero</option>
    <option value="1">Una</option>
    <option value="2">Dos</option>
    <option value="3">Tres</option>
    <option value="3">Cuatro</option>
    <option value="3">Cinco</option>
    <option value="3">Seis</option>
    <option value="3">Siete</option>
    <option value="3">Ocho</option>
    <option value="3">Nueve</option>
    <option value="3">Dies</option>
  </select>
</div>
</div>
</div>
</div>


<div class="row">
<br>
<br>
<h4><strong>Suministro de agua </strong></h4>
<div class="col-md-12">
<div class="col-md-4">
<div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Agua" id="Potable" value="option2">Potable</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Agua" id="No_potable" value="option3">No potable</label>
    </div>
</div>
<div class="col-md-4">
<div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Agua" id="Pluma" value="option2">Pluma común</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Agua" id="Particular" value="option3">Particular</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Agua" id="Poso" value="option3">Poso artesanal</label>
    </div>
</div>
<div class="col-md-4">
<div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Agua" id="Quebrada" value="option2">Quebrada</label>
    </div>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="radio" name="Agua" id="Río" value="option3">Río</label>
    </div>
</div>
</div>
</div>

      </div>
  <div class="row">
 
  <div class="col-md-12">
   <h4><strong>Condiciones físicas de la vivienda </strong></h4>
  <textarea class="form-control" rows="3" placeholder="Describa">
  
  </textarea>
    
  </div>

  </div>

 
  <br>
  <br>

</div>
 <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
    <button type="submit" class="btn btn-primary"> Crear </button>
    </div>
</div>
<br>
<br>
 </div>

</form>
-->