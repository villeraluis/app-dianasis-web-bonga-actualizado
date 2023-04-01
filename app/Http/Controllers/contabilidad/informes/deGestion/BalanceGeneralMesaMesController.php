<?php

namespace App\Http\Controllers\contabilidad\informes\deGestion;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PhpParser\Node\Stmt\Break_;

class BalanceGeneralMesaMesController extends Controller
{
    public function viewBalanceGeneralMaM()
    {
        cambioBaseDatos();
        $empresa = session('Empresa');
        $sql1 = "SELECT PerAno FROM PERIODOS WHERE PerEmpr ='$empresa'  Group by PerAno";
        $periodos = DB::select($sql1);
        return view('contabilidad.informes.deGestion.balanceGeneralMesToMes.indexBalanceGeneralMaM', compact('periodos'));
    }


    public function infBalanceGeneralMaM(Request $request)
    {

        $datos = $this->consultaEstadoResultadosMaM($request);

        if ($datos == null ) {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
             No hay datos para Mostrar. 
          </div>";
        }

        return view('contabilidad.informes.deGestion.balanceGeneralMesToMes.tablaBalanceGeneralMaM', compact('datos'));
    }



    public function consultaEstadoResultadosMaM($request)
    {
        cambioBaseDatos();
        $empresa = session('Empresa');
        $year = $request->selectYear;

        $datos = collect();

        $movVentas = "SELECT TmoMes,MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr FROM TMOVIMIENTO 
                INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons 
                WHERE TmoEmpr ='$empresa' And TmoAno = $year And TmoMes <=12  And TmoApl = '0' 
                AND (MovCuen Like '4%' OR MovCuen Like '5%' OR MovCuen Like '6%' OR MovCuen Like '7%' )
                GROUP BY TmoMes,MovCuen,MovScue,MovAuxi,MovAuxl";


        $movBalance = "SELECT TmoMes,MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr FROM TMOVIMIENTO 
                INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons 
                WHERE TmoEmpr ='$empresa' And TmoAno = $year And TmoMes <=12  And TmoApl = '0' 
                AND (MovCuen Like '1%' OR MovCuen Like '2%' OR MovCuen Like '3%')
                GROUP BY TmoMes,MovCuen,MovScue,MovAuxi,MovAuxl";


        $sqlActivos = "SELECT * FROM CARTILLA WHERE CarEmpr = '$empresa' And CarCuen Like '1%' And Carcuen <> '1000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $sqlPasivos = "SELECT * FROM CARTILLA WHERE CarEmpr = '$empresa' And CarCuen Like '2%' And Carcuen <> '2000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $sqlPatrimonio = "SELECT * FROM CARTILLA WHERE CarEmpr = '$empresa' And CarCuen Like '3%' And Carcuen <> '3000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";


        $movVen = DB::select($movVentas);

        $movBal = DB::select($movBalance);

        $cartActivos = DB::select($sqlActivos);

        $cartPasivos = DB::select($sqlPasivos);

        $cartPatrimonio = DB::select($sqlPatrimonio);

        $tActivos = array_fill(0, 13, 0);
        $tPasivos = array_fill(0, 13, 0);
        $tPatrimonio = array_fill(0, 13, 0);




        for ($i = 1; $i <= 12; $i++) {

            

            foreach ($movBal  as $dato) {
                $cu = $dato->MovCuen;
                if ($dato->TmoMes == $i) {
                    if ($cu >= 1000 && $cu < 2000) {
                        $tActivos[$i] += $dato->MovValr;
                    }
                    if ($cu >= 2000 && $cu < 3000) {
                        $tPasivos[$i] += ($dato->MovValr * (-1));
                    }
                }
            }


            $tActivos[$i] = $tActivos[$i] + $tActivos[$i - 1];
            $tPasivos[$i] = $tPasivos[$i] + $tPasivos[$i - 1];

            foreach ($movVen  as $dato) {
                $cu = $dato->MovCuen;
                if ($dato->TmoMes == $i) {
                    $tPatrimonio[$i] += ($dato->MovValr * (-1));
                }
            }
            $tPatrimonio[$i] = $tPatrimonio[$i] + $tPatrimonio[$i - 1];
        }





        $rowTablaVacio = [
            'cuenta' => '',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => '',
            'ene' => '',
            'feb' => '',
            'mar' => '',
            'abr' => '',
            'may' => '',
            'jun' => '',
            'jul' => '',
            'ago' => '',
            'sep' => '',
            'oct' => '',
            'nov' => '',
            'dic' => '',
            'type' => 'vacio'
        ];


        $Rowtabla = [
            'cuenta' => '1000',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'ACTIVOS',
            'ene' => esMoneda2dec($tActivos[1]),
            'feb' => esMoneda2dec($tActivos[2]),
            'mar' => esMoneda2dec($tActivos[3]),
            'abr' => esMoneda2dec($tActivos[4]),
            'may' => esMoneda2dec($tActivos[5]),
            'jun' => esMoneda2dec($tActivos[6]),
            'jul' => esMoneda2dec($tActivos[7]),
            'ago' => esMoneda2dec($tActivos[8]),
            'sep' => esMoneda2dec($tActivos[9]),
            'oct' => esMoneda2dec($tActivos[10]),
            'nov' => esMoneda2dec($tActivos[11]),
            'dic' => esMoneda2dec($tActivos[12]),
            'type' => 'n1'
        ];


        $datos->push($Rowtabla);

        $datosOrds = $this->ordenardatosBalanceCom($cartActivos, $movBal, false);
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
            'ene' => esMoneda2dec($tPasivos[1]),
            'feb' => esMoneda2dec($tPasivos[2]),
            'mar' => esMoneda2dec($tPasivos[3]),
            'abr' => esMoneda2dec($tPasivos[4]),
            'may' => esMoneda2dec($tPasivos[5]),
            'jun' => esMoneda2dec($tPasivos[6]),
            'jul' => esMoneda2dec($tPasivos[7]),
            'ago' => esMoneda2dec($tPasivos[8]),
            'sep' => esMoneda2dec($tPasivos[9]),
            'oct' => esMoneda2dec($tPasivos[10]),
            'nov' => esMoneda2dec($tPasivos[11]),
            'dic' => esMoneda2dec($tPasivos[12]),
            'type' => 'n1'
        ];
        $datos->push($Rowtabla);

