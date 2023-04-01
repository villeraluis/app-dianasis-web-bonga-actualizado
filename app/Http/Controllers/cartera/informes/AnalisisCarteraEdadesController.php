<?php

namespace App\Http\Controllers\cartera\informes;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\FormaPago;
use PhpParser\Node\Stmt\Return_;

class AnalisisCarteraEdadesController extends Controller
{


    public function viewInformeAnalisisCarteraEdades()
    {
        cambioBaseDatos();

        $empresa = session('Empresa');
        $conCartera = DB::select("SELECT * FROM CONCEPTOSCARTERA WHERE CcaIdStEmpresa = '$empresa'");

        return view('cartera.informes.analisisCarteraEdades.indexAnalisisCarteraEdades', compact('conCartera'));
    }

    public function infAnalisisCarteraEdades(Request $request)
    {

        $datos = $this->consultaAnalisisCarteraEdades($request);

        // return $datos;
        if ($datos == null) {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
             No hay datos para Mostrar. 
          </div>";
        }


        if ($datos[0] == 'reciboSinSoporte') {
            $datos = collect($datos[1]);
            $msg = "Señor usuario hay recibos de caja sin soporte, se generó un informe de Novedad - 
            <span role='button' class='btn btn-primary btn-primar btn-sm btnVerNovedad'>Ver Novedad</span>";
            $tipo = 'alert-secondary';
            return view('components.alerta1', compact('msg', 'tipo', 'datos'));
        }


        if ($datos[0] == 'revolucionSinSoporte') {
            $datos = collect($datos[1]);
            $msg = "Señor usuario hay Devoluciones de ventas sin soporte, se generó un informe de Novedad - 
            <span role='button' class='btn btn-primary btn-primar btn-sm btnVerNovedad'>Ver Novedad</span>";
            $tipo = 'alert-secondary';
            return view('components.alerta1', compact('msg', 'tipo', 'datos'));
        }


        return view('cartera.informes.analisisCarteraEdades.tablaAnalisisCarteraEdades', compact('datos'));

    }

