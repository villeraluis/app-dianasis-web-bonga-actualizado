<?php

namespace App\Http\Controllers\contabilidad\informes\deGestion;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BalanceGeneralComparativoController extends Controller
{
    public function viewBalanceGeneralCom()
    {
        cambioBaseDatos();
        $empresa = session('Empresa');
        $sql1 = "SELECT PerAno FROM PERIODOS WHERE PerEmpr ='$empresa'  Group by PerAno";
        $periodos = DB::select($sql1);
        return view('contabilidad.informes.deGestion.balanceGeneralComparativo.indexBalanceGeneralCom', compact('periodos'));
    }

    public function infBalanceGeneralCom(Request $request)
    {

        $datos = $this->consultaEstadoResultadosCom($request);

        if ($datos == null ) {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
             No hay datos para Mostrar. 
          </div>";
        }

        return view('contabilidad.informes.deGestion.balanceGeneralComparativo.tablaBalanceGeneralCom', compact('datos'));
    }

    public function consultaEstadoResultadosCom($request)
    {
        cambioBaseDatos();
        $empresa = session('Empresa');
        $year = $request->selectYear;
        $mes = $request->selectMes;

        $datos = collect();

        $movVentas = "SELECT TmoAno,MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr FROM TMOVIMIENTO
                INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons
                WHERE (TmoEmpr ='$empresa' And (TmoAno = $year Or TmoAno =  ($year - 1)) And TmoMes <= $mes  And TmoApl = '0'
                AND (MovCuen Like '4%' OR MovCuen Like '5%' OR MovCuen Like '6%' OR MovCuen Like '7%' ))
                GROUP BY TmoAno,MovCuen,MovScue,MovAuxi,MovAuxl
                ORDER BY MovCuen,MovScue,MovAuxi,MovAuxl";


        $movBalance = "SELECT TmoAno,MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr FROM TMOVIMIENTO
                INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons
                WHERE (TmoEmpr ='$empresa' And (TmoAno = $year Or TmoAno =  ($year - 1)) And TmoMes <= $mes  And TmoApl = '0'
                AND (MovCuen Like '1%' OR MovCuen Like '2%' OR MovCuen Like '3%'))
                GROUP BY TmoAno,MovCuen,MovScue,MovAuxi,MovAuxl
                ORDER BY MovCuen,MovScue,MovAuxi,MovAuxl";

        $sqlActivos = "SELECT * FROM CARTILLA WHERE CarEmpr = '$empresa' And CarCuen Like '1%' And Carcuen <> '1000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $sqlPasivos = "SELECT * FROM CARTILLA WHERE CarEmpr = '$empresa' And CarCuen Like '2%' And Carcuen <> '2000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $sqlPatrimonio = "SELECT * FROM CARTILLA WHERE CarEmpr = '$empresa' And CarCuen Like '3%' And Carcuen <> '3000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";


        $movVen = DB::select($movVentas);

        $movBal = DB::select($movBalance);

        $cartActivos = DB::select($sqlActivos);

        $cartPasivos = DB::select($sqlPasivos);

        $cartPatrimonio = DB::select($sqlPatrimonio);

        $tActivosAc = 0;
        $tPasivosAc = 0;
        $tActivosAn = 0;
        $tPasivosAn = 0;
        $tPatrimonioAc = 0;
        $tPatrimonioAn = 0;


    


        foreach ($movVen as $dato) {
            if ($dato->TmoAno == $year) {
                $tPatrimonioAc += ($dato->MovValr*(-1));
            }
            if ($dato->TmoAno == ($year - 1)) {
                $tPatrimonioAn += ($dato->MovValr*(-1));
            }
        }

       




        foreach ($movBal as $dato) {

            $cu = $dato->MovCuen;

            if ($dato->TmoAno == $year) {
                if ($cu >= 1000 && $cu < 2000) {
                    $tActivosAc += $dato->MovValr;
                }
                if ($cu >= 2000 && $cu < 3000) {
                    $tPasivosAc += ($dato->MovValr*(-1));
                }
            }



            if ($dato->TmoAno == ($year - 1)) {
                if ($cu >= 1000 && $cu < 2000) {
                    $tActivosAn += $dato->MovValr;
                }
                if ($cu >= 2000 && $cu < 3000) {
                    $tPasivosAn += ($dato->MovValr*(-1));
                }
            }
        }








        $rowTablaVacio = [
            'cuenta' => '',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => '',
            'valorAc' => '',
            'valorAn' => '',
            'valorVari' => '',
            'porVari' => '',
            'type' => 'vacio'
        ];


        $Rowtabla = [
            'cuenta' => '1000',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'ACTIVOS',
            'valorAc' => esMoneda2dec($tActivosAc),
            'valorAn' => esMoneda2dec($tActivosAn),
            'valorVari' =>  variacion($tActivosAc, $tActivosAn),
            'porVari' => porcentaje($tActivosAn, variacionSinFormato($tActivosAc, $tActivosAn)),
            'type' => 'n1'
        ];


        $datos->push($Rowtabla);
        $datosOrds = $this->ordenardatosBalanceCom($cartActivos, $movBal, $year, false, $tPatrimonioAc , $tPatrimonioAn );;
        foreach ($datosOrds as $dat) {
            $datos->push($dat);
        }


        $datos->push($rowTablaVacio);

        $Rowtabla = [
            'cuenta' => '2000',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'PASIVOS',
            'valorAc' => esMoneda2dec($tPasivosAc),
            'valorAn' => esMoneda2dec($tPasivosAn),
            'valorVari' =>  variacion($tPasivosAc, $tPasivosAn),
            'porVari' => porcentaje($tPasivosAn, variacionSinFormato($tPasivosAc, $tPasivosAn)),
            'type' => 'n1'
        ];
        $datos->push($Rowtabla);


        $datosOrds = $this->ordenardatosBalanceCom($cartPasivos, $movBal, $year, true, $tPatrimonioAc , $tPatrimonioAn,true);
        foreach ($datosOrds as $dat) {
            $datos->push($dat);
        }



        $datos->push($rowTablaVacio);
        $Rowtabla = [
            'cuenta' => '3000',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'PATRIMONIO',
            'valorAc' => esMoneda2dec($tPatrimonioAc),
            'valorAn' => esMoneda2dec($tPatrimonioAn),
            'valorVari' =>  variacion($tPatrimonioAc, $tPatrimonioAn),
            'porVari' => porcentaje($tPatrimonioAn, variacionSinFormato($tPatrimonioAc, $tPatrimonioAn)),
            'type' => 'n1'
        ];
        $datos->push($Rowtabla);


        $datosOrds = $this->ordenardatosBalanceCom($cartPatrimonio, $movBal, $year, false, $tPatrimonioAc , $tPatrimonioAn ,true);
        foreach ($datosOrds as $dat) {
            $datos->push($dat);
        }



        $datos->push($rowTablaVacio);

        $Rowtabla = [
            'cuenta' => '',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'TOTAL PASIVO MAS PATRIMONIO',
            'valorAc' => esMoneda2dec($tPasivosAc + $tPatrimonioAc),
            'valorAn' => esMoneda2dec($tPasivosAn + $tPatrimonioAn),
            'valorVari' =>  variacion($tPasivosAc + $tPatrimonioAc, ($tPasivosAn + $tPatrimonioAn)),
            'porVari' => porcentaje(($tPasivosAn + $tPatrimonioAn), variacionSinFormato($tPasivosAc + $tPatrimonioAc, ($tPasivosAn + $tPatrimonioAn))),
            'type' => 'n1'
        ];
        $datos->push($Rowtabla);

        return $datos;



        return $datos;
    }


