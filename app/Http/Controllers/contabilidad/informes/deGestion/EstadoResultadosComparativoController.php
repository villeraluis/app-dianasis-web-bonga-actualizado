<?php

namespace App\Http\Controllers\contabilidad\informes\deGestion;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EstadoResultadosComparativoController extends Controller
{
    public function viewEstadoResultadosCom()
    {
        cambioBaseDatos();
        $empresa = session('Empresa');
        $sql1 = "SELECT PerAno FROM PERIODOS WHERE PerEmpr ='$empresa'  Group by PerAno";
        $periodos = DB::select($sql1);
        return view('contabilidad.informes.deGestion.estadoResultadosCom.indexEstadoResultadosComparativo', compact('periodos'));
    }


    public function infEstadoResultadosCom(Request $request)
    {
        $mes = $request->selectMes;
        $datos = $this->consultaEstadoResultadosCom($request);
        // return $datos;
        if ($datos == null) {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
             No hay datos para Mostrar. 
          </div>";
        }
        return view('contabilidad.informes.deGestion.estadoResultadosCom.tablaEstadoResultadosCom', compact('mes', 'datos'));
    }




    public function consultaEstadoResultadosCom($request)
    {
        cambioBaseDatos();
        $empresa = session('Empresa');
        $year = $request->selectYear;
        $mes = $request->selectMes;
        $sql = '';
        $saldo = 0;
        $datos = collect();
        $inputCentro = $request->idCentroCosto;
        $idCentroc = substr($inputCentro, 0, 2);
        $idSuCentroc = substr($inputCentro, 2, 6);


        $vFiltro = ($inputCentro != null) ? "And movcent ='$idCentroc' And movscen = '$idSuCentroc'" : "";


        $sql = "SELECT TmoAno,TmoMes,MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr FROM TMOVIMIENTO
                INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons
                WHERE (TmoEmpr ='$empresa' $vFiltro  And (TmoAno = $year Or TmoAno =  ($year - 1)) And TmoMes <= $mes  And TmoApl = '0'
                AND (MovCuen Like '4%' OR MovCuen Like '5%' OR MovCuen Like '6%' OR MovCuen Like '7%' ))
                GROUP BY TmoAno,TmoMes,MovCuen,MovScue,MovAuxi,MovAuxl
                ORDER BY MovCuen,MovScue,MovAuxi,MovAuxl";



        $datosConsulta = DB::select($sql);



        $ventas = "SELECT * FROM CARTILLA 
                        WHERE CarEmpr = '$empresa' And CarCuen Like '41%' and Carcuen <> '4100' 
                        ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $devVentas = "SELECT * FROM CARTILLA 
                        WHERE CarEmpr = '$empresa' And CarCuen = '4175'
                        ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $costoV = "SELECT * FROM CARTILLA 
                            WHERE CarEmpr = '$empresa' And ((CarCuen Like '61%' And Carcuen <> '6100') OR (CarCuen Like '74%' And Carcuen <> '7400')) 
                            ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $gastosAdm = "SELECT * FROM CARTILLA 
                        WHERE CarEmpr = '$empresa' And CarCuen Like '51%' And Carcuen <> '5100' 
                        ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $gastoVentas = "SELECT * FROM CARTILLA 
                        WHERE CarEmpr = '$empresa' And CarCuen Like '52%' And Carcuen <> '5200' 
                        ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $ingNoOperac = "SELECT * FROM CARTILLA 
                        WHERE CarEmpr = '$empresa' And CarCuen Like '42%' And Carcuen <> '4200'
                        ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $gastosNoOperac = "SELECT * FROM CARTILLA 
                            WHERE CarEmpr = '$empresa' And CarCuen Like '53%' And Carcuen <> '5300'
                            ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $correccionMonet = "SELECT * FROM CARTILLA 
                            WHERE CarEmpr = '$empresa' And CarCuen = '4705'
                            ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $provisionImpuestosC = "SELECT * FROM CARTILLA 
                                WHERE CarEmpr = '$empresa' And CarCuen = '5405'
                                ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $conGastos = "SELECT * FROM CARTILLA 
                      WHERE CarEmpr = '$empresa' And CarCuen Like '5%' 
                      And Carcuen <> '5000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";



        $conCostoProduccion = "SELECT * FROM CARTILLA 
                               WHERE CarEmpr = '$empresa' And CarCuen Like '7%' 
                               And Carcuen <> '7000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl";

        $datventas = DB::select($ventas);
        $devolVentas = DB::select($devVentas);
        $costosVentas = DB::select($costoV);
        $gastosAdmin = DB::select($gastosAdm);
        $gastosVentas = DB::select($gastoVentas);
        $ingresNoOperac = DB::select($ingNoOperac);
        $gastosNoOperaci = DB::select($gastosNoOperac);
        $correccionMonetar = DB::select($correccionMonet);
        $provisionImpuestos = DB::select($provisionImpuestosC);

        /* $contGastos = DB::select($conGastos);
        $contCostoProduccion = DB::select($conCostoProduccion); */

        /*$costoVentas = DB::select($conCostoVentas);
        $costoProduccion = DB::select($conCostoProduccion); */

        //$datosOrds = $this->ordenarDatos($datventas, $datosConsulta, $mes, $year);



        $rowTablaVacio = [
            'cuenta' => '',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => '',
            'mesesActual' => [0],
            'acuActval' => '',
            'acuActporc' => '',
            'mesesAnterior' => [0],
            'acuAntval' => '',
            'acuAntporc' => '',
            'variacionAbs' => '',
            'cumplim' => '',
            'type' => 'vacio'
        ];


        $datosVentas = $this->oneCuentaDatos('4100', $datosConsulta, $mes, $year, true);
        $Rowtabla = [
            'cuenta' => '4100',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'VENTAS',
            'mesesActual' =>  $datosVentas['valMesAc'],
            'acuActval' => ($datosVentas['acumActual']),
            'acuActporc' => '',
            'mesesAnterior' =>  $datosVentas['valMesAnt'],
            'acuAntval' => ($datosVentas['acumAnte']),
            'acuAntporc' => '',
            'variacionAbs' => '',
            'cumplim' => '',
            'type' => 'total'
        ];


        $datos->push($Rowtabla);

        $datosOrds = $this->ordenarDatos($datventas, $datosConsulta, $mes, $year, $datosVentas['valMesAc'], $datosVentas['valMesAnt'], true);

        foreach ($datosOrds as $dat) {
            $datos->push($dat);
        }

        $datos->push($rowTablaVacio);

        #########################################################################

        $datosDevVentas = $this->oneCuentaDatosDis($devolVentas, $datosConsulta, $mes, $year, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);
        $Rowtabla = [
            'cuenta' => '4175',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'DEVOLUCIONES EN VENTAS',
            'mesesActual' =>  $datosDevVentas['valMesAc'],
            'acuActval' => ($datosDevVentas['acumActual']),
            'acuActporc' =>  $datosDevVentas['porMesAct'],
            'mesesAnterior' =>  $datosDevVentas['valMesAnt'],
            'acuAntval' => ($datosDevVentas['acumAnte']),
            'acuAntporc' =>  $datosDevVentas['porMesAnt'],
            'acumPorAct' =>  $datosDevVentas['porAcumAct'],
            'acumPorAnt' =>  $datosDevVentas['porAcumAnt'],
            'variacionAbs' => '',
            'cumplim' => '',
            'type' => 'p'
        ];
        $datos->push($Rowtabla);
        $datosOrds = $this->ordenarDatos($devolVentas, $datosConsulta, $mes, $year, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);

        foreach ($datosOrds as $dat) {
            $datos->push($dat);
        }

        $ingNetosOp = $this->difArraysVal($datosVentas, $datosDevVentas, $mes, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);



        $Rowtabla = [
            'cuenta' => '',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'INGRESOS NETOS OPERACIONALES',
            'mesesActual' =>  $ingNetosOp['valMesAc'],
            'acuActval' => ($ingNetosOp['acumActual']),
            'acuActporc' =>  $ingNetosOp['porMesAct'],
            'mesesAnterior' =>  $ingNetosOp['valMesAnt'],
            'acuAntval' => ($ingNetosOp['acumAnte']),
            'acuAntporc' =>  $ingNetosOp['porMesAnt'],
            'acumPorAct' =>  $ingNetosOp['porAcumAct'],
            'acumPorAnt' =>  $ingNetosOp['porAcumAnt'],
            'variacionAbs' => '',
            'cumplim' => '',
            'type' => 'p'
        ];
        $datos->push($Rowtabla);
        $datos->push($rowTablaVacio);

        $costoVentas = $this->oneCuentaDatosDis($costosVentas, $datosConsulta, $mes, $year, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);
        $Rowtabla = [
            'cuenta' => '6100',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'COSTO EN VENTAS',
            'mesesActual' => $costoVentas['valMesAc'],
            'acuActval' => ($costoVentas['acumActual']),
            'acuActporc' => $costoVentas['porMesAct'],
            'mesesAnterior' => $costoVentas['valMesAnt'],
            'acuAntval' => ($costoVentas['acumAnte']),
            'acuAntporc' => $costoVentas['porMesAnt'],
            'acumPorAct' => $costoVentas['porAcumAct'],
            'acumPorAnt' => $costoVentas['porAcumAnt'],
            'variacionAbs' => '',
            'cumplim' => '',
            'type' => 'p'
        ];
        $datos->push($Rowtabla);
        $datosOrds = $this->ordenarDatos($costosVentas, $datosConsulta, $mes, $year, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);

        foreach ($datosOrds as $dat) {
            $datos->push($dat);
        }

        $utilidaBruta = $this->difArraysVal($ingNetosOp, $costoVentas, $mes, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);

        $datos->push($rowTablaVacio);
        $Rowtabla = [
            'cuenta' => '',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'UTILIDAD O PERDIDA BRUTA',
            'mesesActual' =>  $utilidaBruta['valMesAc'],
            'acuActval' => ($utilidaBruta['acumActual']),
            'acuActporc' =>  $utilidaBruta['porMesAct'],
            'mesesAnterior' =>  $utilidaBruta['valMesAnt'],
            'acuAntval' => ($utilidaBruta['acumAnte']),
            'acuAntporc' =>  $utilidaBruta['porMesAnt'],
            'acumPorAct' =>  $utilidaBruta['porAcumAct'],
            'acumPorAnt' =>  $utilidaBruta['porAcumAnt'],
            'variacionAbs' => '',
            'cumplim' => '',
            'type' => 'p'
        ];
        $datos->push($Rowtabla);
        $datos->push($rowTablaVacio);

        $gastosAd = $this->oneCuentaDatosDis($gastosAdmin, $datosConsulta, $mes, $year, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);
        $Rowtabla = [
            'cuenta' => '5100',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'GASTOS DE ADMINISTRACION',
            'mesesActual' => $gastosAd['valMesAc'],
            'acuActval' => ($gastosAd['acumActual']),
            'acuActporc' => $gastosAd['porMesAct'],
            'mesesAnterior' => $gastosAd['valMesAnt'],
            'acuAntval' => ($gastosAd['acumAnte']),
            'acuAntporc' => $gastosAd['porMesAnt'],
            'acumPorAct' => $gastosAd['porAcumAct'],
            'acumPorAnt' => $gastosAd['porAcumAnt'],
            'variacionAbs' => '',
            'cumplim' => '',
            'type' => 'p'
        ];
        $datos->push($Rowtabla);
        $datosOrds = $this->ordenarDatos($gastosAdmin, $datosConsulta, $mes, $year, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);

        foreach ($datosOrds as $dat) {
            $datos->push($dat);
        }

        $gastosVen = $this->oneCuentaDatosDis($gastosVentas, $datosConsulta, $mes, $year, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);
        $Rowtabla = [
            'cuenta' => '5200',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'GASTOS DE VENTAS',
            'mesesActual' => $gastosVen['valMesAc'],
            'acuActval' => ($gastosVen['acumActual']),
            'acuActporc' => $gastosVen['porMesAct'],
            'mesesAnterior' => $gastosVen['valMesAnt'],
            'acuAntval' => ($gastosVen['acumAnte']),
            'acuAntporc' => $gastosVen['porMesAnt'],
            'acumPorAct' => $gastosVen['porAcumAct'],
            'acumPorAnt' => $gastosVen['porAcumAnt'],
            'variacionAbs' => '',
            'cumplim' => '',
            'type' => 'p'
        ];
        $datos->push($Rowtabla);

        $datosOrds = $this->ordenarDatos($gastosVentas, $datosConsulta, $mes, $year, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);

        foreach ($datosOrds as $dat) {
            $datos->push($dat);
        }

        $tgastOp = $this->sumaArraysVal($gastosAd, $gastosVen, $mes, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);

        $Rowtabla = [
            'cuenta' => '',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'TOTAL GASTOS OPERACIONALES',
            'mesesActual' =>  $tgastOp['valMesAc'],
            'acuActval' => ($tgastOp['acumActual']),
            'acuActporc' =>  $tgastOp['porMesAct'],
            'mesesAnterior' =>  $tgastOp['valMesAnt'],
            'acuAntval' => ($tgastOp['acumAnte']),
            'acuAntporc' =>  $tgastOp['porMesAnt'],
            'acumPorAct' =>  $tgastOp['porAcumAct'],
            'acumPorAnt' =>  $tgastOp['porAcumAnt'],
            'variacionAbs' => '',
            'cumplim' => '',
            'type' => 'p'
        ];
        $datos->push($Rowtabla);
        $datos->push($rowTablaVacio);

        $utilidaOpe = $this->difArraysVal($utilidaBruta, $tgastOp, $mes, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);

        $Rowtabla = [
            'cuenta' => '',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'UTILIDAD O PERDIDA OPERACIONAL',
            'mesesActual' =>  $utilidaOpe['valMesAc'],
            'acuActval' => ($utilidaOpe['acumActual']),
            'acuActporc' =>  $utilidaOpe['porMesAct'],
            'mesesAnterior' =>  $utilidaOpe['valMesAnt'],
            'acuAntval' => ($utilidaOpe['acumAnte']),
            'acuAntporc' =>  $utilidaOpe['porMesAnt'],
            'acumPorAct' =>  $utilidaOpe['porAcumAct'],
            'acumPorAnt' =>  $utilidaOpe['porAcumAnt'],
            'variacionAbs' => '',
            'cumplim' => '',
            'type' => 'p'
        ];
        $datos->push($Rowtabla);
        $datos->push($rowTablaVacio);

        $ingNoOp = $this->oneCuentaDatosDis($ingresNoOperac, $datosConsulta, $mes, $year, $datosVentas['valMesAc'], $datosVentas['valMesAnt'], true);
        $Rowtabla = [
            'cuenta' => '4200',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'INGRESOS NO OPERACIONALES',
            'mesesActual' => $ingNoOp['valMesAc'],
            'acuActval' => ($ingNoOp['acumActual']),
            'acuActporc' => $ingNoOp['porMesAct'],
            'mesesAnterior' => $ingNoOp['valMesAnt'],
            'acuAntval' => ($ingNoOp['acumAnte']),
            'acuAntporc' => $ingNoOp['porMesAnt'],
            'acumPorAct' => $ingNoOp['porAcumAct'],
            'acumPorAnt' => $ingNoOp['porAcumAnt'],
            'variacionAbs' => '',
            'cumplim' => '',
            'type' => 'p'
        ];
        $datos->push($Rowtabla);

        $datosOrds = $this->ordenarDatos($ingresNoOperac, $datosConsulta, $mes, $year, $datosVentas['valMesAc'], $datosVentas['valMesAnt'], true);

        foreach ($datosOrds as $dat) {
            $datos->push($dat);
        }

        $gastoNoOp = $this->oneCuentaDatosDis($gastosNoOperaci, $datosConsulta, $mes, $year, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);
        $Rowtabla = [
            'cuenta' => '5300',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'GASTOS NO OPERACIONALES',
            'acuActval' => ($gastoNoOp['acumActual']),
            'mesesActual' => $gastoNoOp['valMesAc'],
            'acuActporc' => $gastoNoOp['porMesAct'],
            'mesesAnterior' => $gastoNoOp['valMesAnt'],
            'acuAntval' => ($gastoNoOp['acumAnte']),
            'acuAntporc' => $gastoNoOp['porMesAnt'],
            'acumPorAct' => $gastoNoOp['porAcumAct'],
            'acumPorAnt' => $gastoNoOp['porAcumAnt'],
            'variacionAbs' => '',
            'cumplim' => '',
            'type' => 'p'
        ];
        $datos->push($Rowtabla);

        $datosOrds = $this->ordenarDatos($gastosNoOperaci, $datosConsulta, $mes, $year, $datosVentas['valMesAc'], $datosVentas['valMesAnt'], true);

        foreach ($datosOrds as $dat) {
            $datos->push($dat);
        }

        $corrMon = $this->oneCuentaDatosDis($correccionMonetar, $datosConsulta, $mes, $year, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);
        $Rowtabla = [
            'cuenta' => '4705',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'CORRECIÓN MONETARIA',
            'acuActval' => ($corrMon['acumActual']),
            'mesesActual' => $corrMon['valMesAc'],
            'acuActporc' => $corrMon['porMesAct'],
            'mesesAnterior' => $corrMon['valMesAnt'],
            'acuAntval' => ($corrMon['acumAnte']),
            'acuAntporc' => $corrMon['porMesAnt'],
            'acumPorAct' => $corrMon['porAcumAct'],
            'acumPorAnt' => $corrMon['porAcumAnt'],
            'variacionAbs' => '',
            'cumplim' => '',
            'type' => 'p'
        ];
        $datos->push($Rowtabla);

        $datosOrds = $this->ordenarDatos($correccionMonetar, $datosConsulta, $mes, $year, $datosVentas['valMesAc'], $datosVentas['valMesAnt'], true);

        foreach ($datosOrds as $dat) {
            $datos->push($dat);
        }
        $datos->push($rowTablaVacio);

        $difGastIn = $this->difArraysVal($gastoNoOp, $ingNoOp, $mes, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);

        $utilidadAntImpuestos = $this->difArraysVal($utilidaOpe, $difGastIn, $mes, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);

        $Rowtabla = [
            'cuenta' => '',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'UTILIDAD O PERDIDA ANTES DE IMPUESTOS',
            'mesesActual' =>  $utilidadAntImpuestos['valMesAc'],
            'acuActval' => ($utilidadAntImpuestos['acumActual']),
            'acuActporc' =>  $utilidadAntImpuestos['porMesAct'],
            'mesesAnterior' =>  $utilidadAntImpuestos['valMesAnt'],
            'acuAntval' => ($utilidadAntImpuestos['acumAnte']),
            'acuAntporc' =>  $utilidadAntImpuestos['porMesAnt'],
            'acumPorAct' =>  $utilidadAntImpuestos['porAcumAct'],
            'acumPorAnt' =>  $utilidadAntImpuestos['porAcumAnt'],
            'variacionAbs' => '',
            'cumplim' => '',
            'type' => 'p'
        ];
        $datos->push($Rowtabla);
        $provImp = $this->oneCuentaDatosDis($provisionImpuestos, $datosConsulta, $mes, $year, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);
        $Rowtabla = [
            'cuenta' => '5405',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'PROVISION IMPUESTO DE RENTAS',
            'acuActval' => ($provImp['acumActual']),
            'mesesActual' => $provImp['valMesAc'],
            'acuActporc' => $provImp['porMesAct'],
            'mesesAnterior' => $provImp['valMesAnt'],
            'acuAntval' => ($provImp['acumAnte']),
            'acuAntporc' => $provImp['porMesAnt'],
            'acumPorAct' => $provImp['porAcumAct'],
            'acumPorAnt' => $provImp['porAcumAnt'],
            'cumplim' => '',
            'type' => 'p'
        ];
        $datos->push($Rowtabla);

        $datosOrds = $this->ordenarDatos($provisionImpuestos, $datosConsulta, $mes, $year, $datosVentas['valMesAc'], $datosVentas['valMesAnt'], true);

        foreach ($datosOrds as $dat) {
            $datos->push($dat);
        }

        $utilidadNeta = $this->difArraysVal($utilidadAntImpuestos, $provImp, $mes, $datosVentas['valMesAc'], $datosVentas['valMesAnt']);

        $datos->push($rowTablaVacio);
        $Rowtabla = [
            'cuenta' => '',
            'subc' => '',
            'aux' => '',
            'aux1' => '',
            'descripcion' => 'UTILIDAD O PERDIDA NETA',
            'mesesActual' =>  $utilidadNeta['valMesAc'],
            'acuActval' => ($utilidadNeta['acumActual']),
            'acuActporc' =>  $utilidadNeta['porMesAct'],
            'mesesAnterior' =>  $utilidadNeta['valMesAnt'],
            'acuAntval' => ($utilidadNeta['acumAnte']),
            'acuAntporc' =>  $utilidadNeta['porMesAnt'],
            'acumPorAct' =>  $utilidadNeta['porAcumAct'],
            'acumPorAnt' =>  $utilidadNeta['porAcumAnt'],
            'variacionAbs' => '',
            'cumplim' => '',
            'type' => 'p'
        ];
        $datos->push($Rowtabla);

        return $datos;
    }


