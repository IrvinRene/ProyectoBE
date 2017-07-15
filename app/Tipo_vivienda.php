<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tipo_vivienda extends Model
{
    //
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
     protected $table = ('tipo_vivienda');
    protected $fillable = [
        'tipo_vivienda',
    ];
}
