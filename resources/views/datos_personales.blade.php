@extends('layouts.marco')
@section('datos_personales')
<div class="container">

  <form class="form-horizontal" role="form" method="POST" action="{{ url('info_academica')}}" >
      {{ csrf_field() }}
      <div class="row">
        <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
          <div class="panel-heading"><h4><strong>Información Académica</strong></h4></div>
            <div class="panel-body">
              <div class="row">
              <div class="col-md-3">
                <div class="form-group">
                  <label for="academica" class="col-sm-2 control-label" >Facultad</label>
                  <div id= "academica" class="col-sm-6">
                  {!! Form:: select('facultad', App\Facultad::pluck('facultad'), null, array('placeholder' => '--Seleccionar--','class'=>'form-control', 'name'=>'facultad','id'=>'id_d')) !!}
                  </div>
                </div>
              </div>
@endsection
