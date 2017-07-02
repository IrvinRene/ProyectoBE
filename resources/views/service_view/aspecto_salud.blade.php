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
                  <div id= "drop1" class="col-sm-4">
                    <select name="drop11" class="form-control" id='drop_aspect'>
                      <option value="0" disabled selected>--Seleccionar--</option>
                      @foreach($decisions as $decision)
                        <option value="{{$decision->id_decision}}">{{$decision->decision}}</option>
                      @endforeach
                    </select>
                  </div>
                  <script src="/js/aspectos.js"></script>
                </div>
                </div>
            </div>

          <div class="row">
            <div class="col-md-6" id="drop_enf" style="display:none;">
              <div class="form-group">
                <label for="academica" class="col-sm-6 control-label" >Tipo de enfermedad o impedimento: </label>
                <div class="col-md-6">
                  @foreach($enfermedades as $enfermedad)
                  <input type="checkbox" value="{{$enfermedad->id_tipo_enf_imped}}" name="id_enfermedad{{$enfermedad->id_tipo_enf_imped}}"/><label>{{$enfermedad->tipo_enfermedad_impedimento}}</label><br>
                  @endforeach
                </div>

                <!--<div id= "academica" class="col-sm-6">
                {!! Form:: select('tipo_enfermedad_impedimento', App\Tipo_enfermedad_impedimento::pluck('tipo_enfermedad_impedimento'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'tipo_enfermedad_impedimento','id'=>'id_d')) !!}
              </div>-->
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
                <div id= "drop2" class="col-sm-4">
                  <select name="drop21" class="form-control" id="drop_aspect2">
                    <option value="0" disabled selected>--Seleccionar--</option>
                    @foreach($decisions as $decision)
                      <option value="{{$decision->id_decision}}">{{$decision->decision}}</option>
                    @endforeach
                  </select>
                </div>
                <script src="/js/aspectos.js"></script>
              </div>
            </div>

            <!--<div class="col-md-6">
              <div class="form-group">
                <label for="aspecto_deportivo" class="col-sm-6 control-label" >Disciplina: </label>
                <div id= "aspecto_deportivo" class="col-sm-6">
                {!! Form:: select('tipo_disciplina', App\Disciplina::pluck('tipo_disciplina'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'tipo_disciplina','id'=>'id_disciplina')) !!}
                </div>
              </div>
          </div>-->



        </div>
        <div class="row">
          <div class="col-md-6" id="drop_disc" style="display:none;">
            <div class="form-group">
              <label for="aspecto_deportivo" class="col-sm-3 control-label" >Disciplina: </label>
              <div class="col-md-6">
                  @foreach($disciplinas as $disciplina)
                  <input type="checkbox" value="{{$disciplina->id_disicplina}}" name="id_disicplina{{$disciplina->id_disicplina}}"/><label>{{$disciplina->tipo_disciplina}}</label><br>
                  @endforeach
              </div>
          </div>
          </div>


        </div>

      </div>
    </div>


    <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
      <div class="panel-heading"><h4><strong>Aspecto Cultural</strong></h4></div>
        <div class="panel-body">
          <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label for="aspecto_salud" class="col-sm-6 control-label" >¿Participa o ha participado en algun grupo cultural?</label>
              <div id= "drop3" class="col-sm-4">
                <select name="drop31" class="form-control" id='drop_aspect3'>
                  <option value="0" disabled selected>--Seleccionar--</option>
                  @foreach($decisions as $decision)
                    <option value="{{$decision->id_decision}}">{{$decision->decision}}</option>
                  @endforeach
                </select>
              </div>
              <script src="/js/aspectos.js"></script>
            </div>
          </div>

          <!--inicia checkbox-->


          <!-- fin chechkbox-->


      </div>
      <div class"row">
            <div class="col-md-12"  id="drop_cult" style="display:none;">
              <div class="form-group">
                <label for="aspecto_cultura" class="col-sm-3 control-label" > Elija en las que participa: </label>
                  <div class="col-md-12">

                    @foreach($culturas as $cultura)



                        <input type="checkbox" value="{{$cultura->id_grup_cult}}" name="id_cultura{{$cultura->id_grup_cult}}"/><label>{{$cultura->grupo_cultura}}</label><br>
                      @endforeach





                </div>

            </div>
          </div>


      </div>



    </div>
  </div>


      <div class="form-group">
        <div class="col-sm-offset-6 col-sm-6">
            <button type="submit" class="btn btn-primary"> Validar </button>
        </div>
      </div>

  </div>
</form>
</div>



@endsection