    //////////////##############Ordena los datos de una cuenta espesifica
    public function oneCuentaDatos($cuenta, $movimientos, $mes, $year, $in = false)
    {
        $arrMesAc = [];
        $arrMesAnt = [];
        $porcMesActual = [];
        $porcMesAnte = [];

        for ($i = 1; $i <= $mes; $i++) {
            $valMesAc = 0;
            $valMesAn = 0;
            foreach ($movimientos as $mov) {
                if (substr($cuenta, -2) == '00') {
                    if ($mov->TmoMes == $i && $mov->TmoAno == $year && (substr($mov->MovCuen, 0, -2) == substr($cuenta, 0, -2))) {
                        if ($mov->MovValr  < 0 && $in) {
                            $mov->MovValr = $mov->MovValr * (-1);
                        }
                        $valMesAc += $mov->MovValr;
                        $arrMesAc[$mov->TmoMes] = $valMesAc;
                    }

                    if ($mov->TmoMes == $i && $mov->TmoAno == ($year - 1) && (substr($mov->MovCuen, 0, -2) == substr($cuenta, 0, -2))) {
                        if ($mov->MovValr  < 0 && $in) {
                            $mov->MovValr = $mov->MovValr * (-1);
                        }
                        $valMesAn += $mov->MovValr;
                        $arrMesAnt[$mov->TmoMes] = $valMesAn;
                    }
                } else {
                    if ($mov->TmoMes == $i && $mov->TmoAno == $year && $mov->MovCuen == $cuenta) {
                        if ($mov->MovValr  < 0 && $in) {
                            $mov->MovValr = $mov->MovValr * (-1);
                        }
                        $valMesAc += $mov->MovValr;
                        $arrMesAc[$mov->TmoMes] = $valMesAc;
                    }

                    if ($mov->TmoMes == $i && $mov->TmoAno == ($year - 1) && $mov->MovCuen == $cuenta) {
                        if ($mov->MovValr  < 0 && $in) {
                            $mov->MovValr = $mov->MovValr * (-1);
                        }

                        $valMesAn += $mov->MovValr;
                        $arrMesAnt[$mov->TmoMes] = $valMesAn;
                    }
                }
            }
        }


        $acumuladoActual = array_sum($arrMesAc);
        $acumuladoAnterior = array_sum($arrMesAnt);

        if ($acumuladoActual < 0 && $in) {
            $acumuladoActual = $acumuladoActual * (-1);
        }

        if ($acumuladoAnterior < 0 && $in) {
            $acumuladoAnterior = $acumuladoAnterior * (-1);
        }



        $arDat = [];

        $arDat['acumActual'] = $acumuladoActual;
        $arDat['acumAnte'] = $acumuladoAnterior;
        $arDat['valMesAc'] = $arrMesAc;
        $arDat['valMesAnt'] = $arrMesAnt;
        $arDat['porMesAct'] = $porcMesActual;
        $arDat['porMesAnt'] = $porcMesAnte;




        return $arDat;
    }


