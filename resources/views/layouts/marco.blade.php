<!DOCTYPE html>
  <html lang="en">
<<<<<<< HEAD
=======

>>>>>>> b0438c6848016da87623df20b1ea24a678b4f6f6
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Bienestar Estudiantil') }}</title>
    <link href="/css/boostrap.css" rel="stylesheet">
    <script src="/js/app.js"></script>
 </head>
<body>
   @include('service_view.nav')
   @yield('situación_economica')
   @yield('regnoticia')
<<<<<<< HEAD

=======
   @yield('tipo_vivienda')
>>>>>>> b0438c6848016da87623df20b1ea24a678b4f6f6

  @include('service_view.footer')
</body>
</html>
