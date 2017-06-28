<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Document extends model
{
  protected $fillable = ['descripcion', 'urlimgnot'];
  protected $guarded =['id'];
    //
}
