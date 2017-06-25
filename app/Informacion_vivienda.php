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
    protected $table ='informacion_vivienda';
    protected $fillable = [
        'tipo_vivienda_id_tipo_vivienda', 'zona_ub_id_zona_ub', 'id_mparedes', 'id_mpisos', 'id_mtecho',
    ];
}
