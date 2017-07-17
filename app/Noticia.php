<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Noticia extends model

{

  protected $table = 'noticias';
  protected $fillable = ['titulo', 'descripcion', 'urlimgnot'];
    //
}
