<?php

namespace App\Http\Controllers;

use Dompdf\Dompdf;

class ReportesController extends Controller
{
    //
    private static $current;

    public static function getInstance()
    {
        if (!self::$current instanceof self) {
            self::$current = new self();
        }

        return self::$current;
    }

    public function crearPDF($datos, $title, $vistaurl, $tipo, $type)
    {
        $pdf = new Dompdf();

        $data = $datos;
        $date = date('Y-m-d');
        $view =  \View::make($vistaurl, compact('data', 'title', 'date'))->render();
        $pdf = \App::make('dompdf.wrapper');

        $pdf->setPaper('A4', $type);
        $pdf->loadHTML($view);

        if ($tipo == 1) {
            return $pdf->stream('reporte');
        }
        if ($tipo == 2) {
            return $pdf->download('reporte.pdf');
        }
    }
}
