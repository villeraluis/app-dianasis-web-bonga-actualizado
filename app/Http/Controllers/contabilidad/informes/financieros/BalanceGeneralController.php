<?php

namespace App\Http\Controllers\contabilidad\informes\financieros;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BalanceGeneralController extends Controller
{

    public function viewBalanceGeneral()
    {
        cambioBaseDatos();
        $empresa = session('Empresa');
        $sql1 = "SELECT PerAno FROM PERIODOS WHERE PerEmpr ='$empresa'  Group by PerAno";
        $periodos = DB::select($sql1);
        return view('contabilidad.informes.financieros.balanceGeneral.indexBalanceGeneral', compact('periodos'));
    }



    public function infBalanceGeneral(Request $request)
    {

        $datos = $this->consultaBalanceGeneral($request);
        if ($datos == null ) {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
             No hay datos para Mostrar. 
          </div>";
        }


        return view('contabilidad.informes.financieros.balanceGeneral.tablaBalanceGeneral', compact('datos'));
    }


    public function consultaBalanceGeneral($request)
    {

        cambioBaseDatos();
        $empresa = session('Empresa');
        $year = $request->selectYear;
        $mes = $request->selectMes;
        $checkSaldo = $request->checkSaldo;
        $sql = '';
        $saldo = 0;
        $datos = collect();

        if (isset($checkSaldo)) {
            $sql = "SELECT MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr 
            FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons 
            WHERE (TmoEmpr ='$empresa' And TmoAno = '$year' And TmoMes = '$mes' And TmoApl = '0' 
            AND (MovCuen Like '1%' OR MovCuen Like '2%' OR MovCuen Like '3%')) GROUP BY MovCuen, MovScue,MovAuxi,MovAuxl";

            $sqlMovE = "SELECT MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr 
                FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons 
                WHERE (TmoEmpr ='$empresa' And TmoAno = '$year' And TmoMes = '$mes' And TmoApl = '0' 
                AND (MovCuen Like '4%' OR MovCuen Like '5%' OR MovCuen Like '6%' OR MovCuen Like '7%')) GROUP BY MovCuen, MovScue,MovAuxi,MovAuxl";
        } else {
            $sql = "SELECT MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr 
                    FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons 
                    WHERE (TmoEmpr ='$empresa' And TmoAno = '$year' And TmoMes <= '$mes' And TmoApl = '0' 
                    AND (MovCuen Like '1%' OR MovCuen Like '2%' OR MovCuen Like '3%')) 
                    GROUP BY MovCuen, MovScue,MovAuxi,MovAuxl";

            $sqlMovE = "SELECT MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr 
            FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons 
            WHERE (TmoEmpr ='$empresa' And TmoAno = '$year' And TmoMes <= '$mes' And TmoApl = '0' 
            AND (MovCuen Like '4%' OR MovCuen Like '5%' OR MovCuen Like '6%' OR MovCuen Like '7%')) GROUP BY MovCuen, MovScue,MovAuxi,MovAuxl";
        }



        $movimientos = DB::select($sql);

        $movimientosEx = DB::select($sqlMovE);

        $sqlActivos = "SELECT * FROM CARTILLA WHERE CarEmpr = '$empresa' And CarCuen Like '1%' And Carcuen <> '1000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $sqlPasivos = "SELECT * FROM CARTILLA WHERE CarEmpr = '$empresa' And CarCuen Like '2%' And Carcuen <> '2000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $sqlPatrimonio = "SELECT * FROM CARTILLA WHERE CarEmpr = '$empresa' And CarCuen Like '3%' And Carcuen <> '3000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $cartActivos = DB::select($sqlActivos);

        $cartPasivos = DB::select($sqlPasivos);

        $cartPatrimonio = DB::select($sqlPatrimonio);


        $tActivos = 0;
        $tPasivos = 0;
        $saldo = 0;

        foreach ($movimientosEx as $dato) {

            $saldo += $dato->MovValr;
        }
        $tPatrimonio = $saldo;





        foreach ($movimientos as $dato) {

            $cu = $dato->MovCuen;

            if ($cu >= 1000 && $cu < 2000) {
                $tActivos += $dato->MovValr;
            }
            if ($cu >= 2000 && $cu < 3000) {
                $tPasivos += $dato->MovValr;
            }
        }





        $rowTablaVacio = [
            'cuenta' => '',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => '',
            'valor' => '.00',
            'type' => 'vacio'
        ];

        $Rowtabla = [
            'cuenta' => '1000',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'ACTIVOS',
            'valor' => esMoneda2dec($tActivos),
            'type' => 'n1'
        ];

        $datos->push($Rowtabla);

        $datosOrds = $this->ordenardatosBalance($cartActivos, $movimientos, $in = false);
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
            'valor' => esMoneda2dec($tPasivos),
            'type' => 'n1'
        ];
        $datos->push($Rowtabla);

