@extends('layouts.marco')

@section('situación_economica')
<div class="container">

  <form class="form-horizontal" role="form" method="POST" action="{{ url('form')}}" >
      {{ csrf_field() }}
      <div class="row">
          <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
            <div class="panel-heading"><h4><strong>3. Situación Económica</strong></h4></div>
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
                    <label class="control-label">salario&nbsp; </label><input type="text" id="id_salario" class="form-control" name="nombre_empresa" placeholder=""></input>&nbsp; &nbsp; &nbsp;
                  </div>
                  <div class="col-md-3">
                    <label class="control-label">Teléfono&nbsp; </label><input type="text" id="id_nombre_telefono" class="form-control" name="nombre_empresa" placeholder=""></input>&nbsp; &nbsp; &nbsp;
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12" id="div_ddtrabajo" style="display: none;">
                <div class="col-md-6">
                  <div class="form-group">
                      <label  class="col-md-3 control-label" text-align="left" >Tipo de Trabajo</label>
                      <div id= "economico" class="col-sm-4">
                        <select name="id_decision2" class="form-control" id='id_decision2'>
                          <option value="0" disabled selected>--Seleccionar--</option>
                          @foreach($lugar_trabajos as $lugar_trabajo)
                            <option value="{{$lugar_trabajo->id_lugar_trabajo}}">{{$lugar_trabajo->lugar_trabajo}}</option>
                          @endforeach
                        </select>
                      </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                      <label  class="col-md-4 control-label" >Condición de Trabajo</label>
                      <div id= "economico" class="col-sm-4">
                        <select name="id_decision3" class="form-control" id='id_decision3'>
                          <option value="0" disabled selected>--Seleccionar--</option>
                          @foreach($condicions as $condicion)
                            <option value="{{$condicion->id_condicion}}">{{$condicion->condicion}}</option>
                          @endforeach
                        </select>
                      </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12" id="div_dtrabajo" style="display: none;">
                  <div class="col-md-6">
                    <label class="control-label col-sm-3" text-align="left">¿Porqué no? &nbsp;</label><textarea type="text" id="id_porque_no" class="form-control" name="porque_no" placeholder="Especifique"></textarea>&nbsp; &nbsp; &nbsp;
                  </div>
              </div>
            </div>
        </div>
        </div>
        <div class="panel panel-info">
          <div class="panel-body">
              <div class="col-md-6">
                <h4><strong>Financiamiento de Estudios</strong></h4>
                @foreach($recursos as $recurso)
                  <input type="checkbox" name="recurso" value={{$recurso->id_recurso}}">{{$recurso->recurso}}</input><br>
                @endforeach
              </div>
              <div class="col-md-6">
                <h4><strong>¿Cuál es el promedio mensual de ingresos que recibe para financiar sus estudios?</strong></h4>
                <input class="col-md-4"type="number" id="ingreso" class="form-control" name="Ingreso_mensual" placeholder="Ingreso en cifras"></input>
              </div>
          </div>
        </div>
        <div class="panel panel-info">
          <div class="panel-body">
            <h4><strong>Gasto Familiar Aproximado</strong></h4>
            <div class="col-md-3">
              <label class="control-label">Vivienda &nbsp;</label><input type="money" id="viv" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);" ></input>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-3">
              <label class="control-label">Alimentación &nbsp; </label><input type="money" id="1" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);" ></input>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-3">
              <label class="control-label">Transporte &nbsp; </label><input type="number" id="2" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);" ></input>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-3">
              <label class="control-label">Agua &nbsp; </label><input type="number" id="3" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);" ></input>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-3">
              <label class="control-label">Luz &nbsp;</label><input type="number" id="4" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);"></input>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-3">
              <label class="control-label">Celular &nbsp; </label><input type="number" id="5" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);"></input>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-3">
              <label class="control-label">Colegios &nbsp; </label><input type="number" id="6" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);"></input>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-3">
              <label class="control-label">Colegial &nbsp; </label><input type="number" id="7" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);"></input>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-3">
              <label class="control-label">Material didáctico &nbsp;</label><input type="number" id="8" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);"></input>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-3">
              <label class="control-label">Combustible &nbsp; </label><input type="number" id="9" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);"></input>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-3">
              <label class="control-label">Pensión Alimenticia &nbsp; </label><input type="10" id="pension_ali" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);"></input>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-3">
              <label class="control-label">Préstamo &nbsp; </label><input type="number" id="11" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);"></input>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-3">
              <label class="control-label">Mueblería &nbsp;</label><input type="number" id="12" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);"></input>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-3">
              <label class="control-label">Tarjeta de Crédito &nbsp; </label><input type="13" id="tarjeta_cred" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);"></input>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-3">
              <label class="control-label">Recreación &nbsp; </label><input type="number" id="14" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);"></input>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-3">
              <label class="control-label">Teléfono &nbsp; </label><input type="number" id="15" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);"></input>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-3">
              <label class="control-label">Otros   &nbsp; </label><input type="number" id="16" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);"></input>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-5">
              <label class="control-label">Especifíque a qué corresponde otros &nbsp; </label><textarea type="number" id="gastos_otross" class="form-control" name="nombre_empresa" placeholder="" onchange="sumar(this.value);"></textarea>&nbsp; &nbsp; &nbsp;
            </div>
            <div class="col-md-5">
              <h4><strong>Total de Gastos &nbsp;</strong></h4>&nbsp; <strong><span style="color: red;" id="spTotal"></span></strong>

            </div>


          </div>
        </div>
  </form>
</div>

@endsection
