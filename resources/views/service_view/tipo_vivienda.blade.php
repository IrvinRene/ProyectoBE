  <form class="form-horizontal" role="form" method="POST" action="{{ url('tipo_viv')}}" >
      {{ csrf_field() }}

      <div class="row">
        <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
          <div class="panel-heading"><h4><strong>Información de la vivienda</strong></h4></div>


            <div class="panel-body">
              <div class="col-md-12">
                <div class="form-group">
                <h4><strong>Datos actuales de la vivienda permanente</strong></h4>
              </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">

                  <label for="vivienda" class="col-sm-5 control-label" >Número de personas que residen en la vivienda:</label>
                  <div id= "personas" class="col-sm-6">
                  {!! Form:: select('personas', App\Num_personas::pluck('cantidad'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'personas','id'=>'id_personas')) !!}
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="estatus" class="col-sm-5 control-label" >Estatus de la vivienda</label>
                    <div class="col-sm-6">
                       {!! Form:: select('estatus', App\Tendencia::pluck('tendencia'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'estatus', 'id'=>'id_estatus')) !!}
                      <script src="/js/show.js"></script>
                      <div class="form" id="estatus" style="display: none;">
                      <label class="col-sm-2 control-label" >Especifíque</label>
                      <textarea type="text" id="id_textarea_estatus" class="form-control" name="Descipcion" placeholder="Especifíque"></textarea>
                    </div>
                    </div>
                </div>
              </div>

              <div class="col-md-12">
                <div class="form-group">
                <h4><strong>Distribución física de la vivienda</strong></h4>
              </div>
            </div>
              <div class="col-sm-12">
                <div class="col-md-3">
                  <div class="form-group">
                    <label for="estatus" class="col-sm-4 control-label" >Sala</label>
                    <div id= "personas" class="col-sm-8">
                     {!! Form:: select('sala', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'sala')) !!}
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label for="estatus" class="col-sm-4 control-label" >Comedor</label>
                      <div class="col-sm-8">
                          {!! Form:: select('comedor', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'comedor')) !!}
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label for="salcomerdor" class="col-sm-4 control-label" >Sala comedor</label>
                    <div id= "personas" class="col-sm-8">
                     {!! Form:: select('sala', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'salcomedor')) !!}
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label for="estatus" class="col-sm-4 control-label" >Cocina</label>
                      <div class="col-sm-8">
                          {!! Form:: select('cocina', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'cocina')) !!}
                      </div>
                  </div>
                </div>
              </div>

              <div class="col-sm-12">
            <div class="col-md-3">
                  <div class="form-group">
                    <label for="estatus" class="col-sm-4 control-label" >Lavandería</label>
                    <div id= "personas" class="col-sm-8">
                     {!! Form:: select('lavanderia', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'lavanderia')) !!}
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label for="estatus" class="col-sm-5 control-label" >Cuarto de estudio</label>
                      <div class="col-sm-7">
                          {!! Form:: select('cestudio', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'cestudio')) !!}
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label for="salcomerdor" class="col-sm-4 control-label" >Terraza</label>
                    <div id= "personas" class="col-sm-8">
                     {!! Form:: select('sala', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'salcomedor')) !!}
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label for="estatus" class="col-sm-4 control-label" >Dormitorios Nº</label>
                      <div class="col-sm-8">
                          {!! Form:: select('ndormitorio', App\Dormitorio::pluck('numero'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'ndormitorio')) !!}
                      </div>
                  </div>
                </div>
            </div>



            </div>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
          <div class="panel-heading"><h4><strong>Tipo de Vivienda</strong></h4></div>
            <div class="panel-body">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="vivienda" class="col-sm-2 control-label" >Tipo</label>
                  <div id= "vivienda" class="col-sm-6">
                  {!! Form:: select('tipo_vivienda', App\Tipo_vivienda::pluck('tipo_vivienda'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'vivienda','id'=>'id_d')) !!}
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
                      {!! Form:: select('zona_ub', App\Zona_ub::pluck('zona_ub'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'zona_ub')) !!}
                    </div>
                </div>
              </div>

              <div class="col-md-12">
                <div class="form-group">
                <h4><strong>Materiales de construcción</strong></h4>
              </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="vivienda" class="col-sm-2 control-label" >Paredes</label>
                  <div class="col-sm-6">
                    {!! Form:: select('material_pared', App\Material_pared::pluck('material_pared'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'paredes', 'id'=>'id_pared')) !!}
                    <script src="/js/show.js"></script>
                      <div class="form" id="pared" style="display: none;">
                        <label class="col-sm-2 control-label" >Especifíque</label>
                        <textarea type="text" id="id_textarea_pared" class="form-control" name="descripcion1" placeholder="Especifíque"></textarea>
                      </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="vivienda" class="col-sm-2 control-label" >Pisos</label>
                    <div class="col-sm-6">
                      {!! Form:: select('material_piso', App\Material_piso::pluck('material_piso'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'pisos', 'id'=>'id_piso')) !!}
                      <script src="/js/show.js"></script>
                       <div class="form" id="piso" style="display: none;">
                        <label class="col-sm-2 control-label" >Especifíque</label>
                        <textarea type="text" id="id_textarea_piso" class="form-control" name="descripcion2" placeholder="Especifíque"></textarea>
                       </div>
                    </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="vivienda" class="col-sm-2 control-label" >Techo</label>
                    <div class="col-sm-6">
                      {!! Form:: select('material_techo', App\Material_techo::pluck('material_techo'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'techos', 'id'=>'id_zinc')) !!}
                      <script src="/js/show.js"></script>
                        <div class="form" id="zinc" style="display: none;">
                          <label class="col-sm-2 control-label" >Especifíque</label>
                          <textarea type="text" id="id_textarea_zinc" class="form-control" name="descripcion3" placeholder="Especifíque"></textarea>
                        </div>
                    </div>
                </div>
              </div>


              <div class="col-md-12">
                <div class="form-group">
                <h4><strong>La vivienda es:</strong></h4>
              </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <div class="col-sm-6">
                    <label for="vivienda" class="col-sm-2 control-label" >Tamaño</label>
                  </div>
                    <div class="col-sm-6">
                      {!! Form:: select('tamagno_vivienda', App\Tamagno_vivienda::pluck('tamagno_vivienda'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'tamagno_vivienda')) !!}
                    </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <div class="col-sm-6">
                    <label for="vivienda" class="col-sm-2 control-label" >Iluminación</label>
                  </div>
                    <div class="col-sm-6">
                      {!! Form:: select('material_techo', App\Iluminacion::pluck('tipo_iluminacion'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'iluminacion_vivienda', 'id'=>'id_ilum')) !!}
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
                  <div class="col-sm-6">
                    <label for="vivienda" class="col-sm-2 control-label" >Instalaciones sanitarias</label>
                  </div>
                    <div class="col-sm-6">
                      {!! Form:: select('Insta_sanitaria', App\Insta_sanitaria::pluck('Insta_sanitaria'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'insta_sanitaria_vivienda')) !!}
                    </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <div class="col-sm-6">
                      <label for="vivienda" class="control-label" >Nº de Ventanas</label>
                  </div>
                    <div class="col-sm-6">
                      <select class="form-control" name="num_ventana" >
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
                  <div class="col-sm-6">
                   <label for="vivienda" class="control-label" >Suministro de agua</label>
                  </div>
                  <div class="col-sm-6">
                    {!! Form:: select('suminis_agua', App\Suminis_agua::pluck('suminis_agua'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'suminis_agua')) !!}
                  </div>
                </div>
              </div>
              <div class="  col-md-4">
                <div class="form-group">
                  <div class="col-sm-6">
                   <label for="vivienda" class="control-label" >De dónde proviene</label>
                  </div>
                  <div class="col-sm-6">
                    {!! Form:: select('prov_agua', App\Prov_agua::pluck('prov_agua'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'prov_agua')) !!}
                  </div>
                </div>
              </div>
            </div>
        </div>
      </div>



        <div class="row">
        <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
          <div class="panel-heading"><h4><strong>La vivienda es:</strong></h4></div>
            <div class="panel-body">

            </div>
          </div>
      </div>



      <div class="row">
        <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
          <div class="panel-heading"><h4><strong>Condiciones físicas de la vivienda</strong></h4></div>
            <div class="panel-body">
              <div class="col-md-12">
                <textarea type="text" id="id_textarea_condicion" class="form-control" name="condiciones" placeholder="Describa las condiciones en las que se encuentra la vivineda..."></textarea>
              </div>

            </div>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
          <div class="panel-heading"><h4><strong>Eqiupo y mobiliario con que cuenta su hogar</h4></strong></h4></div>
            <div class="panel-body">
              <div class="form-group">
              <div class="col-md-3">
                <div class="col-sm-6">
                 <label for="vivienda" class="control-label" >Juego de sala</label>
                </div>
                <div class="col-sm-6">
                  {!! Form:: select('sala', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'sala')) !!}
                </div>
              </div>
              <div class="col-md-3">
              <div class="col-sm-6">
                 <label for="vivienda" class="control-label" >Comedor</label>
                </div>
                <div class="col-sm-6">
                  {!! Form:: select('sala', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'comedor')) !!}
                </div>
              </div>
              <div class="col-md-3">
              <div class="col-sm-6">
                 <label for="vivienda" class="control-label" >Televisión</label>
                </div>
                <div class="col-sm-6">
                  {!! Form:: select('tv', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'tv')) !!}
                </div>
              </div>
              <div class="col-md-3">
                <div class="col-sm-6">
                   <label for="vivienda" class="control-label" >DVD</label>
                </div>
                <div class="col-sm-6">
                    {!! Form:: select('dvd', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'dvd')) !!}
                </div>
              </div>
              </div>
              <div class="form-group">
            <div class="col-md-3">
              <div class="col-sm-6  ">
               <label for="vivienda" class="control-label" >Componente</label>
              </div>
              <div class="col-sm-6">
                {!! Form:: select('sonido', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'sonido')) !!}
              </div>
            </div>
            <div class="col-md-3">
            <div class="col-sm-6">
               <label for="vivienda" class="control-label" >Refrigeradora</label>
              </div>
              <div class="col-sm-6">
                {!! Form:: select('refri', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'refri')) !!}
              </div>
            </div>
            <div class="col-md-3">
            <div class="col-sm-6">
               <label for="vivienda" class="control-label" >Estufa</label>
              </div>
              <div class="col-sm-6">
                {!! Form:: select('estufa', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'estufa')) !!}
              </div>
            </div>
            <div class="col-md-3">
            <div class="col-sm-6">
               <label for="vivienda" class="control-label" >A/C</label>
              </div>
              <div class="col-sm-6">
                {!! Form:: select('aire', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'aire')) !!}
              </div>
            </div>
          </div>

          <div class="form-group">
        <div class="col-md-3">
          <div class="col-sm-6">
           <label for="vivienda" class="control-label" >Micro Onda</label>
          </div>
          <div class="col-sm-6">
            {!! Form:: select('micro', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'micro')) !!}
          </div>
        </div>
        <div class="col-md-3">
        <div class="col-sm-6">
           <label for="vivienda" class="control-label" >Lavadora</label>
          </div>
          <div class="col-sm-6">
            {!! Form:: select('lavadora', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'lavadora')) !!}
          </div>
        </div>
        <div class="col-md-3">
        <div class="col-sm-6">
           <label for="vivienda" class="control-label" >Abanico</label>
          </div>
          <div class="col-sm-6">
            {!! Form:: select('abanico', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'abanico')) !!}
          </div>
        </div>
        <div class="col-md-3">
        <div class="col-sm-6">
           <label for="vivienda" class="control-label" >Otros</label>
          </div>
          <div class="col-sm-6">
             <div class="form" id="ilum" style="display: block;">
                  <textarea type="text" id="id_textarea_ilum" class="form-control" name="otros_mob" placeholder="Especifíque"></textarea>
            </div>
          </div>
        </div>
        </div>
      </div>
    </div>
  </div>





      <div class="row">
      <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
        <div class="panel-heading"><h4><strong>Estudiantes que cambian de residencia por motivo de estudios</strong></h4></div>
          <div class="panel-body">
            <div class="col-md-4">

              <label class="control-label" >Dirección actual</label>
              <textarea type="text" id="id_textarea_dactual" class="form-control" name="dire_actual" placeholder="Especifíque"></textarea>

            </div>

            <div class="col-md-4">
            <label class="control-label" >Tiempo de residir en el lugar</label>
            <textarea type="text" id="id_textarea_tresidir" class="form-control" name="tiempo_residir" placeholder="Especifíque"></textarea>
            </div>

            <div class="col-md-4">
            <label class="control-label" >Teléfono</label>
            <textarea type="text" id="id_textarea_dtel" class="form-control" name="telefono" placeholder="0000-0000"></textarea>
            </div>
          </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
          <div class="panel-body">
          <div class="col-md-3">
                  <label for="condiciones" >¿Cambió de residencia por motivos de estudios?</label>
                      {!! Form:: select('cambio', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'cambio', 'id'=>'id_cambio')) !!}
                      <script src="/js/show.js"></script>



              </div>
            <div class="col-md-3">
                <div class="form-group">
                  <label for="vive" class="col-sm-5 control-label" >¿Con quién vive?</label>
                  <div id= "vivienda" class="col-sm-7">
                  {!! Form:: select('residente', App\Residente::pluck('residente'), null, array('placeholder' => '-Seleccionar-','class'=>'form-control', 'name'=>'residente','id'=>'id_residente')) !!}
                  <script src="/js/show1.js"></script>
                    <div class="form" id="residente" style="display: none;">
                      <label class="col-sm-2 control-label" >Especifíque111</label>
                      <textarea type="text" id="id_textarea_residente" class="form-control" name="descripcion" placeholder="Especifíque"></textarea>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-3">
                <div class="form-group">
                 <div class="col-sm-5">
                  <label for="residencia" class="control-label" >Tipo de vivienda</label>
                  </div>
                    <div class="col-sm-7">
                      {!! Form:: select('tipo_vivienda', App\Tipo_vivienda::pluck('tipo_vivienda'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'facilidad', 'id'=>'id_tipo')) !!}
                      <script src="/js/show1.js"></script>
                        <div class="form" id="tipo_vivienda" style="display: none;">
                          <label class="col-sm-2 control-label" >Especifíque</label>
                          <textarea type="text" id="id_textarea_tipo" class="form-control" name="descripcion" placeholder="Especifíque"></textarea>
                        </div>
                    </div>
                </div>
              </div>



              <div class="col-md-3">
                <div class="form-group">
                 <div class="col-sm-5">
                  <label for="condiciones" class="control-label" >Condición</label>
                  </div>
                    <div class="col-sm-7">
                      {!! Form:: select('condiciones', App\Tendencia::pluck('tendencia'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'con_tendencia', 'id'=>'id_tendencia')) !!}
                      <script src="/js/show.js"></script>
                    <div class="form" id="tendencia" style="display: none;">
                      <label class="col-sm-2 control-label" >Especifíque</label>
                      <textarea type="text" id="id_textarea_tendencia" class="form-control" name="Descipcion" placeholder="Especifíque"></textarea>
                    </div>
                    </div>
                </div>
              </div>




      </div>
    </div>
    <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
    <div class="col-md-6">
      <div class="panel-body">
      <div class="col-sm-5">
                <label for="residencia" class="control-label" >Tipo de vivienda</label>
            </div>
            <div class="col-sm-7">
              {!! Form:: select('facilidad', App\Facilidad::pluck('tipo_facilidad'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'facilidad', 'id'=>'id_facilidad')) !!}
            </div>
      </div>
    </div>
    <div class="col-md-6">



    </div>
    </div>
    </div>

<div class="row">
      <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
        <div class="panel-heading"><h4><strong>Condiciones físicas de la vivienda, descríbalas:</strong></h4></div>
          <div class="panel-body">
            <div class="form-group panel-heading" >
            <textarea type="text" id="id_textarea_dactual" class="form-control" name="con_fic_viv" placeholder="Especifíque"  rows="4"></textarea>
            </div>
            </div>
          </div>
      </div>

      <div class="row">
      <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
        <div class="panel-heading"><h4><strong>Otras facilidades</strong></h4></div>
          <div class="panel-body">
            <div class="form-group panel-heading" >
            <textarea type="text" id="id_textarea_facilidad" class="form-control" name="otra_fac" placeholder="Especifíque"  rows="4"></textarea>
            </div>
            </div>
          </div>
      </div>
      <div class="row">
      <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
        <div class="panel-heading"><h4><strong>Comentarios adicionales</strong></h4></div>
          <div class="panel-body">
            <div class="form-group panel-heading" >
            <textarea type="text" id="id_textarea_comentarios" class="form-control" name="com_adic" placeholder="Especifíque"  rows="4"></textarea>
            </div>
            </div>
          </div>
      </div>




  </form>
