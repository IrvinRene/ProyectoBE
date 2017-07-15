<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Rol extends Model
{

    protected $table = 'rol';
    public function users(){
      return $this->belongsTomany('App\User', 'user_role','role_id', 'user_id');
    }
}
