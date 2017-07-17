<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\Contraseña;

class Contraseña extends Notification
{
    use Queueable;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
     public $password;
    public function __construct($password)
    {
        $this->password=$password;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\Contraseña
     */
    public function toMail($notifiable)
    {
        return (new Contraseña)
                    ->('¡Hola!')
                    ->subject('Contraseña para ingresar al formulario de Bienestar Estudiantil')
                    ->line('Con esta contraseña podrás completar el formulario')
                    ->line('Saludos!');

    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
