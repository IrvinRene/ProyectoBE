<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="/css/boostrap.css" rel="stylesheet">

        <script src="{{asset('js/jquery.js')}}"></script>
        <script src="{{asset('js/app.js')}}"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="{{asset('js/bootstrap.min.js')}}"></script>

        <title>Bienestar Estudiantil</title>

        <!-- Fonts -->


        <!-- Styles -->
        <style>
            html, body {
              background-image:;
              font-family: 'Raleway', sans-serif;
              font-weight: 100;
              height: 100vh;
              margin: 0;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: azure;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }

        </style>
    </head>
    <body>




      <div class="container-fluid wel">
         <nav class="navbar navbar-default wel">
           <div class="container">
             <!-- Brand and toggle get grouped for better mobile display -->
             <div class="navbar-header ">
                 <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                   <span class="sr-only">Toggle navigation</span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                 </button>
                 <h2>Bienestar Estudiantil</h2>
             </div>
                   <!-- Collect the nav links, forms, and other content for toggling -->
             <div class="collapse navbar-collapse navbar-right navbar-nav nav wel" id="bs-example-navbar-collapse-1" style="margin-top: 1%; font-size: 18px">
               <div class="col-md-4 col-sm-2 ">
                   @if (Route::has('login'))
                     <div class=" ">
                         @if (Auth::check())
                             <a href="{{ url('/home') }}">Home</a>
                         @else
                             <a href="{{ url('/login') }}">Iniciar Sesión</a>
                         @endif
                     </div>
                   @endif
               </div>

             </div>
           </div>
         </nav>
       </div>

        @include('service_view.carousel')
        <div class="container">
          <div class="col-md-12">
            <div class="row">
              <div class="col-md-12 panel panel-info">
                <div class="panel-heading"><h2><center><strong>Información del Departamento</strong></center></h2></div>
                  <div class="panel-body">
                    <div class="col-md-8">
                      <center><h3>Objetivos</h3></center>
                      <div class="row">
                        <div class="col-md-6 ">
                          <div class="row">
                          <img src="images/11.jpg" alt="..." class="img-thumbnail lsp">
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="row">
                          <img src="images/22.png" alt="..." class="img-thumbnail lsp">
                        </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4 panel-default">
                      <div class="panel-heading"><h4><center><span class="glyphicon glyphicon-bullhorn"></span><strong>Noticias</strong></center></h4></div>
                          <div class=" col-md-12 col-md-offset-0">

                                  <div class="panel-body">
                                    <div class="row">
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
                                        <input type="file" id="urlimg">
                                      </div>

                                      <button type="submit" class="btn btn-primary">Enviar</button>
                                    </form>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>

                        </div>

                    </div>
                  </div>
              </div>
        @include('service_view.footer')
    </body>
</html>
