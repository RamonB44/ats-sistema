<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use App\Employes;
use App\Employesgroup;
use App\Group;
use App\Http\Controllers\ReportesController;
use App\Implement;
use App\Job;
use App\Labors;
use App\MImplement;
use Illuminate\Http\Request;

Auth::routes();

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/getLabors/{id}', function ($id) {
    $data = Labors::where('id_crops', '=', $id)->get();
    return view('response.labors', compact('data'));
});

Route::get('/getEmploye/{code}', function ($code) {
    $datos = array();
    $data = Employes::where('code', '=', $code)->first();
    if ($data) {
        $datos['success'] = true;
        $datos['data'] = $data;
    } else {
        $datos['success'] = false;
    }
    return response()->json($datos, 200, []);
});

Route::post('/register-tips', function (Request $req) {
    // return $req->all();

    // dd($req);
    $group = new Group();
    $group->id_labors = $req->labor;
    $group->video = $req->videoName;
    $group->blobVideo = $req->blobVideo;
    $group->save();

    $count = count($req->employe);

    $labor = Labors::where('id', '=', $req->labor)->first();
    $lista = Implement::where('labor_id', '=', $req->labor)
        ->whereNotNull('m_implement_id')
        ->get()
        ->pluck("m_implement_id")
        ->toArray();
    // dd($lista);
    $modelos = MImplement::whereIn('id',$lista)->get();
    // dd($modelos);
    $datos = [
        "implementos" => $modelos,
        "labor" => $labor,
    ];

    for ($i = 0; $i < $count; $i++) {
        # code...
        $eg = new Employesgroup();
        $eg->id_employe = $req->employe[$i];
        $eg->id_group = $group->id;
        $eg->is_checked = 1;
        $eg->save();

        $employe = Employes::where('id', '=', $req->employe[$i])->first();

        $datos["employes"][$i] = array(
            'employe_name' => $employe->fullname,
            'employe_code' => $employe->code,
            'employe_doc' => $employe->doc_num,
            'employe_labor' => $labor->name,
        );
    }
    // dd($employes);
    $print = ReportesController::getInstance();
    return $print->crearPDF($datos, 'ATS', 'pdf.ats', 1, 'portrait');
})->name('register.betatips');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
