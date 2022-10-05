<?php

namespace App\Http\Controllers;

use App\Candidata;
use App\Categoria;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data_candidata = Candidata::all();
        $data_categorias = Categoria::where('estado' , 1)->get();
        $data_categorias_2 = Categoria::all();
        //$resultados = Votacione::all();
        $user = Auth::user()->id;


        $data = DB::select('select id_candidata,concat(candidatas.nombres,candidatas.apellidos) as names,candidatas.empresa as zona,sum( if( id_categoria = 1, votos, 0 ) ) AS apertura,sum( if( id_categoria = 2, votos, 0 ) ) AS traje_baño,sum( if( id_categoria = 3, votos, 0 ) ) AS traje_tipico,sum( if( id_categoria = 4, votos, 0 ) ) AS traje_noche,sum( if( id_categoria = 5, votos, 0 ) ) AS cultura_general FROM votaciones INNER JOIN candidatas ON votaciones.id_candidata = candidatas.id where id_user = ? GROUP BY id_candidata,candidatas.empresa,candidatas.nombres,candidatas.apellidos', [$user]);
        /*$i = 0;
        $data = null;
        $valor = false;

        foreach ($resultados as $result ) {
            # code...

            if($valor == false){
                $data[$i]['id_candidata'] = $result->id_candidata;
                $data[$i]['names'] = $result->candidata->nombres." ".$result->candidata->apellidos;
                $data[$i]['zona'] = $result->candidata->empresa;
                foreach ($data_categorias as $key) {
                    # code...
                    if($key->id == $result->id_categoria){
                        $data[$i][$key->categ_nombre] = $result->votos;
                    }else{
                        $data[$i][$key->categ_nombre] = 0;
                    }
                }
                $data[$i]['total'] = $result->votos;
                $valor = true;
                $i++;
            }

            $max = count($data);
            print_r($max);
            for ($i=0; $i < $max; $i++) {
                # code...
                if($data[$i]['id_candidata'] == $result->id_candidata){
                    $data[$i][$result->categoria->categ_nombre] = $result->votos;
                    $data[$i]['total'] += $result->votos;
                    $valor = true;
                }else{
                    $valor = false;

                }
            }

        }*/
        //print_r($data);exit;

        return view("home",compact('data_candidata','data_categorias','data','data_categorias_2'));
    }
}
