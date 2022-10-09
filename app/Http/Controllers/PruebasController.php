<?php

namespace App\Http\Controllers;

use App\Post;
use App\Category;

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

    public function testORM(){
        /*
        $posts = Post::all();
        foreach($posts as $post){
            echo "<h1>".$post->title."</h1>";
            echo "<span style='color:grey;'>{$post->user->name} - {$post->category->name}</span>";
            echo "<p>".$post->content."</p>";
            echo "<hr>";
        }
        */
        $categories = Category::all();
        foreach($categories as $category){
            echo "<h1> {$category->name}</h1>";

            foreach($category->posts as $post){
                echo "<h3>".$post->title."</h3>";
                echo "<span style='color:grey;'>{$post->user->name} - {$post->category->name}</span>";
                echo "<p>".$post->content."</p>";
            }
            
            echo "<hr>";
        }
        
        die(); // no pedir vista y finalizar proceso
    }
}
