<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Noticia extends model
{
  protected $fillable = ['titulo', 'descripcion', 'urlimgnot'];
  protected $guarded =['id'];
    //
}
