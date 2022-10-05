<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ATS</title>
    <style>
        body{
            font-family: sans-serif;
        }
        .table{
            text-align: center;
        }
        table {
            border-collapse: collapse;
            /* width: 100%; */
        }
        table, th, td {
            border: 1px solid black;
        }
        .principal{
            width: 100%;
        }
        .content{
            position: relative;
            display: flex;
            width: 60%;
            height: auto;
            justify-content: center;
            margin-left: auto;
            margin-right: auto;
            background-color: #28A745;
        }
        .titulo{
            position: absolute;
            top: 30%;
            font-size: 2rem;
            padding-left: 10%;

        }
        .content h2{
            position: absolute;
            bottom: 43%;
            font-size: 3rem
        }
    </style>
</head>
<body>
        <table style="table-layout: fixed;width: 100%;text-transform: uppercase;border-bottom: 0px">
            <thead style="font-size: 0.5em;">
                <tr >
                    <th rowspan="2" style="text-align: left;vertical-align: bottom;">COMPLEJO AGROINDUSTRIAL BETA</th>
                    <th colspan="4" style="font-size: 1.4em">ANALISIS DE TRABAJO SEGURO (ATS)</th>
                </tr>
                <tr>
                    <th style="width: 35%" colspan="4" >YO SOY EL PRINCIPAL RESPONSABLE DE MI SEGURIDAD Y LA DE MIS COMPAÑEROS</th>
                </tr>
            </thead>
            <tbody style="font-size: 0.5em;text-align:center">
                <tr>
                    <td rowspan="2" style="text-align: left;vertical-align: top;width: 40%">
                        Nombre de la labor: {{ $data[0]["employe_labor"] }}
                    </td>
                    <td style="width: 25%">Especificar el lugar exacto</td>
                    <td style="font-size: 0.8em">Hora de elaboracion</td>
                    <td style="width: auto">Fecha</td>
                    <td style="width: auto">{{ date('Y-m-d') }}</td>
                </tr>
                <tr >
                    <td style="height: 15px"></td>
                    <td></td>
                    <td>ot:</td>
                    <td></td>
                </tr>
                <tr>
                    <td style="text-align: left">equipos de proteccion personal:</td>
                    <td colspan="4"></td>
                </tr>
                <tr>
                    <td style="text-align: left">(marca los epp que son necesarios para tu labor)</td>
                    <td colspan="4"></td>
                </tr>
                <tr style="text-align: left;text-transform: capitalize;">
                    <td style="border-bottom: 0px !important;border-top: 0px !important;">
                        <span style="display: inline-block;width: 25%;vertical-align: bottom">Arnes:</span>
                        <span style="height: 6px;width: 6px;display: inline-block;border: 1px solid #000000;vertical-align: bottom"></span>
                        <span style="vertical-align: bottom;display: inline-block;width: 20%">Barbiqueo</span>
                        <span style="height: 6px;width: 6px;display: inline-block;border: 1px solid #000000;vertical-align: bottom"></span>
                        <span style="vertical-align: bottom;display: inline-block;">Casco</span>
                    </td>
                    <td style="border-bottom: 0px !important;border-top: 0px !important;" colspan="4">
                        <span style="height: 6px;width: 6px;display: inline-block;border: 1px solid #000000;vertical-align: bottom;margin-left: 10px"></span>
                        <span style="vertical-align: bottom;display: inline-block;width: 40%">Superficies Cortantes/Punzantes</span>
                        <span style="height: 6px;width: 6px;display: inline-block;border: 1px solid #000000;vertical-align: bottom"></span>
                        <span style="vertical-align: bottom;display: inline-block;">Manipulacion de sustancias Quimicas</span>
                    </td>
                </tr>
                <tr style="text-align: left;text-transform: capitalize">
                    <td style="border-bottom: 0px !important;border-top: 0px !important">
                        <span style="display: inline-block;width: 25%;vertical-align: bottom">Respirador:</span>
                        <span style="height: 6px;width: 6px;display: inline-block;border: 1px solid #000000;vertical-align: bottom"></span>
                        <span style="vertical-align: bottom;display: inline-block;width: 20%">Guantes</span>
                        <span style="height: 6px;width: 6px;display: inline-block;border: 1px solid #000000;vertical-align: bottom"></span>
                        <span style="vertical-align: bottom;display: inline-block;">Zapatos de seguridad</span>
                    </td>
                    <td style="border-bottom: 0px !important;border-top: 0px !important" colspan="4">
                        <span style="height: 6px;width: 6px;display: inline-block;border: 1px solid #000000;vertical-align: bottom;margin-left: 10px"></span>
                        <span style="vertical-align: bottom;display: inline-block;width: 40%">Puntos de africcion/Atrapamiento</span>
                        <span style="height: 6px;width: 6px;display: inline-block;border: 1px solid #000000;vertical-align: bottom"></span>
                        <span style="vertical-align: bottom;display: inline-block;">Superficies Calientes/Frias</span>
                    </td>
                </tr>
                <tr style="text-align: left;text-transform: capitalize">
                    <td style="border-bottom: 0px !important;border-top: 0px !important">
                        <span style="display: inline-block;width: 25%;vertical-align: bottom">Proteccion Auditiva:</span>
                        <span style="height: 6px;width: 6px;display: inline-block;border: 1px solid #000000;vertical-align: bottom"></span>
                        <span style="vertical-align: bottom;display: inline-block;width: 30%">Lentes de Seguridad</span>
                    </td>
                    <td style="border-bottom: 0px !important;border-top: 0px !important" colspan="4">
                        <span style="height: 6px;width: 6px;display: inline-block;border: 1px solid #000000;vertical-align: bottom;margin-left: 10px"></span>
                        <span style="vertical-align: bottom;display: inline-block;width: 40%">Equipo/Parte en movimiento</span>
                        <span style="height: 6px;width: 6px;display: inline-block;border: 1px solid #000000;vertical-align: bottom"></span>
                        <span style="vertical-align: bottom;display: inline-block;">Otros</span>
                    </td>
                </tr>
                <tr style="text-align: left;">
                    <td>(Otros EPPs) :</span></td>
                    <td style="border-top: 0px !important;" colspan="4"></td>
                </tr>
            </tbody>
        </table>
        <table style="table-layout: fixed;width: 100%;text-transform: uppercase;border-top: 0px;border-bottom: 0px">
            <thead style="font-size: 0.5em;">
                <tr>
                    <th colspan="6" style="font-size: 1.45em">Personal que elabora el ats y ejecuta el trabajo</th>
                </tr>
            </thead>
            <tbody style="font-size: 0.5em;text-align:center">
                {{-- CABEZERA --}}
                <tr>
                    <td colspan="2" style="text-align: left;">
                        Condiciones
                    </td>
                    <td>SI/NO</td>
                    <td colspan="2">
                        Nombres y Apellidos
                    </td>
                    <td>Firma</td>
                </tr>

                <tr>
                    <td colspan="2" style="text-align: left;font-size: 0.8em">
                        1. ¿Esta capacitado para desarrollar la actividad?
                    </td>
                    <td>
                        <span style="height: 10px;width: 10px;display: inline-block;border: 1px solid #000000;margin-left: 42.5px;margin-top: 1.5px"></span>
                        <span style="height: 10px;width: 10px;display: inline-block;border: 1px solid #000000;margin-top: 1.5px"></span>
                    </td>

                    <td colspan="2" style="text-transform:capitalize;text-align:left">
                    <span style="margin-left: 5px">1. {{ "Aguaado Apaza Ramon Bernardo" }}</span>
                        <span style="float: right;;vertical-align: bottom;display: inline-block;width: auto;height:10px;border: 1px solid #000000">
                            LIDER DEL
                        </span>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: left;font-size: 0.8em">
                        2. ¿Esta entrenado para desarrollar la actividad?
                    </td>
                    <td>
                        <span style="height: 10px;width: 10px;display: inline-block;border: 1px solid #000000;margin-left: 42.5px;margin-top: 1.5px"></span>
                        <span style="height: 10px;width: 10px;display: inline-block;border: 1px solid #000000;margin-top: 1.5px"></span>
                    </td>
                    <td colspan="2" style="text-transform:capitalize;text-align:left">
                        <span style="margin-left: 5px">2. {{ "Aguaado Apaza Ramon Bernardo" }}</span>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: left;font-size: 0.8em">
                        3. ¿Tiene la capacidad fisica necesaria?
                    </td>
                    <td>
                        <span style="height: 10px;width: 10px;display: inline-block;border: 1px solid #000000;margin-left: 42.5px;margin-top: 1.5px"></span>
                        <span style="height: 10px;width: 10px;display: inline-block;border: 1px solid #000000;margin-top: 1.5px"></span>
                    </td>
                    <td colspan="2" style="text-transform:capitalize;text-align:left">
                        <span style="margin-left: 5px">3. {{ "Aguaado Apaza Ramon Bernardo" }}</span>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: left;font-size: 0.8em">
                        4. ¿Tiene un estado de salud optimo?
                    </td>
                    <td>
                        <span style="height: 10px;width: 10px;display: inline-block;border: 1px solid #000000;margin-left: 42.5px;margin-top: 1.5px"></span>
                        <span style="height: 10px;width: 10px;display: inline-block;border: 1px solid #000000;margin-top: 1.5px"></span>
                    </td>
                    <td colspan="2" style="text-transform:capitalize;text-align:left">
                        <span style="margin-left: 5px">4. {{ "Aguaado Apaza Ramon Bernardo" }}</span>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: left;font-size: 0.8em">
                        5. ¿Cuenta con el EPP conpleto?
                    </td>
                    <td>
                        <span style="height: 10px;width: 10px;display: inline-block;border: 1px solid #000000;margin-left: 42.5px;margin-top: 1.5px"></span>
                        <span style="height: 10px;width: 10px;display: inline-block;border: 1px solid #000000;margin-top: 1.5px"></span>
                    </td>
                    <td colspan="2" style="text-transform:capitalize;text-align:left">
                        <span style="margin-left: 5px">5. {{ "Aguaado Apaza Ramon Bernardo" }}</span>
                    </td>
                    <td></td>
                </tr>
                {{-- OBS --}}
                <tr>
                    <td rowspan="2" colspan="3" style="text-align: left;font-size: 0.8em;vertical-align: top;">
                        Observaciones
                    </td>
                    <td colspan="2" style="text-transform:capitalize;text-align:left;height:10px ">
                        <span style="margin-left: 5px">6. {{ "Aguaado Apaza Ramon Bernardo" }}</span>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-transform:capitalize;text-align:left;height:10px  ">
                        {{-- <span style="margin-left: 5px">7. {{ "Aguaado Apaza Ramon Bernardo" }}</span> --}}
                    </td>
                    <td></td>
                </tr>
            </tbody>
        </table>
        <table style="table-layout: fixed;width: 100%;text-transform: uppercase;border-top: 0px;border-bottom: 0px">
            <thead style="font-size: 0.5em;">
                <tr>
                    <th colspan="6" style="font-size: 1.25em">RECONOCIMIENTO DE LOS PELIGROS ALREDEDOR DE TU AREA DE TRABAJO (AREA ADYACENTE, COLINDANTE, OTROS)</th>
                </tr>
            </thead>
            <tbody style="font-size: 0.5em;text-align:center">
                <tr >
                    <td style="border-bottom: 0px;border-right: 0px;height: 25px">
                        <span style="height: 10px;width: 15px;border:1px solid #000000;display: inline-block;margin-left:10px">1</span>
                        <span style="display: inline-block;font-size: 0.7em;vertical-align: middle">Trabajos en caliente</span>
                    </td>
                    <td style="border-bottom: 0px;border-left: 0px;border-right: 0px;height: 25px">
                        <span style="height: 10px;width: 15px;border:1px solid #000000;display: inline-block;margin-left:10px">3</span>
                        <span style="display: inline-block;font-size: 0.7em;vertical-align: middle">Electrico</span>
                    </td>

                    <td style="border-bottom: 0px;border-left: 0px;border-right: 0px">
                        <span style="height: 10px;width: 15px;border:1px solid #000000;display: inline-block;margin-left:10px">5</span>
                        <span style="display: inline-block;font-size: 0.7em;vertical-align: middle">Accesos y salidas</span>
                    </td>
                    <td style="border-bottom: 0px;border-left: 0px;border-right: 0px">
                        <span style="height: 10px;width: 15px;border:1px solid #000000;display: inline-block;margin-left:10px">7</span>
                        <span style="display: inline-block;font-size: 0.7em;vertical-align: middle">Excavacion</span>
                    </td>
                    <td style="border-bottom: 0px;border-left: 0px;border-right: 0px">
                        <span style="height: 10px;width: 15px;border:1px solid #000000;display: inline-block;margin-left:10px">9</span>
                        <span style="display: inline-block;font-size: 0.7em;vertical-align: middle">Condiciones Climaticas</span>
                    </td>
                    <td style="border-bottom: 0px;border-left: 0px;">
                        <span style="height: 10px;width: 15px;border:1px solid #000000;display: inline-block;margin-left:10px">11</span>
                        <span style="display: inline-block;font-size: 0.7em;vertical-align: middle">Otros</span>
                    </td>
                </tr>
                <tr>
                    <td style="border-top: 0px;border-right: 0px">
                        <span style="height: 10px;width: 15px;border:1px solid #000000;display: inline-block;margin-left:10px">2</span>
                        <span style="display: inline-block;font-size: 0.7em;vertical-align: middle">Trabajos en Altura</span>
                    </td>
                    <td style="border-top: 0px;border-left: 0px;border-right: 0px">
                        <span style="height: 10px;width: 15px;border:1px solid #000000;display: inline-block;margin-left:10px">4</span>
                        <span style="display: inline-block;font-size: 0.7em;vertical-align: middle">Izajes</span>
                    </td>
                    <td style="border-top: 0px;border-left: 0px;border-right: 0px">
                        <span style="height: 10px;width: 15px;border:1px solid #000000;display: inline-block;margin-left:10px">6</span>
                        <span style="display: inline-block;font-size: 0.7em;vertical-align: middle">Otros Trabajadores</span>
                    </td>
                    <td style="border-top: 0px;border-left: 0px;border-right: 0px">
                        <span style="height: 10px;width: 15px;border:1px solid #000000;display: inline-block;margin-left:10px">8</span>
                        <span style="display: inline-block;font-size: 0.7em;vertical-align: middle">Mecanico</span>
                    </td>
                    <td style="border-top: 0px;border-left: 0px;border-right: 0px">
                        <span style="height: 10px;width: 15px;border:1px solid #000000;display: inline-block;margin-left:10px">10</span>
                        <span style="display: inline-block;font-size: 0.7em;vertical-align: middle">Quimico</span>
                    </td>
                    <td style="border-top: 0px;border-left: 0px;" >
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="table-layout: fixed;width: 100%;text-transform: uppercase;border-top: 0px;border-bottom: 0px">
            <thead style="font-size: 0.5em;">
                <tr>
                    <th colspan="3" style="font-size: 1.25em">¿La tarea corresponde a una actividad critica?<br><span style="font-size: 0.9em">(Revisar lista de verificacion de controles criticos)</span></th>
                </tr>
            </thead>
            <tbody style="font-size: 0.5em;text-align:center">
                <tr >
                    <td style="border-bottom: 0px;border-right: 0px;height: 30px;">
                        <span style="height: 12.5px;width: 25px;border:1px solid #000000;display: inline-block;margin-left:10px;vertical-align:middle "></span>
                        <span style="display: inline-block;font-size: 0.7em;vertical-align: middle">Operacion en Equipos</span>
                    </td>
                    <td style="border-bottom: 0px;border-left: 0px;border-right: 0px">
                        <span style="height: 12.5px;width: 25px;border:1px solid #000000;display: inline-block;margin-left:10px;vertical-align:middle "></span>
                        <span style="display: inline-block;font-size: 0.7em;vertical-align: middle">Trabajos con energia peligrosos</span>
                    </td>
                    <td style="border-bottom: 0px;border-left: 0px;">
                        <span style="height: 12.5px;width: 25px;border:1px solid #000000;display: inline-block;margin-left:10px;vertical-align:middle "></span>
                        <span style="display: inline-block;font-size: 0.7em;vertical-align: middle">Trabajos en caliente</span>
                    </td>
                </tr>
                <tr>
                    <td style="border-top: 0px;border-right: 0px;height: 30px">
                        <span style="height: 12.5px;width: 25px;border:1px solid #000000;display: inline-block;margin-left:10px;vertical-align:middle "></span>
                        <span style="display: inline-block;font-size: 0.7em;vertical-align: middle">Izajes y levantamiento de carga</span>
                    </td>
                    <td style="border-top: 0px;border-left: 0px;border-right: 0px">
                        <span style="height: 12.5px;width: 25px;border:1px solid #000000;display: inline-block;margin-left:10px;vertical-align:middle "></span>
                        <span style="display: inline-block;font-size: 0.7em;vertical-align: middle">Trabajos de altura</span>
                    </td>
                    <td style="border-top: 0px;border-left: 0px;" >
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="table-layout: fixed;width: 100%;text-transform: uppercase;border-top: 0px;border-bottom: 0px">
            <thead style="font-size: 0.5em;">
                <tr>
                    <th colspan="2" style="font-size: 1.1em;width: 22%">Secuencia de pasos para realizar tu tarea</th>
                    <th style="font-size: 0.8em;width: 22%">Peligrosos(Condiciones inseguras, Actos inseguros, Fuentes de energia)</th>
                    <th style="font-size: 0.8em;width: 20%">Concecuencias ¿Que podria pasar? (Golpe, Amputacion, Corte, Otros)</th>
                    <th colspan="2" style="font-size: 1.1em">Medidas de control <br> <span style="font-size: 0.8em">¿Que debes hacer para no sufrir consecuencia?</span></th>
                </tr>
            </thead>
            <tbody style="font-size: 0.5em;text-align:left;vertical-align: middle">
                <tr>
                    <td colspan="2" style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td colspan="2" style="height: 46px"></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td colspan="2" style="height: 46px"></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td colspan="2" style="height: 46px"></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td colspan="2" style="height: 46px"></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td colspan="2" style="height: 46px"></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td colspan="2" style="height: 46px"></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td colspan="2" style="height: 46px"></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td colspan="2" style="height: 46px"></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td colspan="2" style="height: 46px"></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td style="height: 46px"></td>
                    <td colspan="2" style="height: 46px"></td>
                </tr>
            </tbody>
            <tfoot style="font-size: 0.5em;text-align:center;vertical-align: middle">
                <tr>
                    <td colspan="2" style="font-size: 0.7em;height: 25px">
                        Supervisor Operativo del trabajo (Persona responsable directa del equipo de trabajo)
                    </td>
                    <td colspan="2" style="font-size: 0.7em;height: 25px">
                        Supervisor del Area (Persona responsable del area fisica donde se desarrolla el trabajo)
                    </td>
                    <td colspan="2" style="font-size: 1.25em;height: 25px;color: red">
                        Operaciones / Recomendaciones
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="font-size: 0.7em;height: 25px;text-align: left"><span style="margin-left: 5px;">Nombre y firma</span></td>
                    <td colspan="2" style="width: auto;font-size: 0.7em;text-align: left">
                        <span style="margin-left: 5px;">Nombre y firma</span>
                    </td>
                    <td colspan="2"></td>
                </tr>
            </tfoot>
        </table>
</body>
</html>
