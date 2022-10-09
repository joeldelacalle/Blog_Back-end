<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Category extends Model
{
    protected $table = 'categories';

    //Relación de 1 a N
    public function posts(){
        return $this->HasMany('App\Post');
    }
}
