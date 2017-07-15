<div class="container">
  <form class="form-horizontal" role="form" method="POST" action="{{ url('residencia')}}" >
      {{ csrf_field() }}
    <div class="row">
      <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
        <div class="panel-heading"><h4><strong>Estudiantes que cambian de residencia por motivo de estudios</strong></h4></div>
        	<div class="panel-body">
        	  <div class="col-md-4">

        			<label class="control-label" >Dirección actual</label>
        			<textarea type="text" id="id_textarea_dactual" class="form-control" name="descripcion" placeholder="Especifíque"></textarea>

        	  </div>

        	  <div class="col-md-4">
        		<label class="control-label" >Tiempo de residir en el lugar</label>
        		<textarea type="text" id="id_textarea_tresidir" class="form-control" name="descripcion" placeholder="Especifíque"></textarea>
        	  </div>

        	  <div class="col-md-4">
        		<label class="control-label" >Teléfono</label>
        	 	<textarea type="text" id="id_textarea_dtel" class="form-control" name="descripcion" placeholder="0000-0000"></textarea>
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
                      {!! Form:: select('tipo_vivienda', App\Tipo_vivienda::pluck('tipo_vivienda'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'tipo_vivienda', 'id'=>'id_tipo')) !!}
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
                      {!! Form:: select('condiciones', App\Tendencia::pluck('tendencia'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'condiciones', 'id'=>'id_condicion')) !!}

                    </div>
                </div>
              </div>




      </div>
    </div>
    <div class="col-sm-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
    	<div class="panel-body">
			<div class="col-sm-5">
                <label for="residencia" class="control-label" >Tipo de vivienda</label>
            </div>
            <div class="col-sm-7">
              {!! Form:: select('facilidad', App\Facilidad::pluck('tipo_facilidad'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'facilidad', 'id'=>'id_facilidad')) !!}
            </div>
    	</div>
    </div>
    </div>

<div class="row">
      <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
        <div class="panel-heading"><h4><strong>Condiciones físicas de la vivienda, descríbalas:</strong></h4></div>
        	<div class="panel-body">
        		<div class="form-group panel-heading" >
       			<textarea type="text" id="id_textarea_dactual" class="form-control" name="descripcion" placeholder="Especifíque"  rows="4"></textarea>
        		</div>
        	  </div>
        	</div>
      </div>

      <div class="row">
      <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
        <div class="panel-heading"><h4><strong>Otras facilidades</strong></h4></div>
        	<div class="panel-body">
        		<div class="form-group panel-heading" >
       			<textarea type="text" id="id_textarea_facilidad" class="form-control" name="descripcion" placeholder="Especifíque"  rows="4"></textarea>
        		</div>
        	  </div>
        	</div>
      </div>
      <div class="row">
      <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
        <div class="panel-heading"><h4><strong>Comentarios adicionales</strong></h4></div>
        	<div class="panel-body">
        		<div class="form-group panel-heading" >
       			<textarea type="text" id="id_textarea_comentarios" class="form-control" name="descripcion" placeholder="Especifíque"  rows="4"></textarea>
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
