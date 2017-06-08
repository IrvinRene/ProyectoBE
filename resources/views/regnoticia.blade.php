@extends('layouts.marco')
@section('regnoticia')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Registrar noticia</div>

                <div class="panel-body">
                      @if(session()->has('msj'))
                      <div class="alert alert-success">{{session ('msj')}}</div>
                      @endif
                      @if(session()->has('errormsj'))
                      <div class="alert alert-success">Error al guardar los datos</div>
                      @endif
                  <form role="form" method="post" action="{{ url('noticia')}}" enctype="multipart/form-data">
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
                      <input type="file" id="urlimgnot">
                    </div>

                    <button type="submit" class="btn btn-primary">Enviar</button>
                  </form>
                </div>
            </div>
        </div>
    </div>
</div>
<div>
   <table class="table table-hover">
     @if(isset($noticias))
     <thead>
       <th>Titulo</th>
       <th>Descripcion</th>
       <th>Imagen</th>
     </head>
     @endif
     <tbody>
       @foreach ($noticias as $noticia)
           <tr>
             <td>{{$noticia->titulo}}</td>
             <td>{{$noticia->descripcion}}</td>
             <td>{{$noticia->urlimgnot}}</td>
           </tr>
       @endforeach
     </tbody>
   </table>
</div>
@endsection