    //#####################ordena los datos de una lista de cartillas contables


    public function ordenardatosBalanceCom($cartillas, $movimientos, $year, $in = false, $saldoAc = 0, $saldoAn = 0,$in2=false)
    {

        $arr = [];
        foreach ($cartillas as $cartilla) {

            $cuenta = $cartilla->carcuen;
            $subCu = $cartilla->carscue;
            $auxi = $cartilla->carauxi;
            $auxl = $cartilla->carauxl;
            $total = 0;
            $totalAnt = 0;

            if ($subCu == '00') {

                if ($cuenta % 100 == 0) {

                    if ($cuenta == '3600') {

                        $total = 0;
                        $totalAnt = 0;
                        $arr2 = [];

                        if ($saldoAc > 0) {

                            array_push($arr, [
                                'cuenta' => $cuenta,
                                'subc' => $subCu,
                                'aux' => $auxi,
                                'aux1' => $auxl,
                                'descripcion' => $cartilla->carnomb,
                                'valorAc' => esMoneda2dec($saldoAc),
                                'valorAn' => esMoneda2dec($saldoAn),
                                'valorVari' =>  variacion($saldoAc, $saldoAn),
                                'porVari' => porcentaje($saldoAn, variacionSinFormato($saldoAc, $saldoAn)),
                                'type' => 'p1'
                            ]);


                            if (count($arr2) > 0) {

                                array_pop($arr);

                                foreach ($arr2 as $ar) {
                                    array_push($arr, $ar);
                                }
                            }

                            array_push($arr, [
                                'cuenta' => '3605',
                                'subc' => $subCu,
                                'aux' => $auxi,
                                'aux1' => $auxl,
                                'descripcion' => 'UTILIDAD DEL EJERCICIO',
                                'valorAc' => esMoneda2dec($saldoAc),
                                'valorAn' => esMoneda2dec($saldoAn),
                                'valorVari' => variacion($saldoAc, $saldoAn),
                                'porVari' => porcentaje($saldoAn, variacionSinFormato($saldoAc, $saldoAn)),
                                'type' => 'p2'
                            ]);

                            array_push($arr, [
                                'cuenta' => '3605',
                                'subc' => '05',
                                'aux' => '00',
                                'aux1' => '00',
                                'descripcion' => 'UTILIDAD DEL EJERCICIO',
                                'valorAc' => esMoneda2dec($saldoAc),
                                'valorAn' => esMoneda2dec($saldoAn),
                                'valorVari' => variacion($saldoAc, $saldoAn),
                                'porVari' => porcentaje($saldoAn, variacionSinFormato($saldoAc, $saldoAn)),
                                'type' => 'h'
                            ]);
                        }

                        if ($saldoAc <= 0) {


                            array_push($arr, [
                                'cuenta' => $cuenta,
                                'subc' => $subCu,
                                'aux' => $auxi,
                                'aux1' => $auxl,
                                'descripcion' => $cartilla->carnomb,
                                'valorAc' => esMoneda2dec($saldoAc),
                                'valorAn' => esMoneda2dec($saldoAn),
                                'valorVari' => variacion($saldoAc, $saldoAn),
                                'porVari' => porcentaje($saldoAn, variacionSinFormato($saldoAc, $saldoAn)),
                                'type' => 'p1'
                            ]);

                            if (count($arr2) > 0) {

                                array_pop($arr);

                                foreach ($arr2 as $ar) {
                                    array_push($arr, $ar);
                                }
                            }
                        }
                    } else {

                        $total = 0;
                        $totalAnt = 0;
                        $arr2 = [];
                        foreach ($movimientos as $mov) {
                            if (substr($mov->MovCuen, 0, -2) == substr($cuenta, 0, -2)) {

                                if ($mov->TmoAno == $year) {
                                    if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                        $mov->MovValr = $mov->MovValr * (-1);
                                    }
                                    
                                    $total += $mov->MovValr;
                                }

                                if ($mov->TmoAno == ($year - 1)) {
                                    if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                        $mov->MovValr = $mov->MovValr * (-1);
                                    }
                                    $totalAnt += $mov->MovValr;
                                }
                            }

                            if ($mov->MovCuen == $cuenta && $mov->MovScue == $subCu && $mov->MovAuxi == $auxi && $mov->MovAuxl == $auxl) {
                                array_push($arr2, [
                                    'cuenta' => $cuenta,
                                    'subc' => $subCu,
                                    'aux' => $auxi,
                                    'aux1' => $auxl,
                                    'descripcion' => $cartilla->carnomb,
                                    'valorAc' => esMoneda2dec($total),
                                    'valorAn' => esMoneda2dec($totalAnt),
                                    'valorVari' => variacion($total, $totalAnt),
                                    'porVari' => porcentaje($totalAnt, variacionSinFormato($total, $totalAnt)),
                                    'type' => 'h'
                                ]);
                            }
                        }

                        array_push($arr, [
                            'cuenta' => $cuenta,
                            'subc' => $subCu,
                            'aux' => $auxi,
                            'aux1' => $auxl,
                            'descripcion' => $cartilla->carnomb,
                            'valorAc' => esMoneda2dec($total),
                            'valorAn' => esMoneda2dec($totalAnt),
                            'valorVari' => variacion($total, $totalAnt),
                            'porVari' => porcentaje($totalAnt, variacionSinFormato($total, $totalAnt)),
                            'type' => 'p1'
                        ]);


                        if (count($arr2) > 0) {

                            array_pop($arr);

                            foreach ($arr2 as $ar) {
                                array_push($arr, $ar);
                            }
                        }
                    }


                    foreach ($cartillas as $cartilla1) {

                        $cuenta1 = $cartilla1->carcuen;
                        $subCu1 = $cartilla1->carscue;
                        $auxi1 = $cartilla1->carauxi;
                        $auxl1 = $cartilla1->carauxl;
                        $total = 0;
                        if ($cuenta1 != $cuenta) {
                            if (substr($cuenta1, 0, -2) == substr($cuenta, 0, -2) && $subCu1 == '00' && $auxi1 == '00' && $auxl1 == '00') {

                                if ($cuenta1 == '3610') {

                                    if ($saldoAc <= 0) {

                                        $total = 0;
                                        $arr2 = [];

                                        foreach ($movimientos as $mov) {


                                            if ($mov->MovCuen == $cuenta1 && $mov->MovScue == $subCu1 && $mov->MovAuxi == $auxi1 && $mov->MovAuxl == $auxl1) {
                                                array_push($arr2, [
                                                    'cuenta' => $cuenta1,
                                                    'subc' => $subCu1,
                                                    'aux' => $auxi1,
                                                    'aux1' => $auxl1,
                                                    'descripcion' => $cartilla1->carnomb,
                                                    'valorAc' => esMoneda2dec($saldoAc),
                                                    'valorAn' => esMoneda2dec($saldoAn),
                                                    'valorVari' => variacion($saldoAc, $saldoAn),
                                                    'porVari' => porcentaje($saldoAn, variacionSinFormato($saldoAc, $saldoAn)),
                                                    'type' => 'h'
                                                ]);
                                            }
                                        }

                                        array_push($arr, [
                                            'cuenta' => $cuenta1,
                                            'subc' => $subCu1,
                                            'aux' => $auxi1,
                                            'aux1' => $auxl1,
                                            'descripcion' => $cartilla1->carnomb,
                                            'valorAc' => esMoneda2dec($saldoAc),
                                            'valorAn' => esMoneda2dec($saldoAn),
                                            'valorVari' => variacion($saldoAc, $saldoAn),
                                            'porVari' => porcentaje($saldoAn, variacionSinFormato($saldoAc, $saldoAn)),
                                            'type' => 'p2'
                                        ]);


                                        if (count($arr2) > 0) {

                                            array_pop($arr);

                                            foreach ($arr2 as $ar) {
                                                array_push($arr, $ar);
                                            }
                                        }
                                    }

                                    if ($saldoAc > 0) {

                                        $totalAnt = 0;
                                        $total = 0;
                                        $arr2 = [];

                                        foreach ($movimientos as $mov) {

                                            if ($mov->MovCuen == $cuenta1) {
                                                if ($mov->TmoAno == $year) {
                                                    if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                                        $mov->MovValr = $mov->MovValr * (-1);
                                                    }
                                                    $total += $mov->MovValr;
                                                }

                                                if ($mov->TmoAno == ($year - 1)) {
                                                    if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                                        $mov->MovValr = $mov->MovValr * (-1);
                                                    }
                                                    $totalAnt += $mov->MovValr;
                                                }
                                            }



                                            if ($mov->MovCuen == $cuenta1 && $mov->MovScue == $subCu1 && $mov->MovAuxi == $auxi1 && $mov->MovAuxl == $auxl1) {
                                                array_push($arr2, [
                                                    'cuenta' => $cuenta1,
                                                    'subc' => $subCu1,
                                                    'aux' => $auxi1,
                                                    'aux1' => $auxl1,
                                                    'descripcion' => $cartilla1->carnomb,
                                                    'valorAc' => esMoneda2dec($total),
                                                    'valorAn' => esMoneda2dec($totalAnt),
                                                    'valorVari' => variacion($total, $totalAnt),
                                                    'porVari' => porcentaje($totalAnt, variacionSinFormato($total, $totalAnt)),
                                                    'type' => 'h'
                                                ]);
                                            }
                                        }

                                        array_push($arr, [
                                            'cuenta' => $cuenta1,
                                            'subc' => $subCu1,
                                            'aux' => $auxi1,
                                            'aux1' => $auxl1,
                                            'descripcion' => $cartilla1->carnomb,
                                            'valorAc' => esMoneda2dec($total),
                                            'valorAn' => esMoneda2dec($totalAnt),
                                            'valorVari' => variacion($total, $totalAnt),
                                            'porVari' => porcentaje($totalAnt, variacionSinFormato($total, $totalAnt)),
                                            'type' => 'p2'
                                        ]);


                                        if (count($arr2) > 0) {

                                            array_pop($arr);

                                            foreach ($arr2 as $ar) {
                                                array_push($arr, $ar);
                                            }
                                        }
                                    }
                                }


                                $total = 0;
                                $totalAnt = 0;
                                $arr2 = [];
                                foreach ($movimientos as $mov) {
                                    if ($mov->MovCuen == $cuenta1) {
                                        if ($mov->TmoAno == $year) {
                                            if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                                $mov->MovValr = $mov->MovValr * (-1);
                                            }
                                            $total += $mov->MovValr;
                                        }

                                        if ($mov->TmoAno == ($year - 1)) {
                                            if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                                $mov->MovValr = $mov->MovValr * (-1);
                                            }
                                            $totalAnt += $mov->MovValr;
                                        }
                                    }

                                    if ($mov->MovCuen == $cuenta1 && $mov->MovScue == $subCu1 && $mov->MovAuxi == $auxi1 && $mov->MovAuxl == $auxl1) {
                                        array_push($arr2, [
                                            'cuenta' => $cuenta1,
                                            'subc' => $subCu1,
                                            'aux' => $auxi1,
                                            'aux1' => $auxl1,
                                            'descripcion' => $cartilla1->carnomb,
                                            'valorAc' => esMoneda2dec($total),
                                            'valorAn' => esMoneda2dec($totalAnt),
                                            'valorVari' => variacion($total, $totalAnt),
                                            'porVari' => porcentaje($totalAnt, variacionSinFormato($total, $totalAnt)),
                                            'type' => 'h'
                                        ]);
                                    }
                                }


                                if ($total != 0 || $totalAnt != 0) {

                                    if ($cuenta1 != '3610') {

                                        array_push($arr, [
                                            'cuenta' => $cuenta1,
                                            'subc' => $subCu1,
                                            'aux' => $auxi1,
                                            'aux1' => $auxl1,
                                            'descripcion' => $cartilla1->carnomb,
                                            'valorAc' => esMoneda2dec($total),
                                            'valorAn' => esMoneda2dec($totalAnt),
                                            'valorVari' => variacion($total, $totalAnt),
                                            'porVari' => porcentaje($totalAnt, variacionSinFormato($total, $totalAnt)),
                                            'type' => 'p2'
                                        ]);


                                        if (count($arr2) > 0) {

                                            array_pop($arr);

                                            foreach ($arr2 as $ar) {
                                                array_push($arr, $ar);
                                            }
                                        }
                                    }

                                    foreach ($cartillas as $cartilla2) {

                                        $cuenta2 = $cartilla2->carcuen;
                                        $subCu2 = $cartilla2->carscue;
                                        $auxi2 = $cartilla2->carauxi;
                                        $auxl2 = $cartilla2->carauxl;
                                        $total = 0;
                                        $totalAnt = 0;

                                        if ($cuenta2 == $cuenta1  && $subCu2 !=  '00' && $auxi2 === '00' && $auxl2 === '00') {
                                            $total = 0;
                                            $totalAnt = 0;
                                            $arr2 = [];


                                            if ($cuenta2 == '3610' && $subCu2 == '05') {



                                                if ($saldoAc <= 0) {


                                                    foreach ($movimientos as $mov) {


                                                        if ($mov->MovCuen == $cuenta2 && $mov->MovScue == $subCu2 && $mov->MovAuxi == $auxi2 && $mov->MovAuxl == $auxl2) {
                                                            array_push($arr2, [
                                                                'cuenta' => $cuenta2,
                                                                'subc' => $subCu2,
                                                                'aux' => $auxi2,
                                                                'aux1' => $auxl2,
                                                                'descripcion' => $cartilla2->carnomb,
                                                                'valorAc' => esMoneda2dec($saldoAc),
                                                                'valorAn' => esMoneda2dec($saldoAn),
                                                                'valorVari' => variacion($saldoAc, $saldoAn),
                                                                'porVari' => porcentaje($saldoAn, variacionSinFormato($saldoAc, $saldoAn)),
                                                                'type' => 'h'
                                                            ]);
                                                        }
                                                    }

                                                    array_push($arr, [
                                                        'cuenta' => $cuenta2,
                                                        'subc' => $subCu2,
                                                        'aux' => $auxi2,
                                                        'aux1' => $auxl2,
                                                        'descripcion' => $cartilla2->carnomb,
                                                        'valorAc' => esMoneda2dec($saldoAc),
                                                        'valorAn' => esMoneda2dec($saldoAn),
                                                        'valorVari' => variacion($saldoAc, $saldoAn),
                                                        'porVari' => porcentaje($saldoAn, variacionSinFormato($saldoAc, $saldoAn)),
                                                        'type' => 'p3'
                                                    ]);

                                                    if (count($arr2) > 0) {

                                                        array_pop($arr);

                                                        foreach ($arr2 as $ar) {
                                                            array_push($arr, $ar);
                                                        }
                                                    }
                                                }
                                                if ($saldoAc > 0) {
                                                    $total = 0;
                                                    $arr2 = [];
                                                    foreach ($movimientos as $mov) {
                                                        if ($mov->MovCuen == $cuenta2 && $mov->MovScue == $subCu2) {

                                                            if ($mov->TmoAno == $year) {
                                                                if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                                                    $mov->MovValr = $mov->MovValr * (-1);
                                                                }
                                                                $total += $mov->MovValr;
                                                            }

                                                            if ($mov->TmoAno == ($year - 1)) {
                                                                if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                                                    $mov->MovValr = $mov->MovValr * (-1);
                                                                }
                                                                $totalAnt += $mov->MovValr;
                                                            }
                                                        }

                                                        if ($mov->MovCuen == $cuenta2 && $mov->MovScue == $subCu2 && $mov->MovAuxi == $auxi2 && $mov->MovAuxl == $auxl2) {
                                                            array_push($arr2, [
                                                                'cuenta' => $cuenta2,
                                                                'subc' => $subCu2,
                                                                'aux' => $auxi2,
                                                                'aux1' => $auxl2,
                                                                'descripcion' => $cartilla2->carnomb,
                                                                'valorAc' => esMoneda2dec($total),
                                                                'valorAn' => esMoneda2dec($totalAnt),
                                                                'valorVari' => variacion($total, $totalAnt),
                                                                'porVari' => porcentaje($totalAnt, variacionSinFormato($total, $totalAnt)),
                                                                'type' => 'h'
                                                            ]);
                                                        }
                                                    }

                                                    array_push($arr, [
                                                        'cuenta' => $cuenta2,
                                                        'subc' => $subCu2,
                                                        'aux' => $auxi2,
                                                        'aux1' => $auxl2,
                                                        'descripcion' => $cartilla2->carnomb,
                                                        'valorAc' => esMoneda2dec($total),
                                                        'valorAn' => esMoneda2dec($totalAnt),
                                                        'valorVari' => variacion($total, $totalAnt),
                                                        'porVari' => porcentaje($totalAnt, variacionSinFormato($total, $totalAnt)),
                                                        'type' => 'p3'
                                                    ]);

                                                    if (count($arr2) > 0) {

                                                        array_pop($arr);

                                                        foreach ($arr2 as $ar) {
                                                            array_push($arr, $ar);
                                                        }
                                                    }
                                                }
                                            }


                                            foreach ($movimientos as $mov) {
                                                if ($mov->MovCuen == $cuenta2 && $mov->MovScue == $subCu2) {

                                                    if ($mov->TmoAno == $year) {
                                                        if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                                            $mov->MovValr = $mov->MovValr * (-1);
                                                        }
                                                        $total += $mov->MovValr;
                                                    }

                                                    if ($mov->TmoAno == ($year - 1)) {
                                                        if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                                            $mov->MovValr = $mov->MovValr * (-1);
                                                        }
                                                        $totalAnt += $mov->MovValr;
                                                    }
                                                }

                                                if ($mov->MovCuen == $cuenta2 && $mov->MovScue == $subCu2 && $mov->MovAuxi == $auxi2 && $mov->MovAuxl == $auxl2) {
                                                    array_push($arr2, [
                                                        'cuenta' => $cuenta2,
                                                        'subc' => $subCu2,
                                                        'aux' => $auxi2,
                                                        'aux1' => $auxl2,
                                                        'descripcion' => $cartilla2->carnomb,
                                                        'valorAc' => esMoneda2dec($total),
                                                        'valorAn' => esMoneda2dec($totalAnt),
                                                        'valorVari' => variacion($total, $totalAnt),
                                                        'porVari' => porcentaje($totalAnt, variacionSinFormato($total, $totalAnt)),
                                                        'type' => 'h'
                                                    ]);
                                                }
                                            }


