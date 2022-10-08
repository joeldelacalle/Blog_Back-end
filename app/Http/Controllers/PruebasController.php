<?php

namespace App\Http\Controllers;

class PruebasController extends Controller
{
    public function index(){
        $title = 'Animales';
        $animales = ['Perro', 'Gato', 'Lobo'];

        return view('pruebas.index', array(
            'titulo' => $title,
            'animales' => $animales
        ));
    }
}
