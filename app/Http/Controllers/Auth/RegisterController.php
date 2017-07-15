<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6|confirmed',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return User
     */

     public function generar_clave()
     {

           $password = "";
           $caracteres = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
           //aquí podemos incluir incluso caracteres especiales pero cuidado con las ‘ y “ y algunos otros
           $length = 8;
           $max = strlen($caracteres) - 1;
           for ($i=0;$i<$length;$i++)
           {
                $password .= substr($caracteres, rand(0, $max), 1);
           }
           return $password;
      }

      protected function create (array $data)
      {
            $user = User::create([
              'nombre'=>$data['nombre'],
              'email'=>$data['email'],
              'password'=>bcrypt($data['password']),
              'estado'=>'0',
            ]);
            User_role::create([
              'user_id'=>$user->id,
              'role_id'=>2,
            ]);
            $user->notify(new EmailConfirmation($password));
            return redirect('/inscripcion')->with('status','Le enviamos un correo de activacion. Consultar su correo electrónico');

      }