                                            if ($total != 0 || $totalAnt != 0) {

                                                if ($cuenta2 != '3610') {

                                                    array_push($arr, [
                                                        'cuenta' => $cuenta2,
                                                        'subc' => $subCu2,
                                                        'aux' => $auxi2,
                                                        'aux1' => $auxl2,
                                                        'descripcion' => $cartilla2->carnomb,
                                                        'valorAc' => esMoneda2dec($total),
                                                        'valorAn' => esMoneda2dec($totalAnt),
                                                        'valorVari' => variacion($total, $totalAnt),
                                                        'porVari' => porcentaje($totalAnt, variacionSinFormato($total, $totalAnt)),
                                                        'type' => 'p3'
                                                    ]);


                                                    if (count($arr2) > 0) {

                                                        array_pop($arr);

                                                        foreach ($arr2 as $ar) {
                                                            array_push($arr, $ar);
                                                        }
                                                    }
                                                }




                                                foreach ($cartillas as $cartilla3) {

                                                    $cuenta3 = $cartilla3->carcuen;
                                                    $subCu3 = $cartilla3->carscue;
                                                    $auxi3 = $cartilla3->carauxi;
                                                    $auxl3 = $cartilla3->carauxl;
                                                    $total = 0;
                                                    $totalAnt = 0;
                                                    if ($cuenta3 == $cuenta2  && $subCu3 == $subCu2 && $auxi3 != '00' && $auxl3 == '00') {

                                                        $total = 0;
                                                        $totalAnt = 0;
                                                        $arr2 = [];
                                                        foreach ($movimientos as $mov) {
                                                            if ($mov->MovCuen == $cuenta3 && $mov->MovScue == $subCu3 && $mov->MovAuxi == $auxi3) {
                                                                if ($mov->TmoAno == $year) {
                                                                    if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                                                        $mov->MovValr = $mov->MovValr * (-1);
                                                                    }
                                                                    $total += $mov->MovValr;
                                                                }

                                                                if ($mov->TmoAno == ($year - 1)) {
                                                                    if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                                                        $mov->MovValr = $mov->MovValr * (-1);
                                                                    }
                                                                    $totalAnt += $mov->MovValr;
                                                                }
                                                            }

                                                            if ($mov->MovCuen === $cuenta3 && $mov->MovScue === $subCu3 && $mov->MovAuxi === $auxi3 && $mov->MovAuxl === $auxl3) {
                                                                array_push($arr2, [
                                                                    'cuenta' => $cuenta3,
                                                                    'subc' => $subCu3,
                                                                    'aux' => $auxi3,
                                                                    'aux1' => $auxl3,
                                                                    'descripcion' => $cartilla3->carnomb,
                                                                    'valorAc' => esMoneda2dec($total),
                                                                    'valorAn' => esMoneda2dec($totalAnt),
                                                                    'valorVari' => variacion($total, $totalAnt),
                                                                    'porVari' => porcentaje($totalAnt, variacionSinFormato($total, $totalAnt)),
                                                                    'type' => 'h'
                                                                ]);
                                                            }
                                                        }


                                                        if ($total != 0) {

                                                            array_push($arr, [
                                                                'cuenta' => $cuenta3,
                                                                'subc' => $subCu3,
                                                                'aux' => $auxi3,
                                                                'aux1' => $auxl3,
                                                                'descripcion' => $cartilla3->carnomb,
                                                                'valorAc' => esMoneda2dec($total),
                                                                'valorAn' => esMoneda2dec($totalAnt),
                                                                'valorVari' => variacion($total, $totalAnt),
                                                                'porVari' => porcentaje($totalAnt, variacionSinFormato($total, $totalAnt)),
                                                                'type' => 'p4'
                                                            ]);


                                                            if (count($arr2) > 0) {

                                                                array_pop($arr);

                                                                foreach ($arr2 as $ar) {
                                                                    array_push($arr, $ar);
                                                                }
                                                            }

                                                            foreach ($cartillas as $cartilla4) {

                                                                $cuenta4 = $cartilla4->carcuen;
                                                                $subCu4 = $cartilla4->carscue;
                                                                $auxi4 = $cartilla4->carauxi;
                                                                $auxl4 = $cartilla4->carauxl;
                                                                $total = 0;
                                                                $totalAnt = 0;
                                                                $arr2 = [];

                                                                if ($cuenta4 == $cuenta3  && $subCu4 == $subCu3 && $auxi4 == $auxi3 && $auxl4 != '00') {
                                                                    $total = 0;
                                                                    $totalAnt = 0;
                                                                    $arr2 = [];
                                                                    foreach ($movimientos as $mov) {
                                                                        if ($mov->MovCuen == $cuenta4 && $mov->MovScue == $subCu4 && $mov->MovAuxi == $auxi4 && $mov->MovAuxl === $auxl4) {
                                                                            if ($mov->TmoAno == $year) {
                                                                                if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                                                                    $mov->MovValr = $mov->MovValr * (-1);
                                                                                }
                                                                                $total += $mov->MovValr;
                                                                            }

                                                                            if ($mov->TmoAno == ($year - 1)) {
                                                                                if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                                                                    $mov->MovValr = $mov->MovValr * (-1);
                                                                                }
                                                                                $totalAnt += $mov->MovValr;
                                                                            }

                                                                            if ($total != 0 || $totalAnt != 0) {
                                                                                array_push($arr2, [
                                                                                    'cuenta' => $cuenta4,
                                                                                    'subc' => $subCu4,
                                                                                    'aux' => $auxi4,
                                                                                    'aux1' => $auxl4,
                                                                                    'descripcion' => $cartilla4->carnomb,
                                                                                    'valorAc' => esMoneda2dec($total),
                                                                                    'valorAn' => esMoneda2dec($totalAnt),
                                                                                    'valorVari' => variacion($total, $totalAnt),
                                                                                    'porVari' => porcentaje($totalAnt, variacionSinFormato($total, $totalAnt)),
                                                                                    'type' => 'h'
                                                                                ]);
                                                                            }
                                                                        }
                                                                    }

                                                                    if ($total != 0) {
                                                                        array_push($arr, [
                                                                            'cuenta' => $cuenta4,
                                                                            'subc' => $subCu4,
                                                                            'aux' => $auxi4,
                                                                            'aux1' => $auxl4,
                                                                            'descripcion' => $cartilla4->carnomb,
                                                                            'valorAc' => esMoneda2dec($total),
                                                                            'valorAn' => esMoneda2dec($totalAnt),
                                                                            'valorVari' => variacion($total, $totalAnt),
                                                                            'porVari' => porcentaje($totalAnt, variacionSinFormato($total, $totalAnt)),
                                                                            'type' => 'p5'
                                                                        ]);

                                                                        if (count($arr2) > 0) {

                                                                            array_pop($arr);

                                                                            foreach ($arr2 as $ar) {
                                                                                array_push($arr, $ar);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        return $arr;
    }





    //###########
    public function ordenarDatos($cartillas, $movimientos, $mes, $year, $acuPActal, $acuPAnter, $in = false,$in2=false)
    {

        $arr = [];

        foreach ($cartillas as $cartilla) {

            $cuenta = $cartilla->carcuen;
            $subCu = $cartilla->carscue;
            $auxi = $cartilla->carauxi;
            $auxl = $cartilla->carauxl;
            $arr2 = [];
            $arrMesAc = [];

            $arrMesAnt = [];
            $porMesAct = [];
            $porMesAnt = [];

            $existeCu = false;


            if ($subCu == '00') {

                for ($i = 1; $i <= $mes; $i++) {
                    $valMesAc = 0;
                    $valMesAn = 0;

                    foreach ($movimientos as $mov) {

                        if ($mov->TmoMes == $i && $mov->TmoAno == $year && $mov->MovCuen == $cuenta) {
                            if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                $mov->MovValr = $mov->MovValr * (-1);
                            }

                            $valMesAc += $mov->MovValr;
                            $arrMesAc[$mov->TmoMes] = $valMesAc;
                            if (isset($acuPActal[$i])) {
                                $porMesAct[$i] = porcentaje($acuPActal[$i], $valMesAc);
                            }
                        }

                        if ($mov->TmoMes == $i && $mov->TmoAno == ($year - 1) && $mov->MovCuen == $cuenta) {
                            if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                $mov->MovValr = $mov->MovValr * (-1);
                            }
                            $valMesAn += $mov->MovValr;
                            $arrMesAnt[$mov->TmoMes] = $valMesAn;

                            $porMesAnt[$i] = porcentaje($acuPAnter[$i], $valMesAn);
                        }
                    }
                }


                $acumMesActual = array_sum($arrMesAc);
                $acumMesAnte = array_sum($arrMesAnt);
                $varAbs = variacion($acumMesActual, $acumMesAnte);


                foreach ($movimientos as $mov) {

                    if ($mov->MovCuen == $cuenta) {
                        $existeCu = true;
                    }

                    if ($mov->MovCuen == $cuenta && $mov->MovScue == $subCu && $mov->MovAuxi == $auxi && $mov->MovAuxl == $auxl) {

                        array_push($arr2, [
                            'mesRecibido' => $mes,
                            'year' => $year,
                            'cuenta' => $cuenta,
                            'subc' => $subCu,
                            'aux' => $auxi,
                            'aux1' => $auxl,
                            'descripcion' => $cartilla->carnomb,
                            'mesesActual' => $arrMesAc,
                            'acuActval' => $acumMesActual,
                            'acuActporc' =>  $porMesAct,
                            'mesesAnterior' => $arrMesAnt,
                            'acuAntval' => $acumMesAnte,
                            'acuAntporc' => $porMesAnt,
                            'acumPorAct' => porcentaje(array_sum($acuPActal), $acumMesActual),
                            'acumPorAnt' => porcentaje(array_sum($acuPAnter), $acumMesAnte),
                            'variacionAbs' => $varAbs,
                            'cumplim' => '',
                            'type' => 'mov'
                        ]);
                        break;
                    }
                }

                if ($existeCu) {

                    array_push($arr, [
                        'mesRecibido' => $mes,
                        'year' => $year,
                        'cuenta' => $cuenta,
                        'subc' => $subCu,
                        'aux' => $auxi,
                        'aux1' => $auxl,
                        'descripcion' => $cartilla->carnomb,
                        'mesesActual' => $arrMesAc,
                        'acuActval' => $acumMesActual,
                        'acuActporc' =>  $porMesAct,
                        'mesesAnterior' => $arrMesAnt,
                        'acuAntval' => $acumMesAnte,
                        'acuAntporc' => $porMesAnt,
                        'acumPorAct' => porcentaje(array_sum($acuPActal), $acumMesActual),
                        'acumPorAnt' => porcentaje(array_sum($acuPAnter), $acumMesAnte),
                        'variacionAbs' => $varAbs,
                        'cumplim' => '',
                        'type' => 'p1'
                    ]);

                    if (count($arr2) > 0) {

                        array_pop($arr);

                        foreach ($arr2 as $ar) {
                            array_push($arr, $ar);
                        }
                    }

                    foreach ($cartillas as $cartilla1) {

                        $cuenta1 = $cartilla1->carcuen;
                        $subCu1 = $cartilla1->carscue;
                        $auxi1 = $cartilla1->carauxi;
                        $auxl1 = $cartilla1->carauxl;
                        $arr2 = [];
                        $arrMesAc = [];
                        $arrMesAnt = [];
                        $porMesAct = [];
                        $porMesAnt = [];
                        $existeCu = false;

                        if ($cuenta1 == $cuenta && $subCu1 != '00' && $auxi1 == '00') {

                            for ($i = 1; $i <= $mes; $i++) {
                                $valMesAc = 0;
                                $valMesAn = 0;
                                foreach ($movimientos as $mov) {

                                    if ($mov->TmoMes == $i && $mov->TmoAno == $year && $mov->MovCuen == $cuenta1  && $mov->MovScue == $subCu1) {

                                        if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                            $mov->MovValr = $mov->MovValr * (-1);
                                        }
                                        $valMesAc += $mov->MovValr;
                                        $arrMesAc[$mov->TmoMes] = $valMesAc;
                                        if (isset($acuPActal[$i])) {
                                            $porMesAct[$i] = porcentaje($acuPActal[$i], $valMesAc);
                                        }
                                    }

                                    if ($mov->TmoMes == $i && $mov->TmoAno == ($year - 1) && $mov->MovCuen == $cuenta1  && $mov->MovScue == $subCu1) {
                                        if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                            $mov->MovValr = $mov->MovValr * (-1);
                                        }
                                        $valMesAn += $mov->MovValr;
                                        $arrMesAnt[$mov->TmoMes] = $valMesAn;
                                        $porMesAnt[$i] = porcentaje($acuPAnter[$i], $valMesAn);
                                    }
                                }
                            }


                            $acumMesActual = array_sum($arrMesAc);
                            $acumMesAnte = array_sum($arrMesAnt);
                            $varAbs = variacion($acumMesActual, $acumMesAnte);
                            foreach ($movimientos as $mov) {

                                if ($mov->MovCuen == $cuenta1 && $mov->MovScue == $subCu1) {
                                    $existeCu = true;
                                }

                                if ($mov->MovCuen == $cuenta1 && $mov->MovScue == $subCu1 && $mov->MovAuxi == $auxi1 && $mov->MovAuxl == $auxl1) {
                                    array_push($arr2, [
                                        'mesRecibido' => $mes,
                                        'year' => $year,
                                        'cuenta' => $cuenta1,
                                        'subc' => $subCu1,
                                        'aux' => $auxi1,
                                        'aux1' => $auxl1,
                                        'descripcion' => $cartilla1->carnomb,
                                        'mesesActual' => $arrMesAc,
                                        'acuActval' => $acumMesActual,
                                        'acuActporc' =>  $porMesAct,
                                        'mesesAnterior' => $arrMesAnt,
                                        'acuAntval' => $acumMesAnte,
                                        'acuAntporc' => $porMesAnt,
                                        'acumPorAct' => porcentaje(array_sum($acuPActal), $acumMesActual),
                                        'acumPorAnt' => porcentaje(array_sum($acuPAnter), $acumMesAnte),
                                        'variacionAbs' => $varAbs,
                                        'cumplim' => '',
                                        'type' => 'mov'
                                    ]);
                                    break;
                                }
                            }

                            if ($existeCu) {

                                array_push($arr, [
                                    'mesRecibido' => $mes,
                                    'year' => $year,
                                    'cuenta' => $cuenta1,
                                    'subc' => $subCu1,
                                    'aux' => $auxi1,
                                    'aux1' => $auxl1,
                                    'descripcion' => $cartilla1->carnomb,
                                    'mesesActual' => $arrMesAc,
                                    'acuActval' => $acumMesActual,
                                    'acuActporc' =>  $porMesAct,
                                    'mesesAnterior' => $arrMesAnt,
                                    'acuAntval' => $acumMesAnte,
                                    'acuAntporc' => $porMesAnt,
                                    'acumPorAct' => porcentaje(array_sum($acuPActal), $acumMesActual),
                                    'acumPorAnt' => porcentaje(array_sum($acuPAnter), $acumMesAnte),
                                    'variacionAbs' => $varAbs,
                                    'cumplim' => '',
                                    'type' => 'p2'
                                ]);

                                if (count($arr2) > 0) {

                                    array_pop($arr);

                                    foreach ($arr2 as $ar) {
                                        array_push($arr, $ar);
                                    }
                                }

                                foreach ($cartillas as $cartilla2) {

                                    $cuenta2 = $cartilla2->carcuen;
                                    $subCu2 = $cartilla2->carscue;
                                    $auxi2 = $cartilla2->carauxi;
                                    $auxl2 = $cartilla2->carauxl;
                                    $total = 0;
                                    $arr2 = [];
                                    $arrMesAc = [];
                                    $arrMesAnt = [];
                                    $existeCu2 = false;


                                    if ($cuenta2 == $cuenta1 && $subCu2 == $subCu1 && $auxi2 != '00' && $auxl2 == '00') {


                                        for ($i = 1; $i <= $mes; $i++) {
                                            $valMesAc = 0;
                                            $valMesAn = 0;
                                            foreach ($movimientos as $mov) {

                                                if ($mov->TmoMes == $i && $mov->TmoAno == $year && $mov->MovCuen == $cuenta2  && $mov->MovScue == $subCu2 && $mov->MovAuxi == $auxi2) {
                                                    if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                                        $mov->MovValr = $mov->MovValr * (-1);
                                                    }

                                                    $valMesAc += $mov->MovValr;
                                                    $arrMesAc[$mov->TmoMes] = $valMesAc;
                                                    if (isset($acuPActal[$i])) {
                                                        $porMesAct[$i] = porcentaje($acuPActal[$i], $valMesAc);
                                                    }
                                                }

                                                if ($mov->TmoMes == $i && $mov->TmoAno == ($year - 1) && $mov->MovCuen == $cuenta2  && $mov->MovScue == $subCu2 && $mov->MovAuxi == $auxi2) {
                                                    if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                                        $mov->MovValr = $mov->MovValr * (-1);
                                                    }
                                                    $valMesAn += $mov->MovValr;
                                                    $arrMesAnt[$mov->TmoMes] = $valMesAn;
                                                    $porMesAnt[$i] = porcentaje($acuPAnter[$i], $valMesAn);
                                                }
                                            }
                                        }

                                        $acumMesActual = array_sum($arrMesAc);
                                        $acumMesAnte = array_sum($arrMesAnt);
                                        $varAbs = variacion($acumMesActual, $acumMesAnte);

                                        foreach ($movimientos as $mov) {
                                            if ($mov->MovCuen == $cuenta2  && $mov->MovScue == $subCu2 && $mov->MovAuxi == $auxi2) {
                                                $existeCu2 = true;
                                            }

                                            if ($mov->MovCuen == $cuenta2 && $mov->MovScue == $subCu2 && $mov->MovAuxi == $auxi2 && $mov->MovAuxl == $auxl2) {

                                                array_push($arr2, [
                                                    'mesRecibido' => $mes,
                                                    'year' => $year,
                                                    'cuenta' => $cuenta2,
                                                    'subc' => $subCu2,
                                                    'aux' => $auxi2,
                                                    'aux1' => $auxl2,
                                                    'descripcion' => $cartilla2->carnomb,
                                                    'mesesActual' => $arrMesAc,
                                                    'acuActval' => $acumMesActual,
                                                    'acuActporc' =>  $porMesAct,
                                                    'mesesAnterior' => $arrMesAnt,
                                                    'acuAntval' => $acumMesAnte,
                                                    'acuAntporc' => $porMesAnt,
                                                    'acumPorAct' => porcentaje(array_sum($acuPActal), $acumMesActual),
                                                    'acumPorAnt' => porcentaje(array_sum($acuPAnter), $acumMesAnte),
                                                    'variacionAbs' => $varAbs,
                                                    'cumplim' => '',
                                                    'type' => 'mov'
                                                ]);
                                                break;
                                            }
                                        }

                                        if ($existeCu2) {

                                            array_push($arr, [
                                                'mesRecibido' => $mes,
                                                'year' => $year,
                                                'cuenta' => $cuenta2,
                                                'subc' => $subCu2,
                                                'aux' => $auxi2,
                                                'aux1' => $auxl2,
                                                'descripcion' => $cartilla2->carnomb,
                                                'mesesActual' => $arrMesAc,
                                                'acuActval' => $acumMesActual,
                                                'acuActporc' =>  $porMesAct,
                                                'mesesAnterior' => $arrMesAnt,
                                                'acuAntval' => $acumMesAnte,
                                                'acuAntporc' => $porMesAnt,
                                                'acumPorAct' => porcentaje(array_sum($acuPActal), $acumMesActual),
                                                'acumPorAnt' => porcentaje(array_sum($acuPAnter), $acumMesAnte),
                                                'variacionAbs' => $varAbs,
                                                'cumplim' => '',
                                                'type' => 'p3'
                                            ]);

                                            if (count($arr2) > 0) {

                                                array_pop($arr);

                                                foreach ($arr2 as $ar) {
                                                    array_push($arr, $ar);
                                                }
                                            }

                                            foreach ($cartillas as $cartilla3) {

                                                $cuenta3 = $cartilla3->carcuen;
                                                $subCu3 = $cartilla3->carscue;
                                                $auxi3 = $cartilla3->carauxi;
                                                $auxl3 = $cartilla3->carauxl;
                                                $total = 0;
                                                $arr2 = [];
                                                $arrMesAc = [];
                                                $arrMesAnt = [];
                                                $existeCu3 = false;


                                                if ($cuenta3 == $cuenta2 && $subCu3 == $subCu2 && $auxi3 == $auxi2 && $auxl3 != '00') {



                                                    for ($i = 1; $i <= $mes; $i++) {
                                                        $valMesAc = 0;
                                                        $valMesAn = 0;
                                                        foreach ($movimientos as $mov) {

                                                            if ($mov->TmoMes == $i && $mov->TmoAno == $year && $mov->MovCuen == $cuenta3  && $mov->MovScue == $subCu3 && $mov->MovAuxi == $auxi3 && $mov->MovAuxl == $auxl3) {
                                                                if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                                                    $mov->MovValr = $mov->MovValr * (-1);
                                                                }
                                                                $valMesAc += $mov->MovValr;
                                                                $arrMesAc[$mov->TmoMes] = $valMesAc;

                                                                if (isset($acuPActal[$i])) {
                                                                    $porMesAct[$i] = porcentaje($acuPActal[$i], $valMesAc);
                                                                }
                                                            }

                                                            if ($mov->TmoMes == $i && $mov->TmoAno == ($year - 1) && $mov->MovCuen == $cuenta3  && $mov->MovScue == $subCu3 && $mov->MovAuxi == $auxi3 && $mov->MovAuxl == $auxl3) {
                                                                if (($mov->MovValr  < 0 && $in) ||($mov->MovValr  > 0 && $in2)) {
                                                                    $mov->MovValr = $mov->MovValr * (-1);
                                                                }
                                                                $valMesAn += $mov->MovValr;
                                                                $arrMesAnt[$mov->TmoMes] = $valMesAn;
                                                                $porMesAnt[$i] = porcentaje($acuPAnter[$i], $valMesAn);
                                                            }
                                                        }
                                                    }

                                                    $acumMesActual = array_sum($arrMesAc);
                                                    $acumMesAnte = array_sum($arrMesAnt);
                                                    $varAbs = variacion($acumMesActual, $acumMesAnte);

                                                    foreach ($movimientos as $mov) {

                                                        if ($mov->MovCuen == $cuenta3  && $mov->MovScue == $subCu3 && $mov->MovAuxi == $auxi3 && $mov->MovAuxl == $auxl3) {
                                                            $existeCu3 = true;
                                                            array_push($arr2, [
                                                                'mesRecibido' => $mes,
                                                                'year' => $year,
                                                                'cuenta' => $cuenta3,
                                                                'subc' => $subCu3,
                                                                'aux' => $auxi3,
                                                                'aux1' => $auxl3,
                                                                'descripcion' => $cartilla3->carnomb,
                                                                'mesesActual' => $arrMesAc,
                                                                'acuActval' => $acumMesActual,
                                                                'acuActporc' =>  $porMesAct,
                                                                'mesesAnterior' => $arrMesAnt,
                                                                'acuAntval' => $acumMesAnte,
                                                                'acuAntporc' => $porMesAnt,
                                                                'acumPorAct' => porcentaje(array_sum($acuPActal), $acumMesActual),
                                                                'acumPorAnt' => porcentaje(array_sum($acuPAnter), $acumMesAnte),
                                                                'variacionAbs' => $varAbs,
                                                                'cumplim' => '',
                                                                'type' => 'mov'
                                                            ]);
                                                            break;
                                                        }
                                                    }


                                                    if ($existeCu3) {

                                                        if (count($arr2) > 0) {

                                                            foreach ($arr2 as $ar) {
                                                                array_push($arr, $ar);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        return $arr;
    }
}
