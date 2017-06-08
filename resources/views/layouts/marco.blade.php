<!DOCTYPE html>
  <html lang="en">
<<<<<<< HEAD
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

=======
   <link href="/css/boostrap.css" rel="stylesheet">
   <script src="/js/app.js"></script>

   @include('service_view.nav')

   @yield('content')
>>>>>>> f33ec9556cc02ce48241ba607a48fe325fbf3e4e


  @include('service_view.footer')
</body>
</html>
