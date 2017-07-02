<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Situacion_economica extends Model
{
    //

    protected $table= 'situacion_economica';
    protected $fillable = ['formulario_id_formulario', 'id_dtrabaja', 'porque_no','nombre_empresa','ocupacion','salario','telefono','lugar_trabajo_id_lugar_trabajo','condicion_id_condicion'];


}
