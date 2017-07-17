
@section('regnoticia')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Registrar noticia</div>

                <div class="panel-body">
                      @if(session()->has('msj'))
                      <div class="alert alert-success" role="alert">{{session ('msj')}}</div>
                      @endif
                      @if(session()->has('errormsj'))
                      <div class="alert alert-success" role="alert">Error al guardar los datos</div>
                      @endif

                      @if(isset($noticia))
                  <form  role="form" method="POST" action="{{ route('noticias.update', $noticia->id)}}" enctype="multipart/form-data">
                    <input name="_method" type="hidden" value="PUT">

                  {{ csrf_field() }}
                    <div class="form-group">
                      <label for="titulo">Título</label>
                      <input type="text" class="form-control" name="titulo" placeholder="titulo">
                        @if($errors->has('titulo'))
                        <span style="color:red;">{{$errors->first('titulo')}}</span>
                        @endif
                    </div>

                    <div class="form-group">
                      <label for="descripcion">Descripción</label>
                      <textarea type="text" class="form-control" name="descripcion" placeholder="descripcion"></textarea>
                        @if($errors->has('descripcion'))
                        <span style="color:red;">{{$errors->first('descripcion')}}</span>
                        @endif
                    </div>

                    <div class="form-group">
                      <label for="urlimgnot">Adjuntar imagen</label>
                      <input type="file" class="form-control" id="urlimgnot" name="urlimgnot">
                    </div>

                    <button type="submit" class="btn btn-primary">Crear</button>
                  </form>
                  @endif
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
