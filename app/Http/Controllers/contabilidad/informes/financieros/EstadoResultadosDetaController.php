<?php

namespace App\Http\Controllers\contabilidad\informes\financieros;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EstadoResultadosDetaController extends Controller
{


    public function viewEstadoResultadosDet()
    {
        cambioBaseDatos();
        $empresa = session('Empresa');
        $sql1 = "SELECT PerAno FROM PERIODOS WHERE PerEmpr ='$empresa'  Group by PerAno";
        $periodos = DB::select($sql1);

        return view('contabilidad.informes.financieros.estadoResultados.indexEstadoResultados', compact('periodos'));
        //return view('index',compact('contenido'));


    }

    public function infEstadoResultadosDet(Request $request)
    {

        $datos = $this->consultaEstadoResultados($request);
        if ($datos == null ) {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
             No hay datos para Mostrar. 
          </div>";
        }

        /*  return $datos;
 */
        return view('contabilidad.informes.financieros.estadoResultados.tablaEstadoResultados', compact('datos'));
    }

    public function consultaEstadoResultados($request)
    {
        cambioBaseDatos();
        $empresa = session('Empresa');
        $year = $request->selectYear;
        $mes = $request->selectMes;
        $radioBtn = $request->rdDcumulado;
        $sql = '';
        $saldo = 0;
        $datos = collect();

        if ($radioBtn == 0) {

            $sql = "SELECT MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr 
                    FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons 
                    WHERE (TmoEmpr ='$empresa' And TmoAno = '$year' And TmoMes <= '$mes' And TmoApl = '0' 
                    AND (MovCuen Like '4%' OR MovCuen Like '5%' OR MovCuen Like '6%' OR MovCuen Like '7%' )) GROUP BY MovCuen, MovScue,MovAuxi,MovAuxl";
        } else {

            $sql = "SELECT MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr 
                    FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons 
                    WHERE (TmoEmpr ='$empresa' And TmoAno = '$year' And TmoMes = '$mes' And TmoApl = '0' 
                    AND (MovCuen Like '4%' OR MovCuen Like '5%' OR MovCuen Like '6%' OR MovCuen Like '7%' )) GROUP BY MovCuen, MovScue,MovAuxi,MovAuxl";
        }

        $datosConsulta = DB::select($sql);

        $tIgresos = 0;
        $tGastos = 0;
        $tCostoV = 0;
        $tCostoC = 0;

        foreach ($datosConsulta as $dato) {
            $saldo += ($dato->MovValr);
            $cu = $dato->MovCuen;
            switch ($cu) {
                case ($cu < 5000):
                    $tIgresos += $dato->MovValr;
                    break;
                case ($cu >= 5000 && $cu < 6000):
                    $tGastos += $dato->MovValr;
                    break;
                case ($cu >= 6000 && $cu < 7000):
                    $tCostoV += $dato->MovValr;
                    break;
                case ($cu >= 7000):
                    $tCostoC += $dato->MovValr;
                    break;
            }
        }

        $saldo = esMoneda2dec($saldo * -1);




        $conIngresos = "SELECT * FROM CARTILLA 
                        WHERE CarEmpr = '$empresa' And CarCuen Like '4%' 
                        And Carcuen <> '4000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $conGastos = "SELECT * FROM CARTILLA 
                      WHERE CarEmpr = '$empresa' And CarCuen Like '5%' 
                      And Carcuen <> '5000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $conCostoVentas = "SELECT * FROM CARTILLA 
                           WHERE CarEmpr = '$empresa' And CarCuen Like '6%' 
                           And Carcuen <> '6000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $conCostoProduccion = "SELECT * FROM CARTILLA 
                               WHERE CarEmpr = '$empresa' And CarCuen Like '7%' 
                               And Carcuen <> '7000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $ingresos = DB::select($conIngresos);
        $gastos = DB::select($conGastos);
        $costoVentas = DB::select($conCostoVentas);
        $costoProduccion = DB::select($conCostoProduccion);






        if ($saldo < 0) {
            $texI = 'PERDIDA DEL EJERCICIO';
        } else {
            $texI = 'UTILIDAD DEL EJERCICIO';
        }

        $rowTablaVacio = ['cuenta' => '', 'subc' => '', 'aux' => '', 'aux1' => '', 'descripcion' => '', 'valor' => '.00', 'type' => 'vacio'];
        $Rowtabla = [
            'cuenta' => '',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => $texI,
            'valor' => $saldo,
            'type' => 'vacio'
        ];
        $datos->push($Rowtabla, $rowTablaVacio);

        $Rowtabla = [
            'cuenta' => '4000',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'INGRESOS',
            'valor' => esMoneda2dec($tIgresos * -1),
            'type' => 'n1'
        ];

        $datos->push($Rowtabla);

        $datosOrds = $this->ordenarDatos($ingresos, $datosConsulta, true);
        foreach ($datosOrds as $dat) {
            $datos->push($dat);
        }

        $datos->push($rowTablaVacio);

        $Rowtabla = [
            'cuenta' => '5000',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'GASTOS',
            'valor' => esMoneda2dec($tGastos),
            'type' => 'n1'
        ];
        $datos->push($Rowtabla);

        $datosOrds = $this->ordenarDatos($gastos, $datosConsulta);
        foreach ($datosOrds as $dat) {
            $datos->push($dat);
        }
        $datos->push($rowTablaVacio);


        $Rowtabla = [
            'cuenta' => '6000',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'COSTO DE VENTA',
            'valor' => esMoneda2dec($tCostoV),
            'type' => 'n1'
        ];
        $datos->push($Rowtabla);
        $datosOrds = $this->ordenarDatos($costoVentas, $datosConsulta);
        foreach ($datosOrds as $dat) {
            $datos->push($dat);
        }
        $datos->push($rowTablaVacio);

        $Rowtabla = [
            'cuenta' => '6000',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'COSTOS DE PRODUCCIÓN',
            'valor' => esMoneda2dec($tCostoC),
            'type' => 'n1'
        ];
        $datos->push($Rowtabla);
        $datosOrds = $this->ordenarDatos($costoProduccion, $datosConsulta);
        foreach ($datosOrds as $dat) {
            $datos->push($dat);
        }

        return $datos;
    }



