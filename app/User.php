<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
<<<<<<< HEAD
    /*use Authenticatable, CanResetPassword;
=======
    
>>>>>>> 59785f2ea0b4850993afb01119b5e7f304f4fcbc

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    protected $table = 'users';

    public function roles(){
      return $this->belongsTomany('App\Role','user_role_user_id','role_id');
    }

    public function hasAnyRole($roles){
      if(is_array($roles)){
        foreach ($roles as $role) {
          if($this->hasRole($role)){
            return true;
          }
        }
      }else {
        if($this->hasRole($role)){
          return true;
        }
      }
      return false;
    }

    public function hasRole($role)
    {
        if($this->roles()->where('nombre',$role)->first()){
        return true;
        }
      return false;
        }
}
