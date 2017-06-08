@extends('layouts.marco')
@section('content')
<div class="container">
<form class="form-horizontal" role="form" method="POST" action="{{ url('noticias')}}">
{{ csrf_field() }}

	<div class="form-group">
		<label for="titulo" class="col-sm-2 control-label" >Tittulo</label>
		<div class="col-sm-10">
		<input type="text" class="form-control" name="titulo" placeholder="titulo" >
		 

		@if($errors->has('titulo'))
		<span style="color:red;">{{ $errors->first('titulo') }}</span>
		@endif

		</div>
	</div>
<div class="form-group">
		<label for="descripcion" class="col-sm-2 control-label" >Descripcion</label>
		<div class="col-sm-10">
		<textarea type="text" class="form-control" name="descripcion" placeholder="descripcion"></textarea>
		@if($errors->has('descripcion'))
		<span style="color:red;">{{ $errors->first('descripcion') }}</span>
		@endif
		</div>
</div>
<div class="form-group">
		<label for="urlImg" class="col-sm-2 control-label" >Imagen</label>
		<div class="col-sm-4">
		<input type="file" class="form-control" name="urlImg" >
		</div>
</div>
<div class="form-group">
		<div class="col-sm-offset-2 col-sm-8">
		<button type="submit" class="btn btn-primary"> Crear </button>
		</div>
</div>
</form>
</div>
<div>
<table>
	<thead>
		<th>niombre</th>
		<th>hola</th>
	</thead>
</table>
</div>
@endsection