    public function ordenarDatos($cartillas, $movimientos, $in = false)
    {
        $arr = [];
        foreach ($cartillas as $cartilla) {

            $cuenta = $cartilla->carcuen;
            $subCu = $cartilla->carscue;
            $auxi = $cartilla->carauxi;
            $auxl = $cartilla->carauxl;

            if ($cuenta % 100 == 0) {

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

                if ($total != 0) {

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
                        array_push($arr, $arr2);
                    }
                }

                foreach ($cartillas as $cartilla1) {

                    $cuenta1 = $cartilla1->carcuen;
                    $subCu1 = $cartilla1->carscue;
                    $auxi1 = $cartilla1->carauxi;
                    $auxl1 = $cartilla1->carauxl;

                    if (substr($cuenta1, 0, -2) == substr($cuenta, 0, -2) &&  $cuenta1 != $cuenta && $subCu1 === '00' && $auxi1 === '00' && $auxl1 === '00') {

                        $total = 0;
                        $arr2 = [];

                        foreach ($movimientos as $mov) {
                            if ($mov->MovCuen == $cuenta1) {
                                if ($mov->MovValr  < 0 && $in) {
                                    $mov->MovValr = $mov->MovValr * (-1);
                                }
                                $total += $mov->MovValr;
                               
                            }

                            if ($mov->MovCuen === $cuenta1 && $mov->MovScue === $subCu1 && $mov->MovAuxi === $auxi1 && $mov->MovAuxl === $auxl1) {

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

                                foreach ($arr2 as $ar) {
                                    array_push($arr, $ar);
                                }
                            }

                            foreach ($cartillas as $cartilla2) {

                                $cuenta2 = $cartilla2->carcuen;
                                $subCu2 = $cartilla2->carscue;
                                $auxi2 = $cartilla2->carauxi;
                                $auxl2 = $cartilla2->carauxl;

                                if ($cuenta2 == $cuenta1  && $subCu2 !=  '00' && $auxi2 === '00' && $auxl2 === '00') {


                                    $total = 0;
                                    $arr2 = [];
                                    foreach ($movimientos as $mov) {
                                        if ($mov->MovCuen == $cuenta2 && $mov->MovScue == $subCu2) {
                                            if ($mov->MovValr  < 0 && $in) {
                                                $mov->MovValr = $mov->MovValr * (-1);
                                            }
                                            $total += $mov->MovValr;
                                           
                                        }

                                        if ($mov->MovCuen === $cuenta2 && $mov->MovScue === $subCu2 && $mov->MovAuxi === $auxi2 && $mov->MovAuxl === $auxl2) {

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

                                        foreach ($cartillas as $cartilla3) {

                                            $cuenta3 = $cartilla3->carcuen;
                                            $subCu3 = $cartilla3->carscue;
                                            $auxi3 = $cartilla3->carauxi;
                                            $auxl3 = $cartilla3->carauxl;

                                            if ($cuenta3 == $cuenta2  && $subCu3 == $subCu2 && $auxi3 != '00' && $auxl3 === '00') {

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

                                                        if ($total != 0) {
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
                                                            }

                                                            if ($total != 0) {
                                                                array_push($arr, [
                                                                    'cuenta' => $cuenta3,
                                                                    'subc' => $subCu3,
                                                                    'aux' => $auxi3,
                                                                    'aux1' => $auxl3,
                                                                    'descripcion' => $cartilla3->carnomb,
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

        return $arr;
    }

}
