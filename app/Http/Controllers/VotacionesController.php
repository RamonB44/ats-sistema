<?php

namespace App\Http\Controllers;

use App\Candidata;
use App\Categoria;
use App\Votacione;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class VotacionesController extends Controller
{
    //
    public function index(Request $req){
        $data_candidata = Candidata::all();
        $data_categorias = Categoria::where('estado' , 1)->get();
        $data_categorias_2 = Categoria::all();
        //$resultados = Votacione::all();
        $user = Auth::user()->id;
        $data = DB::select('select id_candidata,concat(candidatas.nombres,candidatas.apellidos) as names,candidatas.empresa as zona,sum( if( id_categoria = 1, votos, 0 ) ) AS apertura,sum( if( id_categoria = 2, votos, 0 ) ) AS traje_baño,sum( if( id_categoria = 3, votos, 0 ) ) AS traje_tipico,sum( if( id_categoria = 4, votos, 0 ) ) AS traje_noche,sum( if( id_categoria = 5, votos, 0 ) ) AS cultura_general FROM votaciones INNER JOIN candidatas ON votaciones.id_candidata = candidatas.id where id_user = ? GROUP BY id_candidata,candidatas.empresa,candidatas.nombres,candidatas.apellidos', [$user]);

        if($req->ajax()){
            return view('users.resultados', ['data' => $data_2,'data_categorias' => $data_categorias, 'data_categorias_2' => $data_categorias_2])->render();
        }

        return view("users.votaciones",compact('data_candidata','data_categorias','data','data_categorias_2'));
    }

    public function setvoto(Request $req){
        //datos de votaciones
        $data_candidata = Candidata::all();
        $data_categorias = Categoria::where('estado' , 1)->get();
        $data_categorias_2 = Categoria::all();
        $user = Auth::user()->id;

        //votaciones
        $data = $req->all();
        $user = Auth::user()->id;

        $data_voto = Votacione::where('id_candidata',$data['candidata'])->where('id_categoria',$data['categoria'])->where('id_user',$user)->get();
        if(count($data_voto)==0){
            $voto = new Votacione;
            $voto->id_candidata = $data['candidata'];
            $voto->id_user = $user;
            $voto->id_categoria = $data['categoria'];
            $voto->votos = $data['votos'];
            $voto->save();

            // $req->session()->flash('message.level', 'success');
            // $req->session()->flash('message.content', 'Voto correcto');
            $data_2 = DB::select('select id_candidata,concat(candidatas.nombres,candidatas.apellidos) as names,candidatas.empresa as zona,sum( if( id_categoria = 1, votos, 0 ) ) AS apertura,sum( if( id_categoria = 2, votos, 0 ) ) AS traje_baño,sum( if( id_categoria = 3, votos, 0 ) ) AS traje_tipico,sum( if( id_categoria = 4, votos, 0 ) ) AS traje_noche,sum( if( id_categoria = 5, votos, 0 ) ) AS cultura_general FROM votaciones INNER JOIN candidatas ON votaciones.id_candidata = candidatas.id where id_user = ? GROUP BY id_candidata,candidatas.empresa,candidatas.nombres,candidatas.apellidos', [$user]);
            return view('users.resultados', ['data' => $data_2,'data_categorias' => $data_categorias, 'data_categorias_2' => $data_categorias_2])->render();
        }else{
            return response()->json($data_voto, 500, []);
            // $req->session()->flash('message.level', 'danger');
            // $req->session()->flash('message.content', 'Ya realizo su voto a esta candidata');

        }

    }

    public function setvoto_main(Request $req){
        //votaciones
        $data = $req->all();
        $user = Auth::user()->id;

        $data_voto = Votacione::where('id_candidata',$data['candidata'])->where('id_categoria',$data['categoria'])->where('id_user',$user)->get();
        if(count($data_voto)==0){
            $voto = new Votacione;
            $voto->id_candidata = $data['candidata'];
            $voto->id_user = $user;
            $voto->id_categoria = $data['categoria'];
            $voto->votos = $data['votos'];
            $voto->save();

             $req->session()->flash('message.level', 'success');
             $req->session()->flash('message.content', 'Voto correcto');
        }else{

            $req->session()->flash('message.level', 'danger');
            $req->session()->flash('message.content', 'Ya realizo su voto a esta candidata');

        }

        return redirect()->back();
    }

}
