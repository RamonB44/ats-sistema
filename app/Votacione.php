<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Votacione extends Model
{
    public function categoria()
    {
        return $this->belongsTo('App\Categoria', 'id_categoria');
    }

    public function candidata()
    {
        return $this->belongsTo('App\Candidata', 'id_candidata');
    }
}