    public function consultaAnalisisCarteraEdades($request)
    {
        cambioBaseDatos();
        $empresa = session('Empresa');
        $fecha = $request->fecha;
        $aprobado = 'A';
        $ini = date("Y", strtotime(date("Y", strtotime($fecha)) . "- 1 year"));


        $fin = date("Y", strtotime($fecha));
        $datos = collect();
        $comp6 = vTipoComprobante(6);



        /* '**** Informaci0n de cartera actual */
        $filTercero = ($request->selectIdTerceros != '') ?  'AND CarIdStCliente=' . $request->selectIdTerceros : ''; ////vFiltro
        $vFiltro2 = ($request->selectConceptoCartera != '') ? ' AND CarIdInConceptoCartera=' . $request->selectConceptoCartera : ''; //vFiltro2

        $sql1 = "SELECT A.*,B.CliStNombreCliente,C.CcaStDescripcion,M.VenStPrefijoNumeracion, M.VenStEstadoRegistro,N.SucStNombreSucursal 
        FROM CARTERA A 
        INNER JOIN CLIENTES B ON (A.CarIdStEmpresa = B.CliEmpr AND A.CarIdStCliente = B.CliNit) 
        INNER JOIN CONCEPTOSCARTERA C ON (A.CarIdStEmpresa = C.CcaIdStEmpresa AND A.CarIdInConceptoCartera = C.CcaIdInConceptoCartera) 
        LEFT OUTER JOIN VENTAS M ON (A.CarIdStEmpresa = M.VenIdStEmpresa AND A.CarIdStComprobante = M.VenIdStComprobante AND A.CarIdInDocumento = M.VenIdInDocumento AND A.CarIdStCliente = M.VenIdStCliente) 
        LEFT OUTER JOIN SUCURSALCLIENTES N ON (A.CarIdStEmpresa = N.SucIdStEmpresa AND A.CarIdStCliente = N.SucIdStCliente AND A.CarStSucursalClientes = N.SucIdInSucursal) 
        WHERE (CarIdStEmpresa = '$empresa' AND CarIdStPeriodoAplicativo = '3' AND CarDaFechaFactura <= ' $fecha'  $filTercero  $vFiltro2)
        ORDER BY (CONVERT(CarIdStCliente, SIGNED)),CarDaFechaFactura";



        /* **** Busqueda de pagos del perido actual con corte a la fecha ********************* */
        $filTercero2 = ($request->selectIdTerceros != '') ?  'AND RecIdStCliente =' . $request->selectIdTerceros : ''; ////vFiltro
        $vFiltro22 = ($request->selectConceptoCartera != '') ? ' AND B.MreIdInConceptoCartera' . $request->selectConceptoCartera : '';

        $sql2 = "SELECT A.*,B.MreIdStComprobanteVenta,B.MreIdStDocumentoVenta,B.MreInValor,B.MreIdInConceptoCartera,C.CcaStDescripcion 
        FROM RECIBOCAJA A 
        INNER JOIN MOVRECIBOCAJA B ON (A.RecIdStEmpresa = B.MreIdStEmpresa AND A.RecIdStComprobante = B.MreIdComprobante AND A.RecIdInDocumento = B.MreIdInDocumento $vFiltro22 )
        INNER JOIN CONCEPTOSCARTERA C ON (B.MreIdStEmpresa = C.CcaIdStEmpresa AND B.MreIdInConceptoCartera = C.CcaIdInConceptoCartera) 
        WHERE (A.RecIdStEmpresa = '$empresa' AND RecDaFechaRecibo <= '$fecha' 
        AND RecInTipoRecibo <>1 AND RecStEstadoRegistro = '$aprobado' $filTercero2) ";



        /*  '********* Devoluciones en Ventas *************************************************** */

        $filTercero3 = ($request->selectIdTerceros != '') ?  'AND VenIdStCliente=' . $request->selectIdTerceros : ''; ////vFiltro
        $vFiltro23 = ($request->selectConceptoCartera != '') ? ' AND MveIdInConceptoCartera' . $request->selectConceptoCartera : '';

        $sql3 = "SELECT A.*, K.* 
        FROM VENTAS A 
        INNER JOIN MOVVENTAS K ON (A.VenIdInVentas = K.MveIdInVentas AND A.VenIdStEmpresa =K.MveIdStEmpresa $vFiltro23) 
        WHERE (A.VenIdStEmpresa = '$empresa' AND A.VenIdStTipoComprobante = '$comp6' AND VenStCruzaaCartera = '1' and 
        VenDaFechaDoc <= '$fecha' AND VenStEstadoRegistro = '$aprobado' $filTercero3) 
        ORDER BY VenIdStCliente,VenIdStComprobante,VenIdInDocumento";



        /* cartera anual */
        $sql4 = "SELECT A.*,B.CliStNombreCliente FROM CARTERAANUAL A 
        INNER JOIN CLIENTES B ON (A.CarIdStEmpresa = B.CliEmpr AND A.CarIdStCliente = B.CliNit) 
        WHERE CarIdStEmpresa = '$empresa' AND CarIdInPeriodoAno = '$ini' AND CarIdInPeriodoMes = 12 AND 
        CarIdStPeriodoAplicativo = '3' AND CarInValor > CarInAbono AND $filTercero;
        ORDER BY CarIdStCliente,CarDaFechaFactura";


        $datos1 = DB::select($sql1);

        $datos2 = DB::select($sql2);

        $datos3 = DB::select($sql3);

        if ($datos1 == null && $datos2 == null && $datos2 == null) {
            return null;
        }



        $FechaHoy = date("Y-m-d");
        $vReciboSinSoporte = false;
        $vDevolucionSinSoporte = false;
        $A = '';

        $datRow1 = [];
        $ArrNovedad = [];

        $arrOut = [];

        if ($datos1 != null) {
            foreach ($datos1 as $dato) {
                if ($dato->CarIdStCliente != '' && $dato->VenStEstadoRegistro != 'C') {
                    if ($dato->CarInFactura != "") {
                        $fact = "Factura de Venta No. " . $dato->VenStPrefijoNumeracion . ' ' . $dato->CarInFactura;
                    } else {
                        $fact = "Nota Debito No. " . $dato->CarIdInDocumento;
                    }
                    $vFecha = $dato->CarDaFechaFactura;
                    $fechaFin = date("Y-m-d", strtotime($vFecha . "+ $dato->CarInDias days"));
                    if ($dato->CarInDias > 0) {
                        $vFecha = $fechaFin;
                    }

                    $diaFin =  diffFechas($vFecha, $FechaHoy);
                    $diaFin2 =  diffFechas($fechaFin, $FechaHoy);

                    array_push($datRow1, [
                        'cedula' => $dato->CarIdStCliente,
                        'nombreCli' => $dato->CliStNombreCliente,
                        'valor' => $dato->CarInValor - $dato->CarInAbono,
                        'fecha' => $dato->CarDaFechaFactura,
                        'cantDias' => $dato->CarInDias,
                        'concepto' => $dato->CcaStDescripcion,
                        'cartera' => $dato->CarInValor - $dato->CarInAbono,
                        'sucursal' => $dato->SucStNombreSucursal,
                        'factura' =>  $fact,
                        'fechaFinal' => $vFecha,
                        'diaFin1' => $diaFin,
                        'diaFin2' => $diaFin2,
                        'idCliente' => $dato->CarIdStCliente,
                        'idCoimprobante' => $dato->CarIdStComprobante,
                        'idDocumento' => $dato->CarIdInDocumento,
                        'idConceptoCar' => $dato->CarIdInConceptoCartera,
                        'idPrefijo' => $dato->VenStPrefijoNumeracion,
                        'idfactura' => $dato->CarInFactura,

                    ]);
                }
            }
        }

        if ($datos2 != null) {

            foreach ($datos2 as $dato) {
                //buscar valor en el array pasado
                $com = false;
                foreach ($datRow1 as $index => $dat) {
                    if (
                        $dat['idCliente'] == $dato->RecIdStCliente
                        && $dat['idCoimprobante'] == $dato->MreIdStComprobanteVenta
                        && $dat['idDocumento'] == $dato->MreIdStDocumentoVenta
                        && $dat['idConceptoCar'] == $dato->MreIdInConceptoCartera
                    ) {
                        //si lo encuentra cambiar el valor
                        $datRow1[$index]['valor'] = $dat['valor'] - $dato->MreInValor;
                        $com = true;
                    }
                }

                if (!$com) {
                    array_push($ArrNovedad, [
                        'Cliente' => $dato->RecIdStCliente,
                        'Comprobante' => $dato->MreIdStComprobanteVenta,
                        'Fecha' => $dato->RecDaFechaRecibo,
                        'numero' => $dato->MreIdStDocumentoVenta,
                        'ConceptoCartera' => $dato->MreIdInConceptoCartera,
                        'vValor' =>  esMoneda2dec($dato->MreInValor), //($dato->MveInValor + $dato->MveInValorIva)-$dato->MveInDescuento,
                        'ComprobanteDoc' => $dato->RecIdStComprobante,
                        'ConsecutivoDoc' => $dato->RecIdInDocumento,
                        'Descri' => 'RECIBOS DE CAJA',
                    ]);
                    $vReciboSinSoporte = true;
                }
            }
        }

        if ($datos3 != null) {

            /* return $datos3; */

            foreach ($datos3 as $dato) {
                //buscar valor en el array pasado
                $com = false;
                foreach ($datRow1 as $index => $dat) {
                    if (
                        $dat['idCliente'] == $dato->VenIdStCliente
                        && $dat['idCoimprobante'] == $dato->VenIdStComprobantePedido
                        && $dat['idPrefijo'] == $dato->VenStPrefijoNumeracion
                        &&  $dat['idfactura'] == $dato->VenInFactura
                        &&  $dat['idConceptoCar'] == $dato->MveIdInConceptoCartera
                    ) {
                        $PP = 0;
                        //si lo encuentra cambiar el valor
                        if ($dato->VenInValorPropina > 0) {
                            if ($A != $dato->VenIdStCliente . '-' . $dato->VenIdStComprobante . '-' . $dato->VenIdInDocumento) {
                                $PP = $dato->VenInValorPropina;
                            }
                        }
                        $datRow1[$index]['valor'] = $dat['valor'] - $dato->MveInValor -  $dato->MveInDescuento - $dato->MveInValorRetefuente - $dato->MveInValorReteiva + $PP;
                        $com = true;
                    }
                }



                if (!$com) {

                    array_push($ArrNovedad, [
                        'Cliente' => $dato->VenIdStCliente,
                        'Comprobante' => $dato->VenIdStTipoComprobante,
                        'Fecha' => $dato->VenDaFechaDoc,
                        'numero' => $dato->VenInFactura,
                        'ConceptoCartera' => $dato->MveIdInConceptoCartera,
                        'vValor' => esMoneda2dec(($dato->MveInValor + $dato->MveInValorIva) - $dato->MveInDescuento),
                        'ComprobanteDoc' => $dato->VenIdStComprobante,
                        'ConsecutivoDoc' => $dato->VenIdInDocumento,
                        'Descri' => 'DEVOLUCIONES EN VENTA',

                    ]);

                    $vDevolucionSinSoporte = true;
                }
            }
        }


        if ($vDevolucionSinSoporte || $vReciboSinSoporte) {
            if ($vReciboSinSoporte) {
                $arrOut[0] = 'reciboSinSoporte';
                $arrOut[1] = $ArrNovedad;
                return $arrOut;
            } else {
                $arrOut[0] = 'revolucionSinSoporte';
                $arrOut[1] = $ArrNovedad;
                return $arrOut;
            }
        }


        $total = 0;
        $d0dias = 0;
        $de1a30 = 0;
        $de31a60 = 0;
        $de61a90 = 0;
        $de91a180 = 0;
        $de181a360 = 0;
        $masDe360 = 0;
        $dias = 0;
        $A = '';
        $valor = 0;

        $ptotal = 0;
        $pd0dias = 0;
        $pde1a30 = 0;
        $pde31a60 = 0;
        $pde61a90 = 0;
        $pde91a180 = 0;
        $pde181a360 = 0;
        $pmasDe360 = 0;
        $index = 0;

        $pptotal = 0;
        $ppd0dias = 0;
        $ppde1a30 = 0;
        $ppde31a60 = 0;
        $ppde61a90 = 0;
        $ppde91a180 = 0;
        $ppde181a360 = 0;
        $ppmasDe360 = 0;



        foreach ($datRow1 as $idx => $dato) {

            $valor = $dato['valor'];
            $total += $valor;

            if ($idx == 0) {
                $total = 0;
                $d0dias = 0;
                $de1a30 = 0;
                $de31a60 = 0;
                $de61a90 = 0;
                $de91a180 = 0;
                $de181a360 = 0;
                $masDe360 = 0;
                $dias = 0;
                array_push($arrOut, [
                    'cedula' => '',
                    'nombreCli' => 'TOTALES',
                    'fecha' => '',
                    'cantDias' => '',
                    'fvence' => '',
                    'concepto' => '',
                    'cartera' => '',
                    'sucursal' => '',
                    'factura' => '',
                    'totalDeuda' => '',
                    'porVencer' => '',
                    'de1a30' => '',
                    'de31a60' => '',
                    'de61a90' => '',
                    'de91a180' => '',
                    'de181a360' => '',
                    'masDe360' => '',
                    'type' => 'p-2'
                ]);
            }

            if ($A != $dato['cedula']) {

                array_push($arrOut, [
                    'cedula' => $dato['cedula'],
                    'nombreCli' => $dato['nombreCli'],
                    'fecha' => '',
                    'cantDias' => '',
                    'fvence' => '',
                    'concepto' => '',
                    'cartera' => '',
                    'sucursal' => '',
                    'factura' => '',
                    'totalDeuda' => '',
                    'porVencer' => '',
                    'de1a30' => '',
                    'de31a60' => '',
                    'de61a90' => '',
                    'de91a180' => '',
                    'de181a360' => '',
                    'masDe360' => '',
                    'type' => 'p'
                ]);

                $ptotal = 0;
                $pd0dias = 0;
                $pde1a30 = 0;
                $pde31a60 = 0;
                $pde61a90 = 0;
                $pde91a180 = 0;
                $pde181a360 = 0;
                $pmasDe360 = 0;
                $index = count($arrOut) - 1;
            }

            if ($valor > 0) {

                $d0dias = 0;
                $de1a30 = 0;
                $de31a60 = 0;
                $de61a90 = 0;
                $de91a180 = 0;
                $de181a360 = 0;
                $masDe360 = 0;

                $dias = intval($dato['diaFin2']);
                $ptotal += $valor; //total del padre
                $pptotal += $valor;

                if ($dias <= 0) {
                    $d0dias = $valor;
                    $pd0dias += $valor;
                    $ppd0dias += $valor;
                } else if ($dias > 0 && $dias <= 30) {
                    $de1a30 = $valor;
                    $pde1a30 += $valor;
                    $ppde1a30 += $valor;
                } else if ($dias > 30 && $dias <= 60) {
                    $de31a60 = $valor;
                    $pde31a60 += $valor;
                    $ppde31a60 += $valor;
                } else if ($dias > 60 && $dias <= 90) {
                    $de61a90 = $valor;
                    $pde61a90 += $valor;
                    $ppde61a90 += $valor;
                } else if ($dias > 90 && $dias <= 180) {
                    $de91a180 = $valor;
                    $pde91a180 += $valor;
                    $ppde91a180 += $valor;
                } else if ($dias > 180 && $dias <= 360) {
                    $de181a360 = $valor;
                    $pde181a360 += $valor;
                    $ppde181a360 += $valor;
                } else {
                    $masDe360 = $valor;
                    $pmasDe360 += $valor;
                    $ppmasDe360 += $valor;
                }



                $arrOut[$index]['cartera'] = (($ptotal != 0) ? esMoneda2dec($ptotal) : '');
                $arrOut[$index]['totalDeuda'] = (($ptotal != 0) ? esMoneda2dec($ptotal) : '');
                $arrOut[$index]['porVencer'] = (($pd0dias != 0) ? esMoneda2dec($pd0dias) : '');
                $arrOut[$index]['de1a30'] = (($pde1a30 != 0) ? esMoneda2dec($pde1a30) : '');
                $arrOut[$index]['de31a60'] = (($pde31a60 != 0) ? esMoneda2dec($pde31a60) : '');
                $arrOut[$index]['de61a90'] = (($pde61a90 != 0) ? esMoneda2dec($pde61a90) : '');
                $arrOut[$index]['de91a180'] = (($pde91a180 != 0) ? esMoneda2dec($pde91a180) : '');
                $arrOut[$index]['de181a360'] = (($pde181a360 != 0) ? esMoneda2dec($pde181a360) : '');
                $arrOut[$index]['masDe360'] = (($pmasDe360 != 0) ? esMoneda2dec($pmasDe360) : '');




                $arrOut[0]['cartera'] = (($pptotal != 0) ? esMoneda2dec($pptotal) : '');
                $arrOut[0]['totalDeuda'] = (($pptotal != 0) ? esMoneda2dec($pptotal) : '');
                $arrOut[0]['porVencer'] = (($ppd0dias != 0) ? esMoneda2dec($ppd0dias) : '');
                $arrOut[0]['de1a30'] = (($ppde1a30 != 0) ? esMoneda2dec($ppde1a30) : '');
                $arrOut[0]['de31a60'] = (($ppde31a60 != 0) ? esMoneda2dec($ppde31a60) : '');
                $arrOut[0]['de61a90'] = (($ppde61a90 != 0) ? esMoneda2dec($ppde61a90) : '');
                $arrOut[0]['de91a180'] = (($ppde91a180 != 0) ? esMoneda2dec($ppde91a180) : '');
                $arrOut[0]['de181a360'] = (($ppde181a360 != 0) ? esMoneda2dec($ppde181a360) : '');
                $arrOut[0]['masDe360'] = (($ppmasDe360 != 0) ? esMoneda2dec($ppmasDe360) : '');




                array_push($arrOut, [
                    'cedula' => $dato['cedula'],
                    'nombreCli' => $dato['nombreCli'],
                    'fecha' => $dato['fecha'],
                    'cantDias' => $dato['cantDias'],
                    'fvence' => $dato['fechaFinal'],
                    'concepto' => $dato['concepto'],
                    'cartera' => (($dato['valor'] != 0) ? esMoneda2dec($dato['valor']) : ''),
                    'sucursal' => $dato['sucursal'],
                    'factura' => $dato['factura'],
                    'totalDeuda' => (($dato['valor'] != 0) ? esMoneda2dec($dato['valor']) : ''),
                    'porVencer' => (($d0dias != 0) ? esMoneda2dec($d0dias) : ''),
                    'de1a30' => (($de1a30 != 0) ? esMoneda2dec($de1a30) : ''),
                    'de31a60' => (($de31a60 != 0) ? esMoneda2dec($de31a60) : ''),
                    'de61a90' => (($de61a90 != 0) ? esMoneda2dec($de61a90) : ''),
                    'de91a180' => (($de91a180 != 0) ? esMoneda2dec($de91a180) : ''),
                    'de181a360' => (($de181a360 != 0) ? esMoneda2dec($de181a360) : ''),
                    'masDe360' => (($masDe360 != 0) ? esMoneda2dec($masDe360) : ''),
                    'type' => 'h'
                ]);
            }


            $A = $dato['cedula'];
        }


        return $arrOut;
    }



    //
}