        $datosOrds = $this->ordenardatosBalanceCom($cartPasivos, $movBal, true);
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
            'ene' => esMoneda2dec($tPatrimonio[1]),
            'feb' => esMoneda2dec($tPatrimonio[2]),
            'mar' => esMoneda2dec($tPatrimonio[3]),
            'abr' => esMoneda2dec($tPatrimonio[4]),
            'may' => esMoneda2dec($tPatrimonio[5]),
            'jun' => esMoneda2dec($tPatrimonio[6]),
            'jul' => esMoneda2dec($tPatrimonio[7]),
            'ago' => esMoneda2dec($tPatrimonio[8]),
            'sep' => esMoneda2dec($tPatrimonio[9]),
            'oct' => esMoneda2dec($tPatrimonio[10]),
            'nov' => esMoneda2dec($tPatrimonio[11]),
            'dic' => esMoneda2dec($tPatrimonio[12]),
            'type' => 'n1'
        ];
        $datos->push($Rowtabla);

        $datosOrds = $this->ordenardatosBalanceCom($cartPatrimonio, $movBal, true, $tPatrimonio);
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
            'ene' => esMoneda2dec($tPasivos[1] + $tPatrimonio[1]),
            'feb' => esMoneda2dec($tPasivos[2] + $tPatrimonio[2]),
            'mar' => esMoneda2dec($tPasivos[3] + $tPatrimonio[3]),
            'abr' => esMoneda2dec($tPasivos[4] + $tPatrimonio[4]),
            'may' => esMoneda2dec($tPasivos[5] + $tPatrimonio[5]),
            'jun' => esMoneda2dec($tPasivos[6] + $tPatrimonio[6]),
            'jul' => esMoneda2dec($tPasivos[7] + $tPatrimonio[7]),
            'ago' => esMoneda2dec($tPasivos[8] + $tPatrimonio[8]),
            'sep' => esMoneda2dec($tPasivos[9] + $tPatrimonio[9]),
            'oct' => esMoneda2dec($tPasivos[10] + $tPatrimonio[10]),
            'nov' => esMoneda2dec($tPasivos[11] + $tPatrimonio[11]),
            'dic' => esMoneda2dec($tPasivos[12] + $tPatrimonio[12]),
            'type' => 'n1'
        ];
        $datos->push($Rowtabla);

        return $datos;
    }




    //#####################ordena los datos de una lista de cartillas contables


    public function ordenardatosBalanceCom($cartillas, $movimientos, $in = false, $tPatrimonio = [])
    {

        $arr = [];
        foreach ($cartillas as $cartilla) {

            $cuenta = $cartilla->carcuen;
            $subCu = $cartilla->carscue;
            $auxi = $cartilla->carauxi;
            $auxl = $cartilla->carauxl;
            $total = array_fill(0, 13, 0);


            if ($subCu == '00') {

                if ($cuenta % 100 == 0) {

                    $total = array_fill(0, 13, 0);

                    if ($cuenta == '3600') {

                        array_push($arr, [
                            'cuenta' => $cuenta,
                            'subc' => $subCu,
                            'aux' => $auxi,
                            'aux1' => $auxl,
                            'descripcion' => $cartilla->carnomb,
                            'ene' => esMoneda2dec($tPatrimonio[1]),
                            'feb' => esMoneda2dec($tPatrimonio[2]),
                            'mar' => esMoneda2dec($tPatrimonio[3]),
                            'abr' => esMoneda2dec($tPatrimonio[4]),
                            'may' => esMoneda2dec($tPatrimonio[5]),
                            'jun' => esMoneda2dec($tPatrimonio[6]),
                            'jul' => esMoneda2dec($tPatrimonio[7]),
                            'ago' => esMoneda2dec($tPatrimonio[8]),
                            'sep' => esMoneda2dec($tPatrimonio[9]),
                            'oct' => esMoneda2dec($tPatrimonio[10]),
                            'nov' => esMoneda2dec($tPatrimonio[11]),
                            'dic' => esMoneda2dec($tPatrimonio[12]),
                            'type' => 'p1'
                        ]);

                        $totalE = array_fill(0, 13, 0);

                        for ($i = 1; $i <= 12; $i++) {

                            if ($tPatrimonio[$i] > 0) {
                                $totalE[$i] = $tPatrimonio[$i];
                            }
                        }


                        array_push($arr, [
                            'cuenta' => '3605',
                            'subc' => $subCu,
                            'aux' => $auxi,
                            'aux1' => $auxl,
                            'descripcion' => 'UTILIDAD DEL EJERCICIO',
                            'ene' => esMoneda2dec($totalE[1]),
                            'feb' => esMoneda2dec($totalE[2]),
                            'mar' => esMoneda2dec($totalE[3]),
                            'abr' => esMoneda2dec($totalE[4]),
                            'may' => esMoneda2dec($totalE[5]),
                            'jun' => esMoneda2dec($totalE[6]),
                            'jul' => esMoneda2dec($totalE[7]),
                            'ago' => esMoneda2dec($totalE[8]),
                            'sep' => esMoneda2dec($totalE[9]),
                            'oct' => esMoneda2dec($totalE[10]),
                            'nov' => esMoneda2dec($totalE[11]),
                            'dic' => esMoneda2dec($totalE[12]),
                            'type' => 'p2'
                        ]);

                        array_push($arr, [
                            'cuenta' => '3605',
                            'subc' => '05',
                            'aux' => '00',
                            'aux1' => '00',
                            'descripcion' => 'UTILIDAD DEL EJERCICIO',
                            'ene' => esMoneda2dec($totalE[1]),
                            'feb' => esMoneda2dec($totalE[2]),
                            'mar' => esMoneda2dec($totalE[3]),
                            'abr' => esMoneda2dec($totalE[4]),
                            'may' => esMoneda2dec($totalE[5]),
                            'jun' => esMoneda2dec($totalE[6]),
                            'jul' => esMoneda2dec($totalE[7]),
                            'ago' => esMoneda2dec($totalE[8]),
                            'sep' => esMoneda2dec($totalE[9]),
                            'oct' => esMoneda2dec($totalE[10]),
                            'nov' => esMoneda2dec($totalE[11]),
                            'dic' => esMoneda2dec($totalE[12]),
                            'type' => 'h'
                        ]);
                    } else {

                        $arr2 = [];

                        for ($i = 1; $i <= 12; $i++) {

                            foreach ($movimientos as $mov) {

                                if (substr($mov->MovCuen, 0, -2) == substr($cuenta, 0, -2)) {

                                    if ($mov->TmoMes == $i) {
                                        if ($in) {
                                            $mov->MovValr = $mov->MovValr * (-1);
                                        }

                                        $total[$i] += $mov->MovValr;
                                    }
                                }
                            }

                            $total[$i] = $total[$i] + $total[$i - 1];
                        }

                        foreach ($movimientos as $mov) {

                            if ($mov->MovCuen == $cuenta && $mov->MovScue == $subCu && $mov->MovAuxi == $auxi && $mov->MovAuxl == $auxl) {
                                array_push($arr2, [
                                    'cuenta' => $cuenta,
                                    'subc' => $subCu,
                                    'aux' => $auxi,
                                    'aux1' => $auxl,
                                    'descripcion' => $cartilla->carnomb,
                                    'ene' => esMoneda2dec($total[1]),
                                    'feb' => esMoneda2dec($total[2]),
                                    'mar' => esMoneda2dec($total[3]),
                                    'abr' => esMoneda2dec($total[4]),
                                    'may' => esMoneda2dec($total[5]),
                                    'jun' => esMoneda2dec($total[6]),
                                    'jul' => esMoneda2dec($total[7]),
                                    'ago' => esMoneda2dec($total[8]),
                                    'sep' => esMoneda2dec($total[9]),
                                    'oct' => esMoneda2dec($total[10]),
                                    'nov' => esMoneda2dec($total[11]),
                                    'dic' => esMoneda2dec($total[12]),
                                    'type' => 'h'
                                ]);
                                break;
                            }
                        }


                        array_push($arr, [
                            'cuenta' => $cuenta,
                            'subc' => $subCu,
                            'aux' => $auxi,
                            'aux1' => $auxl,
                            'descripcion' => $cartilla->carnomb,
                            'ene' => esMoneda2dec($total[1]),
                            'feb' => esMoneda2dec($total[2]),
                            'mar' => esMoneda2dec($total[3]),
                            'abr' => esMoneda2dec($total[4]),
                            'may' => esMoneda2dec($total[5]),
                            'jun' => esMoneda2dec($total[6]),
                            'jul' => esMoneda2dec($total[7]),
                            'ago' => esMoneda2dec($total[8]),
                            'sep' => esMoneda2dec($total[9]),
                            'oct' => esMoneda2dec($total[10]),
                            'nov' => esMoneda2dec($total[11]),
                            'dic' => esMoneda2dec($total[12]),
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
                        $total = array_fill(0, 13, 0);

                        if ($cuenta1 != $cuenta) {
                            if (substr($cuenta1, 0, -2) == substr($cuenta, 0, -2) && $subCu1 == '00' && $auxi1 == '00' && $auxl1 == '00') {


                                if ($cuenta1 == '3610') {

                                    $totalE = array_fill(0, 13, 0);

                                    for ($i = 1; $i <= 12; $i++) {

                                        if ($tPatrimonio[$i] <= 0) {

                                            $totalE[$i] = $tPatrimonio[$i];
                                        } else {

                                            foreach ($movimientos as $mov) {

                                                if ($mov->MovCuen == $cuenta1) {

                                                    if ($mov->TmoMes <= $i) {

                                                        if ($in && $mov->MovValr < 0) {
                                                            $mov->MovValr = $mov->MovValr * (-1);
                                                        }

                                                        $totalE[$i] += $mov->MovValr;
                                                    }
                                                }
                                            }
                                        }
                                    }



                                    foreach ($movimientos as $mov) {

                                        if ($mov->MovCuen == $cuenta1 && $mov->MovScue == $subCu1 && $mov->MovAuxi == $auxi1 && $mov->MovAuxl == $auxl1) {
                                            array_push($arr2, [
                                                'cuenta' => $cuenta1,
                                                'subc' => $subCu1,
                                                'aux' => $auxi1,
                                                'aux1' => $auxl1,
                                                'descripcion' => $cartilla1->carnomb,
                                                'ene' => esMoneda2dec($totalE[1]),
                                                'feb' => esMoneda2dec($totalE[2]),
                                                'mar' => esMoneda2dec($totalE[3]),
                                                'abr' => esMoneda2dec($totalE[4]),
                                                'may' => esMoneda2dec($totalE[5]),
                                                'jun' => esMoneda2dec($totalE[6]),
                                                'jul' => esMoneda2dec($totalE[7]),
                                                'ago' => esMoneda2dec($totalE[8]),
                                                'sep' => esMoneda2dec($totalE[9]),
                                                'oct' => esMoneda2dec($totalE[10]),
                                                'nov' => esMoneda2dec($totalE[11]),
                                                'dic' => esMoneda2dec($totalE[12]),
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
                                        'ene' => esMoneda2dec($totalE[1]),
                                        'feb' => esMoneda2dec($totalE[2]),
                                        'mar' => esMoneda2dec($totalE[3]),
                                        'abr' => esMoneda2dec($totalE[4]),
                                        'may' => esMoneda2dec($totalE[5]),
                                        'jun' => esMoneda2dec($totalE[6]),
                                        'jul' => esMoneda2dec($totalE[7]),
                                        'ago' => esMoneda2dec($totalE[8]),
                                        'sep' => esMoneda2dec($totalE[9]),
                                        'oct' => esMoneda2dec($totalE[10]),
                                        'nov' => esMoneda2dec($totalE[11]),
                                        'dic' => esMoneda2dec($totalE[12]),
                                        'type' => 'p2'
                                    ]);



                                    if (count($arr2) > 0) {

                                        array_pop($arr);

                                        foreach ($arr2 as $ar) {
                                            array_push($arr, $ar);
                                        }
                                    }
                                }


                                $total = array_fill(0, 13, 0);

                                $arr2 = [];
                                $existeMov = false;

                                for ($i = 1; $i <= 12; $i++) {

                                    foreach ($movimientos as $mov) {

                                        if ($mov->MovCuen == $cuenta1) {

                                            $existeMov = true;

                                            if ($mov->TmoMes == $i) {
                                                if ($in) {
                                                    $mov->MovValr = $mov->MovValr * (-1);
                                                }

                                                $total[$i] += $mov->MovValr;
                                            }
                                        }
                                    }

                                    $total[$i] = $total[$i] + $total[$i - 1];
                                }

                                foreach ($movimientos as $mov) {

                                    if ($mov->MovCuen == $cuenta1 && $mov->MovScue == $subCu1 && $mov->MovAuxi == $auxi1 && $mov->MovAuxl == $auxl1) {
                                        array_push($arr2, [
                                            'cuenta' => $cuenta1,
                                            'subc' => $subCu1,
                                            'aux' => $auxi1,
                                            'aux1' => $auxl1,
                                            'descripcion' => $cartilla1->carnomb,
                                            'ene' => esMoneda2dec($total[1]),
                                            'feb' => esMoneda2dec($total[2]),
                                            'mar' => esMoneda2dec($total[3]),
                                            'abr' => esMoneda2dec($total[4]),
                                            'may' => esMoneda2dec($total[5]),
                                            'jun' => esMoneda2dec($total[6]),
                                            'jul' => esMoneda2dec($total[7]),
                                            'ago' => esMoneda2dec($total[8]),
                                            'sep' => esMoneda2dec($total[9]),
                                            'oct' => esMoneda2dec($total[10]),
                                            'nov' => esMoneda2dec($total[11]),
                                            'dic' => esMoneda2dec($total[12]),
                                            'type' => 'h'
                                        ]);
                                        break;
                                    }
                                }

                                if ($existeMov) {
                                    if ($cuenta1 != '3610') {

                                        array_push($arr, [
                                            'cuenta' => $cuenta1,
                                            'subc' => $subCu1,
                                            'aux' => $auxi1,
                                            'aux1' => $auxl1,
                                            'descripcion' => $cartilla1->carnomb,
                                            'ene' => esMoneda2dec($total[1]),
                                            'feb' => esMoneda2dec($total[2]),
                                            'mar' => esMoneda2dec($total[3]),
                                            'abr' => esMoneda2dec($total[4]),
                                            'may' => esMoneda2dec($total[5]),
                                            'jun' => esMoneda2dec($total[6]),
                                            'jul' => esMoneda2dec($total[7]),
                                            'ago' => esMoneda2dec($total[8]),
                                            'sep' => esMoneda2dec($total[9]),
                                            'oct' => esMoneda2dec($total[10]),
                                            'nov' => esMoneda2dec($total[11]),
                                            'dic' => esMoneda2dec($total[12]),
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
                                        $total = array_fill(0, 13, 0);
                                        $arr2 = [];


                                        if ($cuenta2 == $cuenta1  && $subCu2 !=  '00' && $auxi2 === '00' && $auxl2 === '00') {

                                            $existeMov = false;

                                            $total = array_fill(0, 13, 0);
                                            $arr2 = [];

                                            if ($cuenta2 == '3610' && $subCu2 == '05') {


                                                $totalE = array_fill(0, 13, 0);

                                                for ($i = 1; $i <= 12; $i++) {

                                                    if ($tPatrimonio[$i] <= 0) {

                                                        $totalE[$i] = $tPatrimonio[$i];
                                                    } else {

                                                        foreach ($movimientos as $mov) {

                                                            if ($mov->MovCuen == $cuenta2 && $mov->MovScue == $subCu2) {

                                                                if ($mov->TmoMes <= $i) {

                                                                    if ($in && $mov->MovValr < 0) {
                                                                        $mov->MovValr = $mov->MovValr * (-1);
                                                                    }

                                                                    $totalE[$i] += $mov->MovValr;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }



                                                foreach ($movimientos as $mov) {


                                                    if ($mov->MovCuen == $cuenta2 && $mov->MovScue == $subCu2 && $mov->MovAuxi == $auxi2 && $mov->MovAuxl == $auxl2) {
                                                        array_push($arr2, [
                                                            'cuenta' => $cuenta2,
                                                            'subc' => $subCu2,
                                                            'aux' => $auxi2,
                                                            'aux1' => $auxl2,
                                                            'descripcion' => $cartilla2->carnomb,
                                                            'ene' => esMoneda2dec($totalE[1]),
                                                            'feb' => esMoneda2dec($totalE[2]),
                                                            'mar' => esMoneda2dec($totalE[3]),
                                                            'abr' => esMoneda2dec($totalE[4]),
                                                            'may' => esMoneda2dec($totalE[5]),
                                                            'jun' => esMoneda2dec($totalE[6]),
                                                            'jul' => esMoneda2dec($totalE[7]),
                                                            'ago' => esMoneda2dec($totalE[8]),
                                                            'sep' => esMoneda2dec($totalE[9]),
                                                            'oct' => esMoneda2dec($totalE[10]),
                                                            'nov' => esMoneda2dec($totalE[11]),
                                                            'dic' => esMoneda2dec($totalE[12]),
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
                                                    'ene' => esMoneda2dec($totalE[1]),
                                                    'feb' => esMoneda2dec($totalE[2]),
                                                    'mar' => esMoneda2dec($totalE[3]),
                                                    'abr' => esMoneda2dec($totalE[4]),
                                                    'may' => esMoneda2dec($totalE[5]),
                                                    'jun' => esMoneda2dec($totalE[6]),
                                                    'jul' => esMoneda2dec($totalE[7]),
                                                    'ago' => esMoneda2dec($totalE[8]),
                                                    'sep' => esMoneda2dec($totalE[9]),
                                                    'oct' => esMoneda2dec($totalE[10]),
                                                    'nov' => esMoneda2dec($totalE[11]),
                                                    'dic' => esMoneda2dec($totalE[12]),
                                                    'type' => 'p3'
                                                ]);

                                                if (count($arr2) > 0) {

                                                    array_pop($arr);

                                                    foreach ($arr2 as $ar) {
                                                        array_push($arr, $ar);
                                                    }
                                                }
                                            }



                                            for ($i = 1; $i <= 12; $i++) {

                                                foreach ($movimientos as $mov) {

                                                    if ($mov->MovCuen == $cuenta2 && $mov->MovScue == $subCu2) {
                                                        $existeMov = true;

                                                        if ($mov->TmoMes == $i) {
                                                            if ($in) {
                                                                $mov->MovValr = $mov->MovValr * (-1);
                                                            }

                                                            $total[$i] += $mov->MovValr;
                                                        }
                                                    }
                                                }

                                                $total[$i] = $total[$i] + $total[$i - 1];
                                            }


                                            foreach ($movimientos as $mov) {

                                                if ($mov->MovCuen == $cuenta2 && $mov->MovScue == $subCu2 && $mov->MovAuxi == $auxi2 && $mov->MovAuxl == $auxl2) {
                                                    array_push($arr2, [
                                                        'cuenta' => $cuenta2,
                                                        'subc' => $subCu2,
                                                        'aux' => $auxi2,
                                                        'aux1' => $auxl2,
                                                        'descripcion' => $cartilla2->carnomb,
                                                        'ene' => esMoneda2dec($total[1]),
                                                        'feb' => esMoneda2dec($total[2]),
                                                        'mar' => esMoneda2dec($total[3]),
                                                        'abr' => esMoneda2dec($total[4]),
                                                        'may' => esMoneda2dec($total[5]),
                                                        'jun' => esMoneda2dec($total[6]),
                                                        'jul' => esMoneda2dec($total[7]),
                                                        'ago' => esMoneda2dec($total[8]),
                                                        'sep' => esMoneda2dec($total[9]),
                                                        'oct' => esMoneda2dec($total[10]),
                                                        'nov' => esMoneda2dec($total[11]),
                                                        'dic' => esMoneda2dec($total[12]),
                                                        'type' => 'h'
                                                    ]);
                                                    break;
                                                }
                                            }
                                            if ($existeMov) {

                                                if ($cuenta2 != '3610') {

                                                    array_push($arr, [
                                                        'cuenta' => $cuenta2,
                                                        'subc' => $subCu2,
                                                        'aux' => $auxi2,
                                                        'aux1' => $auxl2,
                                                        'descripcion' => $cartilla2->carnomb,
                                                        'ene' => esMoneda2dec($total[1]),
                                                        'feb' => esMoneda2dec($total[2]),
                                                        'mar' => esMoneda2dec($total[3]),
                                                        'abr' => esMoneda2dec($total[4]),
                                                        'may' => esMoneda2dec($total[5]),
                                                        'jun' => esMoneda2dec($total[6]),
                                                        'jul' => esMoneda2dec($total[7]),
                                                        'ago' => esMoneda2dec($total[8]),
                                                        'sep' => esMoneda2dec($total[9]),
                                                        'oct' => esMoneda2dec($total[10]),
                                                        'nov' => esMoneda2dec($total[11]),
                                                        'dic' => esMoneda2dec($total[12]),
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
                                                    $total = array_fill(0, 13, 0);
                                                    $arr2 = [];
                                                    $existeMov = false;

                                                    if ($cuenta3 == $cuenta2  && $subCu3 == $subCu2 && $auxi3 != '00' && $auxl3 == '00') {

                                                        $total = array_fill(0, 13, 0);
                                                        $arr2 = [];


                                                        for ($i = 1; $i <= 12; $i++) {

                                                            foreach ($movimientos as $mov) {

                                                                if ($mov->MovCuen == $cuenta3 && $mov->MovScue == $subCu3 && $mov->MovAuxi == $auxi3) {
                                                                    $existeMov = true;

                                                                    if ($mov->TmoMes == $i) {

                                                                        if ($in) {
                                                                            $mov->MovValr = $mov->MovValr * (-1);
                                                                        }

                                                                        $total[$i] += $mov->MovValr;
                                                                    }
                                                                }
                                                            }

                                                            $total[$i] = $total[$i] + $total[$i - 1];
                                                        }


                                                        foreach ($movimientos as $mov) {

                                                            if ($mov->MovCuen == $cuenta3 && $mov->MovScue == $subCu3 && $mov->MovAuxi == $auxi3 && $mov->MovAuxl == $auxl3) {
                                                                array_push($arr2, [
                                                                    'cuenta' => $cuenta3,
                                                                    'subc' => $subCu3,
                                                                    'aux' => $auxi3,
                                                                    'aux1' => $auxl3,
                                                                    'descripcion' => $cartilla3->carnomb,
                                                                    'ene' => esMoneda2dec($total[1]),
                                                                    'feb' => esMoneda2dec($total[2]),
                                                                    'mar' => esMoneda2dec($total[3]),
                                                                    'abr' => esMoneda2dec($total[4]),
                                                                    'may' => esMoneda2dec($total[5]),
                                                                    'jun' => esMoneda2dec($total[6]),
                                                                    'jul' => esMoneda2dec($total[7]),
                                                                    'ago' => esMoneda2dec($total[8]),
                                                                    'sep' => esMoneda2dec($total[9]),
                                                                    'oct' => esMoneda2dec($total[10]),
                                                                    'nov' => esMoneda2dec($total[11]),
                                                                    'dic' => esMoneda2dec($total[12]),
                                                                    'type' => 'h'
                                                                ]);
                                                                break;
                                                            }
                                                        }

                                                        if ($existeMov) {

                                                            array_push($arr, [
                                                                'cuenta' => $cuenta3,
                                                                'subc' => $subCu3,
                                                                'aux' => $auxi3,
                                                                'aux1' => $auxl3,
                                                                'descripcion' => $cartilla3->carnomb,
                                                                'ene' => esMoneda2dec($total[1]),
                                                                'feb' => esMoneda2dec($total[2]),
                                                                'mar' => esMoneda2dec($total[3]),
                                                                'abr' => esMoneda2dec($total[4]),
                                                                'may' => esMoneda2dec($total[5]),
                                                                'jun' => esMoneda2dec($total[6]),
                                                                'jul' => esMoneda2dec($total[7]),
                                                                'ago' => esMoneda2dec($total[8]),
                                                                'sep' => esMoneda2dec($total[9]),
                                                                'oct' => esMoneda2dec($total[10]),
                                                                'nov' => esMoneda2dec($total[11]),
                                                                'dic' => esMoneda2dec($total[12]),
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
                                                                $total = array_fill(0, 13, 0);
                                                                $arr2 = [];
                                                                $existeMov = false;

                                                                if ($cuenta4 == $cuenta3  && $subCu4 == $subCu3 && $auxi4 == $auxi3 && $auxl4 != '00') {
                                                                    $total = array_fill(0, 13, 0);
                                                                    $arr2 = [];

                                                                    for ($i = 1; $i <= 12; $i++) {

                                                                        foreach ($movimientos as $mov) {

                                                                            if ($mov->MovCuen == $cuenta4 && $mov->MovScue == $subCu4 && $mov->MovAuxi == $auxi4 && $mov->MovAuxl === $auxl4) {

                                                                                $existeMov = true;
                                                                                if ($mov->TmoMes == $i) {
                                                                                    if ($in) {
                                                                                        $mov->MovValr = $mov->MovValr * (-1);
                                                                                    }

                                                                                    $total[$i] += $mov->MovValr;
                                                                                }
                                                                            }
                                                                        }

                                                                        $total[$i] = $total[$i] + $total[$i - 1];
                                                                    }


                                                                    foreach ($movimientos as $mov) {

                                                                        if ($mov->MovCuen == $cuenta4 && $mov->MovScue == $subCu4 && $mov->MovAuxi == $auxi4 && $mov->MovAuxl == $auxl4) {
                                                                            array_push($arr2, [
                                                                                'cuenta' => $cuenta4,
                                                                                'subc' => $subCu4,
                                                                                'aux' => $auxi4,
                                                                                'aux1' => $auxl4,
                                                                                'descripcion' => $cartilla4->carnomb,
                                                                                'ene' => esMoneda2dec($total[1]),
                                                                                'feb' => esMoneda2dec($total[2]),
                                                                                'mar' => esMoneda2dec($total[3]),
                                                                                'abr' => esMoneda2dec($total[4]),
                                                                                'may' => esMoneda2dec($total[5]),
                                                                                'jun' => esMoneda2dec($total[6]),
                                                                                'jul' => esMoneda2dec($total[7]),
                                                                                'ago' => esMoneda2dec($total[8]),
                                                                                'sep' => esMoneda2dec($total[9]),
                                                                                'oct' => esMoneda2dec($total[10]),
                                                                                'nov' => esMoneda2dec($total[11]),
                                                                                'dic' => esMoneda2dec($total[12]),
                                                                                'type' => 'h'
                                                                            ]);
                                                                            break;
                                                                        }
                                                                    }
                                                                    if ($existeMov) {
                                                                        array_push($arr, [
                                                                            'cuenta' => $cuenta4,
                                                                            'subc' => $subCu4,
                                                                            'aux' => $auxi4,
                                                                            'aux1' => $auxl4,
                                                                            'descripcion' => $cartilla4->carnomb,
                                                                            'ene' => esMoneda2dec($total[1]),
                                                                            'feb' => esMoneda2dec($total[2]),
                                                                            'mar' => esMoneda2dec($total[3]),
                                                                            'abr' => esMoneda2dec($total[4]),
                                                                            'may' => esMoneda2dec($total[5]),
                                                                            'jun' => esMoneda2dec($total[6]),
                                                                            'jul' => esMoneda2dec($total[7]),
                                                                            'ago' => esMoneda2dec($total[8]),
                                                                            'sep' => esMoneda2dec($total[9]),
                                                                            'oct' => esMoneda2dec($total[10]),
                                                                            'nov' => esMoneda2dec($total[11]),
                                                                            'dic' => esMoneda2dec($total[12]),
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
}
