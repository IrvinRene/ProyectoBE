@extends('app')

@section('content')

		<div class="row">
			<div class="col-sm-8 col-sm-offset-2">
				<div class="panel panel-success">

					<div class="panel-heading strong">
						<i class="fa fa-users fa-btn"></i>Registrar Miembros
						<span class="pull-right"><a href="{{ route('user.index') }}" class="btn btn-primary btn-xs" data-toggle="tooltip" title="Refrescar"><i class="fa fa-refresh"></i></a></span>
					</div>
					<div class="panel-body">

						@include('partials.errors')

						{!! Form::model($user, $parametros['ruta']) !!}

							<div class="form-group{{ $errors->has('nombre') ? ' has-error' : '' }}">
								<label class="col-sm-3 control-label">Nombre</label>
								<div class="col-sm-7">
									{!! Form::text('nombre', null, array('class' => 'form-control', 'placeholder' => 'Nombre')) !!}
								</div>
							</div>


							<div class="form-group{{ $errors->has('idrol') ? ' has-error' : '' }}">
								<label class="col-sm-3 control-label">Rol</label>
								<div class="col-sm-7">
									{!! Form::select('idrol', App\Rol::lists('rol', 'id'), null, array('class' => 'form-control')) !!}
								</div>
							</div>

							<div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
								<label class="col-sm-3 control-label">E-mail</label>
								<div class="col-sm-7">
									{!! Form::text('email', null, array('class' => 'form-control', 'placeholder' => 'nombre.apellido@utp.ac.pa')) !!}
								</div>
							</div>

							<div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
								<label class="col-sm-3 control-label">Contraseña</label>
								<div class="col-sm-7">
									{!! Form::password('password', array('class' => 'form-control', 'placeholder' => '*********')) !!}
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-7 col-sm-offset-3">
									<button type="submit" class="btn btn-primary">{{ $parametros['button'] }}</button>
									<br>
								</div>
							</div>
						{!! Form::close() !!}

					</div>
				</div>
			</div>

			<div class="col-sm-12">
				<br><br>
				{{--TABLA QUE AGRUPA A LOS USUARIOS ALMACENADOS PARA PODER EDITARLOS O ELIMINARLOS - VISTA ADMINISTRADOR --}}
				<h3 class="text-center">Lista de Usuarios</h3>
				<div class="well well-sm">
					{!! Form::open(['method' => 'GET','route' => 'user.index', 'class' => 'form-inline']) !!}

						<div class="form-group has-success">

						      {!! Form::text('search_user', null, array('class' => 'form-control', 'placeholder' => 'Escriba el nombre')) !!}

					  	</div>
					    <button type="submit" class="btn btn-success">Buscar</button>
					    <a href="{{ route('user.index') }}" class="btn btn-default"><i class="fa fa-refresh"></i></a>

					{!! Form::close() !!}
				</div>
			</div>

			<div class="col-sm-12">
				<div class="table-responsive">
					<table class="table table-bordered table-striped">
						<thead>
							<tr class="active">
								<th>NOMBRE</th><th>CORREO</th><th>ROLES</th>
								<th>EDITAR</th><th>ELIMINAR</th>
							</tr>
						</thead>
						<tbody>
							@if(count($users) > 0)

								@foreach($users as $user)
									<tr>
										<td>{{$user->nombre}}</td>
										<td>{{$user->email}}</td>
										<td>{{$rol = DB::table('roles')->where('id', $user->idrol)->pluck('rol')}}</td>
										<td>
											<a href="{{ route('user.edit', $user->id) }}" class="btn btn-success btn-sm"><i class="fa fa-edit fa-btn"></i>Editar</a>
										</td>
										<td>
											{!! Form::open(['method' => 'DELETE','route' => ['user.destroy', $user->id]]) !!}
												<button type="submit" class="btn btn-danger btn-sm"><i class="fa fa-close fa-btn"></i>Eliminar</button>
											{!! Form::close() !!}
										</td>


									</tr>
								@endforeach
							@else
								<tr>
									<td colspan="7">
										<div class="alert alert-warning">

											<i class="fa fa-warning fa-btn"></i>No se pudo encontrar el usuario solicitado o no existe
										</div>
									</td>
								</tr>
							@endif
						</tbody>
					</table>
					<div class="text-center">
						{!!str_replace('/?','?',$users->appends(Input::except('page'))->render())!!}
					</div>
				</div>
			</div>
		</div>

@endsection
