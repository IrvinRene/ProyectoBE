
  <form class="form-horizontal" role="form" method="POST" action="{{ url('datos_personales')}}" >
    {{ csrf_field() }}
    <div class="row">
      <div class="col-md-12 panel-info" style="padding-left: 0px;padding-right: 0px;">
        <div class="panel-heading"><h4><strong>Datos Personales</strong></h4></div>
          <div class="panel panel-info">
           <div class="panel-body">
              <div class="col-md-3">
                <label class="control-label">Nombre &nbsp;</label><input type="text" id="viv" class="form-control" name="nombre_empresa" placeholder="Nombre"></input>&nbsp; &nbsp; &nbsp;
              </div>
              <div class="col-md-3">
                <label class="control-label">Apellido &nbsp; </label><input type="text" id="1" class="form-control" name="nombre_empresa" placeholder="Apellido" ></input>&nbsp; &nbsp; &nbsp;
              </div>
              <div class="col-md-3">
                <label class="control-label">No. de Cédula &nbsp; </label><input type="number" id="2" class="form-control" name="nombre_empresa" placeholder="No. de Cédula" ></input>&nbsp; &nbsp; &nbsp;
              </div>
              <div class="col-md-3">
                <label class="control-label">Edad &nbsp; </label><input type="number" id="3" class="form-control" name="nombre_empresa" placeholder="Edad" onchange="sumar(this.value);" ></input>&nbsp; &nbsp; &nbsp;
              </div>
               <div class="col-md-3">
                <label class="control-label">Sexo &nbsp; </label>&nbsp; &nbsp; &nbsp;
                {!! Form:: select('sexo', App\Sexo::pluck('sexo'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'sexo','id'=>'id_d')) !!}
              </div>
                <div class="col-md-3">
                <label class="control-label">Estado Civil &nbsp;</label>&nbsp; &nbsp; &nbsp;
                {!! Form:: select('estado_civil', App\Estado_civil::pluck('estado_civil'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'estado_civil','id'=>'id_d')) !!}
              </div>
              <div class="col-md-3">
                <label class="control-label">Nacionalidad &nbsp;</label>&nbsp; &nbsp; &nbsp;
                {!! Form:: select('nacionalidad', App\Nacionalidad::pluck('nacionalidad'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'nacionalidad','id'=>'id_d')) !!}
              </div>
              <div class="col-md-3">
                <label class="control-label">Seguro Social &nbsp; </label><input type="text" id="5" class="form-control" name="nombre_empresa" placeholder="Seguro Social" ></input>&nbsp; &nbsp; &nbsp;
              </div>
              <div class="col-md-3">
                <label class="control-label">Tipo de Sangre &nbsp; </label>&nbsp; &nbsp; &nbsp;
                {!! Form:: select('tipo_de_sangre', App\Tipo_de_sangre::pluck('tipo_de_sangre'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'tipo_de_sangre','id'=>'id_d')) !!}
              </div>
              <div class="col-md-3">
                <label class="control-label">Provincia &nbsp; </label>&nbsp; &nbsp; &nbsp;
                {!! Form:: select('provincia', App\Provincia::pluck('provincia'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'provincia','id'=>'id_d')) !!}
              </div>
              <div class="col-md-3">
                <label class="control-label">Distrito &nbsp; </label>&nbsp; &nbsp; &nbsp;
                {!! Form:: select('distrito', App\Distrito::pluck('distrito'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'distrito','id'=>'id_d')) !!}
              </div>
              <div class="col-md-3">
                <label class="control-label">Corregimiento&nbsp; </label>&nbsp; &nbsp; &nbsp;
                {!! Form:: select('corregimiento', App\Corregimiento::pluck('corregimiento'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'corregimiento','id'=>'id_d')) !!}
              </div>
              <div class="col-md-3">
                <label class="control-label">Dirección &nbsp;</label><input type="text" id="12" class="form-control" name="nombre_empresa" placeholder="Dirección"></input>&nbsp; &nbsp; &nbsp;
              </div>
              <div class="col-md-3">
                <label class="control-label">E-Mail &nbsp; </label><input type="number" id="14" class="form-control" name="nombre_empresa" placeholder="E-Mail" ></input>&nbsp; &nbsp; &nbsp;
              </div>
              <div class="col-md-3">
                <label class="control-label">Teléfono &nbsp; </label><input type="number" id="15" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);"></input>&nbsp; &nbsp; &nbsp;
              </div>
              <div class="col-md-3">
                <label class="control-label">Fecha de nacimiento &nbsp; </label><input type="date" id="16" class="form-control" name="nombre_empresa" placeholder="Fecha de Nacimiento" ></input>&nbsp; &nbsp; &nbsp;
            </div>
          </div>
        </div>
      </div>
    </div>
  </form>


   <div class="row">
      <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
        <div class="panel panel-default">
          <div class="panel-heading">Documentos</div>
            <div class="form-group">
                <label for="urlimgnot" class="col-sm-4">Adjuntar Foto de Perfil</label>
                <input type="file" id="urlimgnot">
            </div>
            <div class="form-group">
                <label for="urlimgnot" class="col-sm-4">Foto de Facturas</label>
                <input type="file" id="urlimgnot">
            </div>

            <button type="submit" class="btn btn-primary" class="col-sm-6">Enviar</button>

        </div>
      </div>
    </div>
  </form>