    //////##########trae datos de cuentas distintas a ventas
    public function oneCuentaDatosDis($cartillas, $movimientos, $mes, $year, $arrVenAc, $arrVenAnt, $in = false)
    {
        $arDat = [];
        $arrMesAcF = [];
        $arrMesAntF = [];
        $porMesActF = [];
        $porMesAntF = [];
        $acumMesActual = 0;
        $acumMesAnte = 0;



        foreach ($cartillas as $cartilla) {
            $cuenta = $cartilla->carcuen;
            $subCu = $cartilla->carscue;
            $arrMesAc = [];
            $arrMesAnt = [];


            if ($subCu == '00') {
                for ($i = 1; $i <= $mes; $i++) {
                    $valMesAc = 0;
                    $valMesAn = 0;
                    foreach ($movimientos as $mov) {
                        if ($mov->TmoMes == $i && $mov->TmoAno == $year && $mov->MovCuen == $cuenta) {
                            if ($mov->MovValr  < 0 && $in) {
                                $mov->MovValr = $mov->MovValr * (-1);
                            }

                            $valMesAc += $mov->MovValr;
                            $arrMesAc[$mov->TmoMes] = $valMesAc;
                        }

                        if ($mov->TmoMes == $i && $mov->TmoAno == ($year - 1) && $mov->MovCuen == $cuenta) {
                            if ($mov->MovValr  < 0 && $in) {
                                $mov->MovValr = $mov->MovValr * (-1);
                            }

                            $valMesAn += $mov->MovValr;
                            $arrMesAnt[$mov->TmoMes] = $valMesAn;
                        }
                    }


                    if (!isset($arrMesAcF[$i])) {
                        $arrMesAcF[$i] = $valMesAc;

                        if (isset($arrVenAc[$i])) {
                            $porMesActF[$i] = porcentaje($arrVenAc[$i], $arrMesAcF[$i]);
                        }
                    } else {
                        $temp1 = $arrMesAcF[$i];
                        $arrMesAcF[$i] = $valMesAc + $temp1;
                        if (isset($arrVenAc[$i])) {
                            $porMesActF[$i] = porcentaje($arrVenAc[$i], $arrMesAcF[$i]);
                        }
                    }
                    if (!isset($arrMesAntF[$i])) {
                        $arrMesAntF[$i] = $valMesAn;
                        if (isset($arrVenAnt[$i])) {
                            $porMesAntF[$i] = porcentaje($arrVenAnt[$i], $arrMesAntF[$i]);
                        }
                    } else {
                        $temp2 = $arrMesAntF[$i];
                        $arrMesAntF[$i] = $valMesAn + $temp2;
                        if (isset($arrVenAnt[$i])) {
                            $porMesAntF[$i] = porcentaje($arrVenAnt[$i], $arrMesAntF[$i]);
                        }
                    }
                }





                $acumMesActual += array_sum($arrMesAc);
                $acumMesAnte += array_sum($arrMesAnt);

                $varAbs = variacion($acumMesActual, $acumMesAnte);
            }
        }






        $arDat['acumActual'] = $acumMesActual;
        $arDat['acumAnte'] = $acumMesAnte;
        $arDat['valMesAc'] = $arrMesAcF;
        $arDat['valMesAnt'] = $arrMesAntF;
        $arDat['porMesAct'] = $porMesActF;
        $arDat['porMesAnt'] = $porMesAntF;
        $arDat['porAcumAct'] = porcentaje(array_sum($arrVenAc), $acumMesActual);
        $arDat['porAcumAnt'] = porcentaje(array_sum($arrVenAnt), $acumMesAnte);



        return $arDat;
    }


