<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Informacion_vivienda extends Model
{
    //
     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    
    protected $fillable = [
        'tipo_vivienda_id_tipo_vivienda',
    ];
}
