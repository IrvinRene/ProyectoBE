<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Formulario extends Model
{
//
	/**
     * The attributes that are mass assignable.
     *
     * @var array
     */
	protected $table = 'tipo_vivienda';
    protected $fillable = [
        'name', 'email', 'password',
    ];
}