    //////////////calcula la resta de los valores de los do aaray
    public function difArraysVal($array1, $array2, $mes, $arrVenAc, $arrVenAnt)
    {
        $totalAr1Ac = $array1['acumActual'];
        $totalAr2Ac = $array2['acumActual'];
        $totalAr1An = $array1['acumAnte'];
        $totalAr2An = $array2['acumAnte'];

        $arrMesesAct = [];
        $arrMesesAnt = [];
        $porMesActF = [];
        $porMesAntF = [];

        for ($i = 1; $i <= $mes; $i++) {
            $valAct = 0;
            $valAnt = 0;




            if (isset($array1['valMesAc'][$i])) {
                $valAct = $array1['valMesAc'][$i];



                if (isset($array2['valMesAc'][$i])) {
                    $valAct = $valAct - $array2['valMesAc'][$i];
                }
            }


            if (isset($array1['valMesAnt'][$i])) {
                $valAnt = $array1['valMesAnt'][$i];
                if (isset($array2['valMesAnt'][$i])) {
                    $valAnt = $valAnt - $array2['valMesAnt'][$i];
                }
            }


            ////////////
            if (isset($arrVenAc[$i])) {
                $porMesActF[$i] = porcentaje($arrVenAc[$i], $valAct);
            }

            if (isset($arrVenAnt[$i])) {
                $porMesAntF[$i] = porcentaje($arrVenAnt[$i], $valAnt);
            }



            $arrMesesAct[$i] = $valAct;
            $arrMesesAnt[$i] = $valAnt;
        }

        $arDat = [];

        $arDat['acumActual'] = $totalAr1Ac - $totalAr2Ac;
        $arDat['acumAnte'] = $totalAr1An - $totalAr2An;
        $arDat['valMesAc'] = $arrMesesAct;
        $arDat['valMesAnt'] = $arrMesesAnt;
        $arDat['porMesAct'] = $porMesActF;
        $arDat['porMesAnt'] = $porMesAntF;
        $arDat['porAcumAct'] = porcentaje(array_sum($arrVenAc), $arDat['acumActual']);
        $arDat['porAcumAnt'] = porcentaje(array_sum($arrVenAnt), $arDat['acumAnte']);

        return $arDat;
    }