        $datosOrds = $this->ordenardatosBalance($cartPasivos, $movimientos, $in = false);
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
            'valor' => esMoneda2dec($tPatrimonio),
            'type' => 'n1'
        ];
        $datos->push($Rowtabla);
        $datosOrds = $this->ordenardatosBalance($cartPatrimonio, $movimientos, $in = false, $tPatrimonio);
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
            'valor' => esMoneda2dec($tPasivos + $tPatrimonio),
            'type' => 'n1'
        ];
        $datos->push($Rowtabla);

        return $datos;
    }


    public function ordenardatosBalance($cartillas, $movimientos, $in = false, $saldo = 0)
    {

        $arr = [];
        foreach ($cartillas as $cartilla) {

            $cuenta = $cartilla->carcuen;
            $subCu = $cartilla->carscue;
            $auxi = $cartilla->carauxi;
            $auxl = $cartilla->carauxl;
            $total = 0;
            if ($subCu == '00') {

                if ($cuenta % 100 == 0) {

                    if ($cuenta == '3600' && $saldo <= 0) {

                        $total = 0;
                        $arr2 = [];

                        foreach ($movimientos as $mov) {
                            if (substr($mov->MovCuen, 0, -2) == substr($cuenta, 0, -2)) {
                                if ($mov->MovValr  < 0 && $in) {
                                    $mov->MovValr = $mov->MovValr * (-1);
                                }
                                $total += $mov->MovValr;
                                
                            }

                            if ($mov->MovCuen == $cuenta && $mov->MovScue == $subCu && $mov->MovAuxi == $auxi && $mov->MovAuxl == $auxl) {
                                array_push($arr2, [
                                    'cuenta' => $cuenta,
                                    'subc' => $subCu,
                                    'aux' => $auxi,
                                    'aux1' => $auxl,
                                    'descripcion' => $cartilla->carnomb,
                                    'valor' => esMoneda2dec($saldo),
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
                            'valor' => esMoneda2dec($saldo),
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
                            'valor' => esMoneda2dec($saldo),
                            'type' => 'p2'
                        ]);

                        array_push($arr, [
                            'cuenta' => '3605',
                            'subc' => '05',
                            'aux' => '00',
                            'aux1' => '00',
                            'descripcion' => 'UTILIDAD DEL EJERCICIO',
                            'valor' => esMoneda2dec($saldo),
                            'type' => 'h'
                        ]);
                    } else if ($cuenta == '3600' && $saldo > 0) {

                        $total = 0;
                        $arr2 = [];

                        foreach ($movimientos as $mov) {

                            if (substr($mov->MovCuen, 0, -2) == substr($cuenta, 0, -2)) {
                                if ($mov->MovValr  < 0 && $in) {
                                    $mov->MovValr = $mov->MovValr * (-1);
                                }
                                $total += $mov->MovValr;  
                            }


                            if ($mov->MovCuen == $cuenta && $mov->MovScue == $subCu && $mov->MovAuxi == $auxi && $mov->MovAuxl == $auxl) {
                                array_push($arr2, [
                                    'cuenta' => $cuenta,
                                    'subc' => $subCu,
                                    'aux' => $auxi,
                                    'aux1' => $auxl,
                                    'descripcion' => $cartilla->carnomb,
                                    'valor' => esMoneda2dec($saldo),
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
                            'valor' => esMoneda2dec($saldo),
                            'type' => 'p1'
                        ]);


                        if (count($arr2) > 0) {

                            array_pop($arr);

                            foreach ($arr2 as $ar) {
                                array_push($arr, $ar);
                            }
                        }

                        
                    } else {

                        $total = 0;
                        $arr2 = [];
                        foreach ($movimientos as $mov) {
                            if (substr($mov->MovCuen, 0, -2) == substr($cuenta, 0, -2)) {
                                if ($mov->MovValr  < 0 && $in) {
                                    $mov->MovValr = $mov->MovValr * (-1);
                                }
                               
                                $total += $mov->MovValr;
                               
                            }
                            if ($mov->MovCuen == $cuenta && $mov->MovScue == $subCu && $mov->MovAuxi == $auxi && $mov->MovAuxl == $auxl) {
                                array_push($arr2, [
                                    'cuenta' => $cuenta,
                                    'subc' => $subCu,
                                    'aux' => $auxi,
                                    'aux1' => $auxl,
                                    'descripcion' => $cartilla->carnomb,
                                    'valor' => esMoneda2dec($total),
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
                            'valor' => esMoneda2dec($total),
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

                                if ($cuenta1 == '3610' && $saldo > 0) {

                                    $total = 0;
                                    $arr2 = [];

                                    foreach ($movimientos as $mov) {
                                        if ($mov->MovCuen == $cuenta1) {
                                            if ($mov->MovValr  < 0 && $in) {
                                                $mov->MovValr = $mov->MovValr * (-1);
                                            }
                                            $total += $mov->MovValr;
                                            
                                        }
                                        if ($mov->MovCuen == $cuenta1 && $mov->MovScue == $subCu1 && $mov->MovAuxi == $auxi1 && $mov->MovAuxl == $auxl1) {
                                            array_push($arr2, [
                                                'cuenta' => $cuenta1,
                                                'subc' => $subCu1,
                                                'aux' => $auxi1,
                                                'aux1' => $auxl1,
                                                'descripcion' => $cartilla1->carnomb,
                                                'valor' => esMoneda2dec($saldo),
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
                                        'valor' => esMoneda2dec($saldo),
                                        'type' => 'p2'
                                    ]);


                                    if (count($arr2) > 0) {

                                        array_pop($arr);

                                        foreach ($arr2 as $ar) {
                                            array_push($arr, $ar);
                                        }
                                    }
                                }
                                if ($cuenta1 == '3610' && $saldo <= 0) {

                                    $total = 0;
                                    $arr2 = [];

                                    foreach ($movimientos as $mov) {
                                        if ($mov->MovCuen == $cuenta1) {
                                            if ($mov->MovValr  < 0 && $in) {
                                                $mov->MovValr = $mov->MovValr * (-1);
                                            }
                                            $total += $mov->MovValr;
                                            
                                        }
                                        if ($mov->MovCuen == $cuenta1 && $mov->MovScue == $subCu1 && $mov->MovAuxi == $auxi1 && $mov->MovAuxl == $auxl1) {
                                            array_push($arr2, [
                                                'cuenta' => $cuenta1,
                                                'subc' => $subCu1,
                                                'aux' => $auxi1,
                                                'aux1' => $auxl1,
                                                'descripcion' => $cartilla1->carnomb,
                                                'valor' => esMoneda2dec($total),
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
                                        'valor' => esMoneda2dec($total),
                                        'type' => 'p2'
                                    ]);


                                    if (count($arr2) > 0) {

                                        array_pop($arr);

                                        foreach ($arr2 as $ar) {
                                            array_push($arr, $ar);
                                        }
                                    }
                                }

                                $total = 0;
                                $arr2 = [];
                                foreach ($movimientos as $mov) {
                                    if ($mov->MovCuen == $cuenta1) {
                                        if ($mov->MovValr  < 0 && $in) {
                                            $mov->MovValr = $mov->MovValr * (-1);
                                        }
                                        $total += $mov->MovValr;
                                       
                                    }
                                    if ($mov->MovCuen == $cuenta1 && $mov->MovScue == $subCu1 && $mov->MovAuxi == $auxi1 && $mov->MovAuxl == $auxl1) {
                                        array_push($arr2, [
                                            'cuenta' => $cuenta1,
                                            'subc' => $subCu1,
                                            'aux' => $auxi1,
                                            'aux1' => $auxl1,
                                            'descripcion' => $cartilla1->carnomb,
                                            'valor' => esMoneda2dec($total),
                                            'type' => 'h'
                                        ]);
                                    }
                                }


                                if ($total != 0) {

                                    if ($cuenta1 != '3610') {

                                        array_push($arr, [
                                            'cuenta' => $cuenta1,
                                            'subc' => $subCu1,
                                            'aux' => $auxi1,
                                            'aux1' => $auxl1,
                                            'descripcion' => $cartilla1->carnomb,
                                            'valor' => esMoneda2dec($total),
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

                                        if ($cuenta2 == $cuenta1  && $subCu2 !=  '00' && $auxi2 === '00' && $auxl2 === '00') {

                                            if ($cuenta2 == '3610' && $subCu2 == '05' && $saldo > 0) {

                                                $total = 0;
                                                $arr2 = [];

                                                foreach ($movimientos as $mov) {
                                                    if ($mov->MovCuen == $cuenta2 && $mov->MovScue == $subCu2) {
                                                        if ($mov->MovValr  < 0 && $in) {
                                                            $mov->MovValr = $mov->MovValr * (-1);
                                                        }
                                                        $total += $mov->MovValr;
                                                       
                                                    }

                                                    if ($mov->MovCuen == $cuenta2 && $mov->MovScue == $subCu2 && $mov->MovAuxi == $auxi2 && $mov->MovAuxl == $auxl2) {
                                                        array_push($arr2, [
                                                            'cuenta' => $cuenta2,
                                                            'subc' => $subCu2,
                                                            'aux' => $auxi2,
                                                            'aux1' => $auxl2,
                                                            'descripcion' => $cartilla2->carnomb,
                                                            'valor' => esMoneda2dec($saldo),
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
                                                    'valor' => esMoneda2dec($saldo),
                                                    'type' => 'p3'
                                                ]);

                                                if (count($arr2) > 0) {

                                                    array_pop($arr);

                                                    foreach ($arr2 as $ar) {
                                                        array_push($arr, $ar);
                                                    }
                                                }
                                            }

                                            if ($cuenta2 == '3610' && $subCu2 == '05' && $saldo <= 0) {

                                                $total = 0;
                                                $arr2 = [];
                                                foreach ($movimientos as $mov) {
                                                    if ($mov->MovCuen == $cuenta2 && $mov->MovScue == $subCu2) {
                                                        if ($mov->MovValr  < 0 && $in) {
                                                            $mov->MovValr = $mov->MovValr * (-1);
                                                        }
                                                        $total += $mov->MovValr;
                                                        
                                                    }

                                                    if ($mov->MovCuen == $cuenta2 && $mov->MovScue == $subCu2 && $mov->MovAuxi == $auxi2 && $mov->MovAuxl == $auxl2) {
                                                        array_push($arr2, [
                                                            'cuenta' => $cuenta2,
                                                            'subc' => $subCu2,
                                                            'aux' => $auxi2,
                                                            'aux1' => $auxl2,
                                                            'descripcion' => $cartilla2->carnomb,
                                                            'valor' => esMoneda2dec($total),
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
                                                    'valor' => esMoneda2dec($total),
                                                    'type' => 'p3'
                                                ]);

                                                if (count($arr2) > 0) {

                                                    array_pop($arr);

                                                    foreach ($arr2 as $ar) {
                                                        array_push($arr, $ar);
                                                    }
                                                }
                                            }


                                            $total = 0;
                                            $arr2 = [];
                                            foreach ($movimientos as $mov) {
                                                if ($mov->MovCuen == $cuenta2 && $mov->MovScue == $subCu2) {
                                                    if ($mov->MovValr  < 0 && $in) {
                                                        $mov->MovValr = $mov->MovValr * (-1);
                                                    }
                                                    $total += $mov->MovValr;
                                                    
                                                }

                                                if ($mov->MovCuen == $cuenta2 && $mov->MovScue == $subCu2 && $mov->MovAuxi == $auxi2 && $mov->MovAuxl == $auxl2) {
                                                    array_push($arr2, [
                                                        'cuenta' => $cuenta2,
                                                        'subc' => $subCu2,
                                                        'aux' => $auxi2,
                                                        'aux1' => $auxl2,
                                                        'descripcion' => $cartilla2->carnomb,
                                                        'valor' => esMoneda2dec($total),
                                                        'type' => 'h'
                                                    ]);
                                                }
                                            }


                                            if ($total != 0) {

                                                if ($cuenta2 != '3610') {

                                                    array_push($arr, [
                                                        'cuenta' => $cuenta2,
                                                        'subc' => $subCu2,
                                                        'aux' => $auxi2,
                                                        'aux1' => $auxl2,
                                                        'descripcion' => $cartilla2->carnomb,
                                                        'valor' => esMoneda2dec($total),
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
                                                    if ($cuenta3 == $cuenta2  && $subCu3 == $subCu2 && $auxi3 != '00' && $auxl3 == '00') {

                                                        $total = 0;
                                                        $arr2 = [];
                                                        foreach ($movimientos as $mov) {
                                                            if ($mov->MovCuen == $cuenta3 && $mov->MovScue == $subCu3 && $mov->MovAuxi == $auxi3) {
                                                                if ($mov->MovValr  < 0 && $in) {
                                                                    $mov->MovValr = $mov->MovValr * (-1);
                                                                }
                                                                $total += $mov->MovValr;
                                                                
                                                            }

                                                            if ($mov->MovCuen === $cuenta3 && $mov->MovScue === $subCu3 && $mov->MovAuxi === $auxi3 && $mov->MovAuxl === $auxl3) {
                                                                array_push($arr2, [
                                                                    'cuenta' => $cuenta3,
                                                                    'subc' => $subCu3,
                                                                    'aux' => $auxi3,
                                                                    'aux1' => $auxl3,
                                                                    'descripcion' => $cartilla3->carnomb,
                                                                    'valor' => esMoneda2dec($total),
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
                                                                'valor' => esMoneda2dec($total),
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

                                                                if ($cuenta4 == $cuenta3  && $subCu4 == $subCu3 && $auxi4 == $auxi3 && $auxl4 != '00') {
                                                                    $total = 0;
                                                                    $arr2 = [];
                                                                    foreach ($movimientos as $mov) {
                                                                        if ($mov->MovCuen == $cuenta4 && $mov->MovScue == $subCu4 && $mov->MovAuxi == $auxi4 && $mov->MovAuxl === $auxl4) {
                                                                            if ($mov->MovValr  < 0 && $in) {
                                                                                $mov->MovValr = $mov->MovValr * (-1);
                                                                            }
                                                                            $total += $mov->MovValr;
                                                                            

                                                                            if ($total != 0) {
                                                                                array_push($arr2, [
                                                                                    'cuenta' => $cuenta4,
                                                                                    'subc' => $subCu4,
                                                                                    'aux' => $auxi4,
                                                                                    'aux1' => $auxl4,
                                                                                    'descripcion' => $cartilla4->carnomb,
                                                                                    'valor' => esMoneda2dec($total),
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
                                                                            'valor' => esMoneda2dec($total),
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
