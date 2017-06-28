@extends('layouts.marco')
@section('datos_personales')
<div class="container">

  <form class="form-horizontal" role="form" method="POST" action="{{ url('datos_personales')}}" >
      {{ csrf_field() }}
      <div class="row">
        <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
          <div class="panel-heading"><h4><strong>Datos Personales</strong></h4></div>
            <div class="panel-body">
              <div class="row">
              <div class="col-md-3">
                          <div class="form-group">
                            <label for="academica" class="col-sm-6 control-label">Nombre</label>
                            <div id="vivienda" class="col-sm-6">
                              <input type="text" size="15" maxlength="30" value="Nombre" name="nombre">
                            </div>
                          <!--  <textarea type="text" id="id_textarea_condicion" class="col-sm-6 form-control" name="aula" placeholder="Describa..."></textarea> -->
                        </div>
                </div>

              <div class="col-md-3">
                          <div class="form-group">
                            <label for="academica" class="col-sm-6 control-label" >Apellido</label>
                            <div class="col-sm-6">
                              <input type="text" size="15" maxlength="30" value="" name="Apellido" placeholder="Apellido">
                          <!--   <textarea type="text" id="id_textarea_condicion" class="form-control" name="aula" placeholder="Describa..."></textarea> -->
                          </div></div>
              </div>

                        <div class="col-md-3">
                          <div class="form-group">
                            <label for="academica" class="col-sm-6 control-label" >No.Cédula</label>
                            <div class="col-sm-6">
                            <input type="text" size="15" maxlength="30" value="" name="" placeholder="Nº cédula">
                          </div></div>
                        </div>
                        <div class="col-md-3">
                          <div class="form-group">
                            <label for="academica" class="col-sm-6 control-label" >Edad</label>
                            <div class="col-sm-6">
                            <input type="text" size="5" maxlength="15" value="" name="" placeholder="Edad">
                          </div></div>
                        </div>

                        <div class="row">
                        <div class="col-md-3">
                          <div class="form-group">
                            <label for="academica" class="col-sm-6 control-label" >Nacionalidad</label>
                            <div class="col-sm-6">
                              {!! Form:: select('nacionalidad', App\Nacionalidad::pluck('nacionalidad'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'nacionalidad','id'=>'id_d')) !!}
                          </div></div>
                        </div>

                        <div class="col-md-3">
                          <div class="form-group">
                            <label for="academica" class="col-sm-6 control-label" >S.Social</label>
                            <div class="col-sm-6">
                            <input type="text" size="15" maxlength="30" value="" name="" placeholder="Seguro Social">
                          </div></div>
                        </div>

                        <div class="col-md-3">
                          <div class="form-group">
                            <label for="academica" class="col-sm-6 control-label">Tipo de Sangre</label>
                            <div class="col-sm-6">
                              {!! Form:: select('tipo_de_sangre', App\Tipo_de_sangre::pluck('tipo_de_sangre'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'tipo_de_sangre','id'=>'id_d')) !!}
                          </div></div>
                        </div>

                        <div class="col-md-3">
                          <div class="form-group">
                            <label for="academica" class="col-sm-5 control-label">Sexo</label>
                            <div class="col-sm-5">
                              {!! Form:: select('sexo', App\Sexo::pluck('sexo'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'sexo','id'=>'id_d')) !!}
                          </div></div>
                        </div>

                      </div>
                      </div>
                </div>
              </div>
            </div>
              </div>
            </div>
          </div>
        </div>

      </div>

@endsection