    ////calcula la suma de los valores de dos araays con estructura especifica
    public function sumaArraysVal($array1, $array2, $mes, $arrVenAc, $arrVenAnt)
    {
        $totalAr1Ac = $array1['acumActual'];
        $totalAr2Ac = $array2['acumActual'];
        $totalAr1An = $array1['acumAnte'];
        $totalAr2An = $array2['acumAnte'];

        $arrMesesAct = [];
        $arrMesesAnt = [];
        $porMesActF = [];
        $porMesAntF = [];

        for ($i = 1; $i <= $mes; $i++) {
            $valAct = 0;
            $valAnt = 0;




            if (isset($array1['valMesAc'][$i])) {
                $valAct = $array1['valMesAc'][$i];



                if (isset($array2['valMesAc'][$i])) {
                    $valAct = $valAct + $array2['valMesAc'][$i];
                }
            }


            if (isset($array1['valMesAnt'][$i])) {
                $valAnt = $array1['valMesAnt'][$i];
                if (isset($array2['valMesAnt'][$i])) {
                    $valAnt = $valAnt + $array2['valMesAnt'][$i];
                }
            }


            ////////////
            if (isset($arrVenAc[$i])) {
                $porMesActF[$i] = porcentaje($arrVenAc[$i], $valAct);
            }

            if (isset($arrVenAnt[$i])) {
                $porMesAntF[$i] = porcentaje($arrVenAnt[$i], $valAnt);
            }



            $arrMesesAct[$i] = $valAct;
            $arrMesesAnt[$i] = $valAnt;
        }

        $arDat = [];

        $arDat['acumActual'] = $totalAr1Ac + $totalAr2Ac;
        $arDat['acumAnte'] = $totalAr1An + $totalAr2An;
        $arDat['valMesAc'] = $arrMesesAct;
        $arDat['valMesAnt'] = $arrMesesAnt;
        $arDat['porMesAct'] = $porMesActF;
        $arDat['porMesAnt'] = $porMesAntF;
        $arDat['porAcumAct'] = porcentaje(array_sum($arrVenAc), $arDat['acumActual']);
        $arDat['porAcumAnt'] = porcentaje(array_sum($arrVenAnt), $arDat['acumAnte']);

        return $arDat;
    }

