<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $table = 'posts';

    //Relación de N a 1
    public function user(){
        return $this->belongsTo('App\User','user_id');
    }

    //Relación de N a 1
    public function category(){
       return $this->belongsTo('App\Category','category_id');
    }
}
