@extends('layouts.marco')
@section('formulario')

<div class="container">
  <h2> Formulario para Solicitar servicios al departamento de Bienestar Estudiantil</h2>
  <h4> Nota: Recuerde que todos los campos deben llenarse</h4>

  <form class="form-horizontal" role="form" method="POST" action="{{ url('/preguntas')}}" >
      {{ csrf_field() }}

      <?php echo $form ?>

      <button type="submit" class="btn btn-primary">Enviar</button>
  </form>
</div>
<script>

</script>
@endsection
