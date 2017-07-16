@extends('layouts.marco')
@section('inscripcion')


<div class="container">
<form class="form-horizontal" role="form" method="POST" action="{{ url('inscripcion')}}" >
    {{ csrf_field() }}
        <div class="row">
          <div class="col-md-12 panel panel-info" style="padding-left: 0px;padding-right: 0px;">
            <div class="panel-heading"><h4><center><strong>Inscripcion</strong></center></h4></div>
              <div class="panel-body">

                <div class="panel-heading">Inscripcion</div>
                <div class="panel-body">

                        <div class="form-group{{ $errors->has('usuario') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-4 control-label">Usuario</label>

                            <div class="col-md-4">
                                <input id="usuario" type="usuario" class="form-control" name="usuario" value="{{ old('usuario') }}" required autofocus>

                                @if ($errors->has('usuario'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('usuario') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-4 control-label">Email</label>

                            <div class="col-md-4">
                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : ''}}> Remember Me
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-6">
                                <button type="submit" class="btn btn-primary">
                                    Generar
                                </button>

                                <!--<a class="btn btn-link" href="{{ url('/password/reset') }}">
                                    Forgot Your Password?
                                </a>-->
                            </div>
                        </div>

                </div>




              </div>

            </div>

        </div>







</form>

</div>


@endsection
