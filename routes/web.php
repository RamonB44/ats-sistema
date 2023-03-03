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
use App\Labors;
use Illuminate\Http\Request;

Auth::routes();

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/getLabors/{id}',function($id){
    $data = Labors::where('id_crops','=',$id)->get();
    return view('response.labors',compact('data'));
});

Route::get('/getEmploye/{code}',function($code){
    $datos = array();
    $data = Employes::where('code','=',$code)->first();
    if($data){
        $datos['success'] = true;
        $datos['data'] = $data;
    }else{
        $datos['success'] = false;
    }
    return response()->json($datos, 200, []);
});

Route::post('/register-tips',function(Request $req){
    // return $req->all();
    $group = new Group();
    $group->id_labors = $req->labor;
    $group->video = $req->videoName;
    $group->blobVideo = $req->blobVideo;
    $group->save();

    $count = count($req->employe);

    $labor = Labors::where('id','=',$req->labor)->first();

    for ($i=0; $i < $count; $i++) {
        # code...
        $eg = new Employesgroup();
        $eg->id_employe = $req->employe[$i];
        $eg->id_group = $group->id;
        $eg->is_checked = 1;
        $eg->save();

        $employe = Employes::where('id','=',$req->employe[$i])->first();

        $employes[$i] = array(
            'employe_name' => $employe->fullname,
            'employe_code' => $employe->code,
            'employe_doc' => $employe->doc_num,
            'employe_labor' => $labor->name,
        );

    }

    $print = ReportesController::getInstance();
    return $print->crearPDF($employes,'ATS','pdf.ats',1,'portrait');

    //generate report by employe

    // return redirect('/');
})->name('register.betatips');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
