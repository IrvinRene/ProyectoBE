<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Decision extends Model
{
    //

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table=('decisions');
    protected $fillable = [
        'decision',
    ];


}
