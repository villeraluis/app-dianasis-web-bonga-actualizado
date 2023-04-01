<?php

namespace App\Http\Controllers\transporte\informes;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use stdClass;

class ControlVehiculosController extends Controller
{

    public function viewControlVehiculo()
    {
        $periodos = new stdClass();
        $yearActual = intval(date("Y"));
        $y = [];
        for ($i = 2017; $i <= $yearActual; $i++) {
            $periodos->PerAno = $i;
            array_push($y, unserialize(serialize($periodos)));
        }
        $periodos = $y;


        return view('transporte.informes.controlVehiculos.indexControlVehiculo', compact('periodos'));
    }


    public function infControlVehiculo(Request $request, $c)

    {



        $datos = $this->consultaControlVehiculo($request, $c);


        if ($datos == null) {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
             No hay datos para Mostrar. 
          </div>";
        }

        if($c=='y'){
            return view('transporte.informes.controlVehiculos.tablaControlVehiculoY', compact('datos'));
        }else{
            return view('transporte.informes.controlVehiculos.tablaControlVehiculoM', compact('datos'));
        }
        
    }



    public function consultaControlVehiculo($request, $c)
    {

        cambioBaseDatos();
        $empresa = session('Empresa');
        $vTipoComprobante = vTipoComprobante(8);
        $datos = collect();


        $year = $request->selectYear;
        $mes = $request->selectMes;

        $diaHoy  = date("d");
        $mesActual = date("m");

        $tIDempresa = ["01" => "MONTERIANA S.A.S", "02" => "INTERCARIBE S.A.", "03" => "EXPREVIENSA", "04" => "ECERETE S.A.", "05" => "SOTRACOR S.A."];
        $tEstadoVeh = ["0" => "ACTIVO", "1" => "INACTIVO", "2" => "RETIRADO", "3" => "TALLER", "4" => "CREADO"];
        $datRow1 = [];

        if ($c == 'm') {

            $sql1 = "SELECT A.*,B.VpoIdStPropietario,C.CliStNombreCliente,D.VehStEstado FROM TRANCONTROLVEHICULOS A 
            INNER JOIN TRANVEHICULOS D ON (A.CovIdStEmpresa = D.VehIdStEmpresa AND A.CovIdStPlaca = D.VehIdStPlaca) 
            INNER JOIN TRANVEHICULOPROPIETARIOS B ON (D.VehIdStEmpresa = B.VpoIdStEmpresa AND D.VehIdStPlaca = B.VpoIdStPlacaVehiculo AND B.VpoStPrincipal ='1') 
            INNER JOIN CLIENTES C ON (B.VpoIdStEmpresa = C.cliempr AND B.VpoIdStPropietario = C.clinit) 
            WHERE CovInAno =$year AND CovInMes = $mes";


            $datos1 = DB::select($sql1);

            if ($datos1 == null) {
                return null;
            }


            foreach ($datos1 as $idx => $dato) {
                $color = 'w';

                if ($mes == $mesActual) {

                    if ($diaHoy <= 10) {
                        if (($dato->CovInValorAportes + $dato->CovInValorSobrante) < ($dato->CovInControlUno + $dato->CovInValorFaltante)) {

                            $color = 'r';
                        }
                    } else {

                        if ($diaHoy  <= 15) {
                            if (($dato->CovInValorAportes + $dato->CovInValorSobrante) < ($dato->CovInControlDos + $dato->CovInValorFaltante)) {

                                $color = 'r';
                            }
                        } else {
                            if ($diaHoy  <= 20) {
                                if (($dato->CovInValorAportes + $dato->CovInValorSobrante) < ($dato->CovInControlTres + $dato->CovInValorFaltante)) {

                                    $color = 'r';
                                }
                            } else {

                                if (($dato->CovInValorAportes + $dato->CovInValorSobrante) < ($dato->CovInControlCuatro + $dato->CovInValorFaltante)) {

                                    $color = 'r';
                                }
                            }
                        }
                    }
                }




                array_push($datRow1, [

                    'color' => $color,
                    'numero' => $idx + 1,
                    'tIDempresa' => $tIDempresa[$dato->CovIdStEmpresa],
                    'tPlaca' => $dato->CovIdStPlaca,
                    'tCedulaProp' => $dato->VpoIdStPropietario,
                    'tPropietario' => $dato->CliStNombreCliente,
                    'tEstadoVeh' => $tEstadoVeh[$dato->VehStEstado],
                    'tVrPlanilla' => ($dato->CovInValorPlanilla),
                    'tVrAportes' => ($dato->CovInValorAportes),
                    'tVrSobrante' => ($dato->CovInValorSobrante),
                    'tVrSegSocial' => ($dato->CovInAporteSegSocial),
                    'tVrPrestaciones' => ($dato->CovInAportePrestaciones),
                    'tVrParafiscales' => ($dato->CovInAporteParafiscales),
                    'tVrOtros' => ($dato->CovInOtrosAportes),
                    'tVrControl1' => ($dato->CovInControlUno),
                    'tVrControl2' => ($dato->CovInControlDos),
                    'tVrControl3' => ($dato->CovInControlTres),
                    'tVrControl4' => ($dato->CovInControlCuatro),
                    'tVrFaltante' => ($dato->CovInValorFaltante),
                    'tCarteraVieja' => ($dato->CovInControlSeis), //'guarda la cartera de 2016
                    'tCarteraMes' => ($dato->CovInFaltanteIntervalo), // 'cartera intervalo
                    'tPaquePlanilla' => $dato->CovStPaquetePlanilla,
                    'tDiaHabilitaPaq' => $dato->CovInDiaHabilitaPaquete,
                    'tFondoReposicion' => intval($dato->CovInControlSiete),
                    'tDia1' => $dato->CovStDia1,
                    'tDia2' => $dato->CovStDia2,
                    'tDia3' => $dato->CovStDia3,
                    'tDia4' => $dato->CovStDia4,
                    'tDia5' => $dato->CovStDia5,
                    'tDia6' => $dato->CovStDia6,
                    'tDia7' => $dato->CovStDia7,
                    'tDia8' => $dato->CovStDia8,
                    'tDia9' => $dato->CovStDia9,
                    'tDia10' => $dato->CovStDia10,
                    'tDia11' => $dato->CovStDia11,
                    'tDia12' => $dato->CovStDia12,
                    'tDia13' => $dato->CovStDia13,
                    'tDia14' => $dato->CovStDia14,
                    'tDia15' => $dato->CovStDia15,
                    'tDia16' => $dato->CovStDia16,
                    'tDia17' => $dato->CovStDia17,
                    'tDia18' => $dato->CovStDia18,
                    'tDia19' => $dato->CovStDia19,
                    'tDia20' => $dato->CovStDia20,
                    'tDia21' => $dato->CovStDia21,
                    'tDia22' => $dato->CovStDia22,
                    'tDia23' => $dato->CovStDia23,
                    'tDia24' => $dato->CovStDia24,
                    'tDia25' => $dato->CovStDia25,
                    'tDia26' => $dato->CovStDia26,
                    'tDia27' => $dato->CovStDia27,
                    'tDia28' => $dato->CovStDia28,
                    'tDia29' => $dato->CovStDia29,
                    'tDia30' => $dato->CovStDia30,
                    'tDia31' => $dato->CovStDia31,

                ]);
            }
        }
        if ($c == 'y') {

            $sql2 = "SELECT A.CovInValorPlanilla,A.CovInValorAportes,A.CovInMes,A.CovIdStEmpresa,A.CovIdStPlaca,B.VpoIdStPropietario,C.CliStNombreCliente,D.VehStEstado FROM TRANCONTROLVEHICULOS A 
            INNER JOIN TRANVEHICULOS D ON (A.CovIdStEmpresa = D.VehIdStEmpresa AND A.CovIdStPlaca = D.VehIdStPlaca) 
            INNER JOIN TRANVEHICULOPROPIETARIOS B ON (D.VehIdStEmpresa = B.VpoIdStEmpresa AND D.VehIdStPlaca = B.VpoIdStPlacaVehiculo AND B.VpoStPrincipal ='1') 
            INNER JOIN CLIENTES C ON (B.VpoIdStEmpresa = C.cliempr AND B.VpoIdStPropietario = C.clinit) 
            WHERE CovInAno = $year";

            $datos1 = DB::select($sql2);

            if ($datos1 == null) {
                return null;
            }


            $datostemp = [];
            $valMesPlanilla = array_fill(1, 12, 0);
            $valMesAporte = array_fill(1, 12, 0);
            $posArr = null;
            $totales=[];


            foreach ($datos1 as $dato) {

                $x =  $dato->CovIdStEmpresa . '-' . $dato->CovIdStPlaca;

                $existe = in_array($x, $datostemp);

                if (!$existe) {

                    $valMesPlanilla = array_fill(1, 12, 0);
                    $valMesAporte = array_fill(1, 12, 0);

                    $valMesPlanilla[$dato->CovInMes] = $dato->CovInValorPlanilla;
                    $valMesAporte[$dato->CovInMes] = $dato->CovInValorAportes;

                    $posArr = count($datRow1);

                    array_push($datRow1, [

                        'numero'=>$posArr+1,
                        'tIDempresa' => $tIDempresa[$dato->CovIdStEmpresa],
                        'tPlaca' => $dato->CovIdStPlaca,
                        'tCedulaProp' => $dato->VpoIdStPropietario,
                        'tPropietario' => $dato->CliStNombreCliente,
                        'tEstadoVeh' => $tEstadoVeh[$dato->VehStEstado],
                        'tVrPlanilla' => $valMesPlanilla,
                        'tVrAportes' => $valMesAporte,
                        'acumPla' => $dato->CovInValorPlanilla,
                        'acumAportes' =>  $dato->CovInValorAportes
                    ]);

                    array_push($datostemp, $x);
                } else {

                    $valMesPlanilla[$dato->CovInMes] += $dato->CovInValorPlanilla;
                    $valMesAporte[$dato->CovInMes] += $dato->CovInValorAportes;
                    $datRow1[$posArr]['tVrPlanilla'] = $valMesPlanilla;
                    $datRow1[$posArr]['tVrAportes'] = $valMesAporte;
                    $datRow1[$posArr]['acumPla'] += $dato->CovInValorPlanilla;
                    $datRow1[$posArr]['acumAportes'] += $dato->CovInValorAportes;
                }
            }


            




        }




        return $datRow1;
    }
}
