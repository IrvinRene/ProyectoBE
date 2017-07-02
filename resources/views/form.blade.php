@extends('layouts.marco')
@section('formulario')

<div class="container">

  <form class="form-horizontal" role="form" method="POST" action="{{ url('')}}" >
      {{ csrf_field() }}
  @include('service_view.datos_personales')
  @include('info_academica')
  @include('service_view.economic')
  @include('service_view.tipo_vivienda')
  @include('service_view.aspecto_salud')


  </form>
</div>

@endsection
