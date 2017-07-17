@extends('layouts.marco')
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
                  <form role="form" method="post" action="{{ url('noticias')}}" enctype="multipart/form-data">
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
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">Registro de noticias</div>
                <div class="table-responsive">
                   <table class="table table-bordered success">
                     @if(isset($noticias))
                     <thead>
                       <th>Titulo</th>
                       <th>Descripcion</th>
                       <th>Imagen</th>
                     </head>

                     <tbody>
                       @foreach ($noticias as $noticia)
                           <tr>
                             <td>{{$noticia->titulo}}</td>
                             <td>{{$noticia->descripcion}}</td>
                             <td> <img src="imgNoticias/{{$noticia->urlimgnot}}" class="img-responsive" alt="Responsive image" style="max-width:100px;"></td>
                              <td>
                                <a href="noticias/{{$noticia->id}}/edit" class="btn btn-warning btn-xs">Modificar</a>
                                <a href="" class="btn btn-danger btn-xs">Eliminar</a>
                              </td>
                           </tr>
                       @endforeach
                     </tbody>
                    @endif
                   </table>
              </div>
            </div>
        </div>
      </div>
</div>
@endsection