    //#####################ordena los datos de una lista de cartillas contables
    public function ordenarDatos($cartillas, $movimientos, $mes, $year, $acuPActal, $acuPAnter, $in = false)
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
                            if ($mov->MovValr  < 0 && $in) {
                                $mov->MovValr = $mov->MovValr * (-1);
                            }

                            $valMesAc += $mov->MovValr;
                            $arrMesAc[$mov->TmoMes] = $valMesAc;
                            if (isset($acuPActal[$i])) {
                                $porMesAct[$i] = porcentaje($acuPActal[$i], $valMesAc);
                            }
                        }


                        if ($mov->TmoMes == $i && $mov->TmoAno == ($year - 1) && $mov->MovCuen == $cuenta) {
                            if ($mov->MovValr  < 0 && $in) {
                                $mov->MovValr = $mov->MovValr * (-1);
                            }
                            $valMesAn += $mov->MovValr;
                            $arrMesAnt[$mov->TmoMes] = $valMesAn;


                            $vaPo=0;
                            if (array_key_exists($i, $acuPAnter)) {
                                $vaPo=$acuPAnter[$i];
                            }



                            $porMesAnt[$i] = porcentaje($vaPo, $valMesAn);
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
                                        if ($mov->MovValr  < 0 && $in) {
                                            $mov->MovValr = $mov->MovValr * (-1);
                                        }
                                        $valMesAc += $mov->MovValr;
                                        $arrMesAc[$mov->TmoMes] = $valMesAc;
                                        if (isset($acuPActal[$i])) {
                                            $porMesAct[$i] = porcentaje($acuPActal[$i], $valMesAc);
                                        }
                                    }

                                    if ($mov->TmoMes == $i && $mov->TmoAno == ($year - 1) && $mov->MovCuen == $cuenta1  && $mov->MovScue == $subCu1) {
                                        if ($mov->MovValr  < 0 && $in) {
                                            $mov->MovValr = $mov->MovValr * (-1);
                                        }
                                        $valMesAn += $mov->MovValr;
                                        $arrMesAnt[$mov->TmoMes] = $valMesAn;

                                        $vaPo=0;
                                        if (array_key_exists($i, $acuPAnter)) {
                                            $vaPo=$acuPAnter[$i];
                                        }

                                        $porMesAnt[$i] = porcentaje($vaPo, $valMesAn);
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
                                                    if ($mov->MovValr  < 0 && $in) {
                                                        $mov->MovValr = $mov->MovValr * (-1);
                                                    }

                                                    $valMesAc += $mov->MovValr;
                                                    $arrMesAc[$mov->TmoMes] = $valMesAc;
                                                    if (isset($acuPActal[$i])) {
                                                        $porMesAct[$i] = porcentaje($acuPActal[$i], $valMesAc);
                                                    }
                                                }

                                                if ($mov->TmoMes == $i && $mov->TmoAno == ($year - 1) && $mov->MovCuen == $cuenta2  && $mov->MovScue == $subCu2 && $mov->MovAuxi == $auxi2) {
                                                    if ($mov->MovValr  < 0 && $in) {
                                                        $mov->MovValr = $mov->MovValr * (-1);
                                                    }
                                                    $valMesAn += $mov->MovValr;
                                                    $arrMesAnt[$mov->TmoMes] = $valMesAn;
                                                    $vaPo=0;
                                                    if (array_key_exists($i, $acuPAnter)) {
                                                        $vaPo=$acuPAnter[$i];
                                                    }

                                                    $porMesAnt[$i] = porcentaje($vaPo, $valMesAn);
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
                                                                if ($mov->MovValr  < 0 && $in) {
                                                                    $mov->MovValr = $mov->MovValr * (-1);
                                                                }
                                                                $valMesAc += $mov->MovValr;
                                                                $arrMesAc[$mov->TmoMes] = $valMesAc;

                                                                if (isset($acuPActal[$i])) {
                                                                    $porMesAct[$i] = porcentaje($acuPActal[$i], $valMesAc);
                                                                }
                                                            }

                                                            if ($mov->TmoMes == $i && $mov->TmoAno == ($year - 1) && $mov->MovCuen == $cuenta3  && $mov->MovScue == $subCu3 && $mov->MovAuxi == $auxi3 && $mov->MovAuxl == $auxl3) {
                                                                
                                                               
                                                                if ($mov->MovValr  < 0 && $in) {
                                                                    $mov->MovValr = $mov->MovValr * (-1);
                                                                }
                                                                $valMesAn += $mov->MovValr;
                                                                $arrMesAnt[$mov->TmoMes] = $valMesAn;
                                                                
                                                                $vaPo=0;
                                                                if (array_key_exists($i, $acuPAnter)) {
                                                                    $vaPo=$acuPAnter[$i];
                                                                }

                                                                $porMesAnt[$i] = porcentaje($vaPo, $valMesAn);
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
