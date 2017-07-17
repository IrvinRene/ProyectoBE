<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="/css/boostrap.css" rel="stylesheet">
        <link href="/css/thecss.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
        <script src="{{asset('js/jquery.js')}}"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="{{asset('js/bootstrap.min.js')}}"></script>
        <script src="{{asset('js/thejs.js')}}"></script>
        <script src="{{asset('js/app.js')}}"></script>

        <title>Bienestar Estudiantil</title>

    </head>
  <body id="page-top" class="index">
      <div id="skipnav"><a href="#maincontent">Skip to main content</a></div>

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#page-top">Bienestar Estudiantil</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#home">Home</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <section style="padding-bottom:10px">
        @include('service_view.carousel')
    </section>
    <section id="about" style="padding-top:10px">
        <div class="container">
            <div class="row">
              <div class="col-md-12">
                <div class="panel panel-info">
                  <div class="panel-heading"><h2><center><strong>Información del Departamento</strong></center></h2></div>
                    <div class="panel-body">
                      <div class="col-md-8">
                        <strong><center><h2>Objetivos</h2></center></strong><br>
                        <p class="text-justify" style="font-size:18px;">La Dirección de Bienestar Estudiantil es la unidad administrativa responsable de desarrollar programas de orden académico,
                          económico y de promoción social que contribuyan a la formación integral de los estudiantes de la Universidad Tecnológica de Panamá. <br>
                          Sus planes, programas, proyectos y actividades se ejecutan a nivel nacional por un grupo de profesionales idóneos con profunda vocación
                          de servicios, comprometidos con la promoción de los valores institucionales y con el desarrollo de la sensibilidad social y ciudadana. <br>
                          El recurso humano responsable de atender a la población estudiantil es especializado, dependiendo de los diferentes programas que ofrece,
                          basado en las necesidades y recursos que se tienen en cada centro de estudio.</p>

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


                    <div class="col-md-4">
                    <div class="panel panel-default">
                          <div class="panel-heading"><h4><center><span class="glyphicon glyphicon-bullhorn">&nbsp;&nbsp;</span><strong>Noticias</strong></center></h4></div>
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
        </div>
    </section>
    <section>holi</section>

    <!-- Footer -->
  <footer class="text-center">
      <div class="footer-above">
          <div class="container">
              <div class="row">
                  <div class="footer-col col-md-4">
                      <h3>Location</h3>
                      <p>3481 Melrose Place
                          <br>Beverly Hills, CA 90210</p>
                  </div>
                  <div class="footer-col col-md-4">
                      <h3>Around the Web</h3>
                      <ul class="list-inline">
                          <li>
                              <a href="#" class="btn-social btn-outline"><span class="sr-only">Facebook</span><i class="fa fa-fw fa-facebook"></i></a>
                          </li>
                          <li>
                              <a href="#" class="btn-social btn-outline"><span class="sr-only">Google Plus</span><i class="fa fa-fw fa-google-plus"></i></a>
                          </li>
                          <li>
                              <a href="#" class="btn-social btn-outline"><span class="sr-only">Twitter</span><i class="fa fa-fw fa-twitter"></i></a>
                          </li>
                          <li>
                              <a href="#" class="btn-social btn-outline"><span class="sr-only">Linked In</span><i class="fa fa-fw fa-linkedin"></i></a>
                          </li>
                          <li>
                              <a href="#" class="btn-social btn-outline"><span class="sr-only">Dribble</span><i class="fa fa-fw fa-dribbble"></i></a>
                          </li>
                      </ul>
                  </div>
                  <div class="footer-col col-md-4">
                      <h3>About Freelancer</h3>
                      <p>Freelance is a free to use, open source Bootstrap theme created by <a href="http://startbootstrap.com">Start Bootstrap</a>.</p>
                  </div>
              </div>
          </div>
      </div>
      <div class="footer-below">
          <div class="container">
              <div class="row">
                  <div class="col-lg-12">
                      Copyright &copy; Your Website 2016
                  </div>
              </div>
          </div>
      </div>
  </footer>


    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>
</body>
</html>
