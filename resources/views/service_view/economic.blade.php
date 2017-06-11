@extends('layouts.marco')

@section('situación_economica')
<div class="container">

  <form class="form-horizontal" role="form" method="POST" action="{{ url('form')}}" >
      {{ csrf_field() }}
      <div class="row">
          <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
            <div class="panel-heading"><h4><strong>Situación Económica</strong></h4></div>
            <div class="panel-body">
              <div class="col-md-6">
                  <div class="form-group">
                      <label  class="col-md-3 control-label" >¿Usted Trabaja?</label>
                      <div id= "economico" class="col-sm-4">
                        <select name="id_decision" class="form-control" id='id_decision'>
                          <option value="0" disabled selected>--Seleccionar--</option>
                          @foreach($decisions as $decision)
                            <option value="{{$decision->id_decision}}">{{$decision->decision}}</option>
                          @endforeach
                        </select>
                      <script src="/js/situacion.js"></script>
                      </div>
                  </div>
              </div>
              <div  class="row">
                <div class="col-md-12" id="div_trabajo" style="display: none;">
                  <div class="col-md-3">
                    <label class="control-label">Nombre de la Empresa &nbsp;</label><input type="text" id="id_nombre_empresa" class="form-control" name="nombre_empresa" placeholder=""></input>&nbsp; &nbsp; &nbsp;
                  </div>
                  <div class="col-md-3">
                    <label class="control-label">Ocupación&nbsp; </label><input type="text" id="id_ocupacion" class="form-control" name="nombre_empresa" placeholder=""></input>&nbsp; &nbsp; &nbsp;
                  </div>
                  <div class="col-md-3">
                    <label class="control-label">salario&nbsp; </label><input type="text" id="id_salario" class="form-control" name="nombre_empresa" placeholder=""></input>&nbsp; &nbsp; &nbsp;<br>
                  </div>
                  <div class="col-md-3">
                    <label class="control-label">Teléfono&nbsp; </label><input type="text" id="id_nombre_telefono" class="form-control" name="nombre_empresa" placeholder=""></input>&nbsp; &nbsp; &nbsp;
                </div>
              </div>

              <div  class="row">
                <div class="col-md-6" id="div_dtrabajo" style="display: none;">
                  <div class="col-md-6">
                    <label class="control-label">¿Porqué no trabaja? &nbsp;</label><textarea type="text" id="id_porque_no" class="form-control" name="porque_no" placeholder="Especifique"></textarea>&nbsp; &nbsp; &nbsp;
                  </div>
              </div>
          </div>
        </div>
      </div>
          <h4><strong>Financiamiento de Estudios</strong></h4>
          <div class="col-md-12">
            <div class="form-group">
              @foreach($recursos as $recurso)
              <input type="checkbox" name="recurso" value={{$recurso->id_recurso}}">{{$recurso->recurso}}</input><br>
              @endforeach
            </div>
          </div>
  </form>
</div>

@endsection
