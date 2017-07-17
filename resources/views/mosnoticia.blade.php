@extends('layouts.marco')
@section('mosnoticia')

<form class="form-horizontal" role="form" method="POST" action="{{ url('mosnoticia')}}" >

          <div class="col-md-12">
          <div class="row">
          <div class="col-md-6">
          @foreach($notis as $noti)
              <h2>{{$noti->titulo}}</h2>
              <img src="imgNoticias/{{$noti->urlimgnot}}" class="img-responsive" alt="Responsive image" style="max-width:300px;">
              <div>{{$noti->descripcion}}</div>
              
          @endforeach
        </div>
        </div>
        </div>

</form>




@endsection
