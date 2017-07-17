<!DOCTYPE html>
  <html lang="en">



  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Bienestar Estudiantil') }}</title>
    <link href="/css/boostrap.css" rel="stylesheet">
    <link href="/css/mcss.css" rel="stylesheet">
    <script src="/js/jquery-3.2.1.min.js" ></script>
    <script src="/js/app.js"></script>
    <script src="/js/aspectos.js"></script>
 </head>
<body>
   @include('service_view.nav')

   @yield('situación_economica')
   @yield('regnoticia')
   @yield('inscripcion')
   @yield('tipo_vivienda')
   @yield('info_acad')
   @yield('aspecto_salud')
   @yield('datos_personales')
   @yield('mosnoticia')
   @yield('formulario')
  @include('service_view.footer')
</body>
</html>
<div class="container">
    <h3 class="text-center">Material Design Switch</h3>
    <hr>
    <div class="col-xs-12">
        <p class="lead">I have been using an Android Device for the last few days and am falling in love with the switchs they use in Android. I loved them so much I wanted to port them over to Bootstrap so I could use them in future projects. I did some research and all of the ones I could find used custom colors which prevented them from working with Bootswatch or required you to edit the css files to make them match your theme. I wanted to work around that.</p>
        <p class="lead">Please use the theme picker above to see how this snippet works with bootswatch themes. I hope you enjoy this snippet.</p>
    </div>
</div>
