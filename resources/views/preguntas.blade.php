@extends('layouts.marco')
@section('formulario')

<div class="container">

  <form class="form-horizontal" role="form" method="POST" action="{{ url('/preguntas')}}" >
      {{ csrf_field() }}

      <?php echo $form ?>

      <button type="submit" class="btn btn-primary">Enviar</button>
  </form>
</div>
<script>

</script>
@endsection
