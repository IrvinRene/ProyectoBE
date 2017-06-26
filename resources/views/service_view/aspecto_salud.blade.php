@extends('layouts.marco')
@section('aspecto_salud')

<div class="container">

  <form class="form-horizontal" role="form" method="POST" action="{{ url('aspecto_salud')}}" >
      {{ csrf_field() }}
      <div class="row">
        <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
          <div class="panel-heading"><h4><strong>Aspecto salud</strong></h4></div>
            <div class="panel-body">
              <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="aspecto_salud" class="col-sm-6 control-label" >¿Padece de algún impedimento físico?</label>
                  <div id= "aspecto_salud" class="col-sm-6">
                    {!! Form:: select('idEnfermedad_impedimento', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'Enfermedad_impedimento')) !!}
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="academica" class="col-sm-6 control-label" >Tipo de enfermedad o impedimento</label>
                  <div id= "academica" class="col-sm-6">
                  {!! Form:: select('tipo_enfermedad_impedimento', App\Tipo_enfermedad_impedimento::pluck('tipo_enfermedad_impedimento'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'tipo_enfermedad_impedimento','id'=>'id_d')) !!}
                  </div>
                </div>
            </div>
          </div>
        </div>

      </div>

      <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
        <div class="panel-heading"><h4><strong>Aspecto Deportivos</strong></h4></div>
          <div class="panel-body">
            <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label for="aspecto_salud" class="col-sm-6 control-label" >¿Participa o ha participado en algun grupo deporte?</label>
                <div id= "aspecto_salud" class="col-sm-6">
                  {!! Form:: select('idDisciplina', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'Enfermedad_impedimento')) !!}
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label for="aspecto_deportivo" class="col-sm-6 control-label" >Disciplina: </label>
                <div id= "aspecto_deportivo" class="col-sm-6">
                {!! Form:: select('tipo_disciplina', App\Disciplina::pluck('tipo_disciplina'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'tipo_disciplina','id'=>'id_d')) !!}
                </div>
              </div>
          </div>
        </div>
      </div>
    </div>


    <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
      <div class="panel-heading"><h4><strong>Aspecto Deportivos</strong></h4></div>
        <div class="panel-body">
          <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label for="aspecto_salud" class="col-sm-6 control-label" >¿Participa o ha participado en algun grupo deporte?</label>
              <div id= "aspecto_salud" class="col-sm-6">
                {!! Form:: select('idDisciplina', App\Decision::pluck('decision'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'Enfermedad_impedimento')) !!}
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label for="aspecto_deportivo" class="col-sm-6 control-label" >Disciplina: </label>
              <div id= "aspecto_deportivo" class="col-sm-6">
              {!! Form:: select('tipo_disciplina', App\Disciplina::pluck('tipo_disciplina'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'tipo_disciplina','id'=>'id_d')) !!}
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>



  </div>
</div>



@endsection
