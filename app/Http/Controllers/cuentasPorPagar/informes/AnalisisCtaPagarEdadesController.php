<?php
/* clase = FrmListadoDeProveedores */

namespace App\Http\Controllers\cuentasPorPagar\informes;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AnalisisCtaPagarEdadesController extends Controller
{

    public function viewInformeAnalisisCtPaEdades()
    {
        cambioBaseDatos();

        return view('cuentasPorPagar.informes.analisisCtaPagarEdades.indexAnalisisCtaPagEdades');
    }

    public function infAnalisisCtPaEdades(Request $request)
    {

        $datos = $this->consultaAnalisisCtPaEdades($request);
        if ($datos == null ) {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
             No hay datos para Mostrar. 
          </div>";
        }

        // return $datos; 

        return view('cuentasPorPagar.informes.analisisCtaPagarEdades.tablaAnalisisCtaPagEdades', compact('datos'));
    }

    public function consultaAnalisisCtPaEdades($request)
    {
        cambioBaseDatos();
        $empresa = session('Empresa');
        $fecha = $request->fecha;
        $filTercero = ($request->selectIdTerceros != '') ?  'AND PrvIdStProveedor=' . $request->selectIdTerceros : '';
        $sql = '';
        $datos = collect();
        $comprobante1=vTipoComprobante(1);
        $comp3=vTipoComprobante(3);
        $comp10=vTipoComprobante(10);




        $sql = "SELECT A.*,B.CliStNombreCliente FROM PROVEEDORES A 
        INNER JOIN CLIENTES B ON (A.PrvIdStEmpresa = B.CliEmpr AND A.PrvIdStProveedor = B.CliNit) 
        WHERE PrvIdStEmpresa = '$empresa' AND PrvIdStPeriodoAplicacion = '1' AND PrvDaFechaCompra <= '$fecha' AND PrvInValor > PrvInAbono $filTercero
        ORDER BY PrvIdStProveedor,PrvDaFechaCompra,PrvIdStComprobante,PrvIdStDocumento,PrvIdInConceptoProveedores";

       /* **** Busqueda de pagos del perido actual con corte a la fecha ********************* */
       /*  vFiltro = " AND PprIdStProveedor = '" & TxtTercero.Text & "' "
        If Trim(vParametros(56)) <> Empty Then 'Si hay una fecha de corte por parametros */
      /*   $sql2="SELECT A.*,B.MprIdStComprobanteCompra,B.MprIdStDocumentoCompra,B.MprInValor,B.MprIdInConceptoProveedor,B.MprIdStProveedor 
        FROM PAGOS A 
        INNER JOIN MOVPAGOS B ON (A.PprIdStEmpresa = B.MprIdStEmpresa AND A.PprIdStComprobante = B.MprIdStComprobante AND A.PprIdInDocumento = B.MprIdInDocumento) 
        WHERE (A.PprIdStEmpresa = '$empresa' AND (A.PprIdStTipoComprobante = '$comprobante1' OR A.PprIdStTipoComprobante = '$comp3' 
        OR A.PprIdStTipoComprobante = '$comp10') AND 
        PprDaFechaPago BETWEEN  '$fecha' AND '" & Format(DTfechaI.Value, FormatoFecha) & "'  AND PprStEstadoPago ='" & EAprobado & "'" & vFiltro & ") "
 */


        $datosConsulta = DB::select($sql);



        if ($datosConsulta == null) {

            return null;
        }



        $rowTablaVacio = [
            'cedula' => '',
            'descripción' => '',
            'concepto' => '',
            'totalDeuda' => '',
            'de1a30' => '',
            'de31a60' => '',
            'de61a90' => '',
            'de91a180' => '',
            'de181a360' => '',
            'masDe360' => '',
            'type' => 'vacio'
        ];


        $Rowtabla = [
            'cedula' => '',
            'descripción' => '',
            'concepto' => '',
            'totalDeuda' => '',
            'de1a30' => '',
            'de31a60' => '',
            'de61a90' => '',
            'de91a180' => '',
            'de181a360' => '',
            'masDe360' => '',
            'type' => 'vacio'
        ];

        $datos->push($Rowtabla, $rowTablaVacio);


        $datos->push($Rowtabla);

        $datosOrds = $this->ordenarDatos($datosConsulta);

        return $datosOrds;


        
        foreach ($datosOrds as $dat) {
            $datos->push($dat);
        }



        return $datos;


        /*  $sql = "SELECT A.*,B.CliStNombreCliente FROM CARTERAANUAL A 
        INNER JOIN CLIENTES B ON (A.PrvIdStEmpresa = B.CliEmpr AND A.PrvIdStProveedor = B.CliNit) 
        WHERE PrvIdStEmpresa = '$empresa' AND CarIdInPeriodoAno = '$fecha' AND CarIdInPeriodoMes = 12 AND 
        PrvIdStPeriodoAplicacion = '1' $filTercero
        (PrvIdStComprobante = '" & vParametros(3) & "' Or PrvIdStComprobante = '" & vParametros(12) & "') AND PrvInValor > PrvInAbono 
        ORDER BY PrvIdStProveedor,PrvDaFechaCompra"; */


        /*         $ql2="SELECT A.*,B.MprIdStComprobanteCompra,B.MprIdStDocumentoCompra,B.MprInValor,B.MprIdInConceptoProveedor,B.MprIdStProveedor 
        FROM PAGOS A INNER JOIN MOVPAGOS B ON (A.PprIdStEmpresa = B.MprIdStEmpresa 
        AND A.PprIdStComprobante = B.MprIdStComprobante AND A.PprIdInDocumento = B.MprIdInDocumento) 
        WHERE (A.PprIdStEmpresa = '$empresa' AND (A.PprIdStTipoComprobante = '" & vTipoComprobante(1) & "' OR A.PprIdStTipoComprobante = '" & vTipoComprobante(3) & "' OR A.PprIdStTipoComprobante = '" & vTipoComprobante(10) & "') AND " & _
               "PprDaFechaPago <= '" & Format(DTfechaI.Value, FormatoFecha) & "'  AND PprStEstadoPago = '" & EAprobado & "'" & vFiltro & " */
    }




    public function ordenarDatos($datos, $in = false)
    {

        $arr = collect();



        $ptotal = 0;
        $pd0dias = 0;
        $pde1a30 = 0;
        $pde31a60 = 0;
        $pde61a90 = 0;
        $pde91a180 = 0;
        $pde181a360 = 0;
        $pmasDe360 = 0;
        $pdias = 0;




        foreach ($datos as $datosC) {
            $phoy = date("Y-m-d");
            $pfechaFin = date("Y-m-d", strtotime($datosC->PrvDaFechaCompra . "+ $datosC->PrvInDias days"));





            $pdias =  diffFechas($pfechaFin, $phoy); //$datosC->PrvInDias; //


            $pvalor =  $datosC->PrvInValor - $datosC->PrvInAbono;

            $ptotal += $pvalor;

            if ($pdias <= 0) {
                $pd0dias += $pvalor;
            } else if ($pdias > 0 && $pdias <= 30) {
                $pde1a30 += $pvalor;
            } else if ($pdias > 30 && $pdias <= 60) {
                $pde31a60 += $pvalor;
            } else if ($pdias > 60 && $pdias <= 90) {
                $pde61a90 += $pvalor;
            } else if ($pdias > 90 && $pdias <= 180) {
                $pde91a180 += $pvalor;
            } else if ($pdias > 180 && $pdias <= 360) {
                $pde181a360 += $pvalor;
            } else {
                $pmasDe360 += $pvalor;
            }


            /*  */
            $total = 0;
            $d0dias = 0;
            $de1a30 = 0;
            $de31a60 = 0;
            $de61a90 = 0;
            $de91a180 = 0;
            $de181a360 = 0;
            $masDe360 = 0;
            $dias = 0;

            foreach ($datos as $datos2) {
                if ($datosC->PrvIdStProveedor == $datos2->PrvIdStProveedor) {

                    $hoy = date("Y-m-d");
                    $fechaFin = date("Y-m-d", strtotime($datos2->PrvDaFechaCompra . "+ $datos2->PrvInDias days"));





                    $dias =  diffFechas($fechaFin, $hoy); //$datosC->PrvInDias; //

                    $valor = $datos2->PrvInValor - $datos2->PrvInAbono;

                    $total += $valor;

                    if ($dias <= 0) {
                        $d0dias += $valor;
                    } else if ($dias > 0 && $dias <= 30) {
                        $de1a30 += $valor;
                    } else if ($dias > 30 && $dias <= 60) {
                        $de31a60 += $valor;
                    } else if ($dias > 60 && $dias <= 90) {
                        $de61a90 += $valor;
                    } else if ($dias > 90 && $dias <= 180) {
                        $de91a180 += $valor;
                    } else if ($dias > 180 && $dias <= 360) {
                        $de181a360 += $valor;
                    } else {
                        $masDe360 += $valor;
                    }
                }
            }

            $arr->push([
                'cedula' => $datosC->PrvIdStProveedor,
                'descripción' => $datosC->CliStNombreCliente,
                'concepto' =>  '',
                'fechaPrv' => '',
                'cantDias' => '',
                'vencimiento' => '',
                'totalDeuda' => (($total != 0) ? esMoneda2dec($total) : ''),
                'porVencer' => (($d0dias != 0) ? esMoneda2dec($d0dias) : ''),
                'de1a30' => (($de1a30 != 0) ? esMoneda2dec($de1a30) : ''),
                'de31a60' => (($de31a60 != 0) ? esMoneda2dec($de31a60) : ''),
                'de61a90' => (($de61a90 != 0) ? esMoneda2dec($de61a90) : ''),
                'de91a180' => (($de91a180 != 0) ? esMoneda2dec($de91a180) : ''),
                'de181a360' => (($de181a360 != 0) ? esMoneda2dec($de181a360) : ''),
                'masDe360' => (($masDe360 != 0) ? esMoneda2dec($masDe360) : ''),

                'type' => 'p'
            ]);
        }


        $arr2 = $arr->unique('cedula')->values();



        $arr3 = collect();

        $arr3->push([
            'cedula' => '',
            'descripción' => 'TOTALES',
            'concepto' =>  '',
            'fechaPrv' => '',
            'cantDias' => '',
            'vencimiento' => '',
            'totalDeuda' =>  esMoneda2dec($ptotal),
            'porVencer' =>  esMoneda2dec($pd0dias),
            'de1a30' =>  esMoneda2dec($pde1a30),
            'de31a60' =>  esMoneda2dec($pde31a60),
            'de61a90' =>  esMoneda2dec($pde61a90),
            'de91a180' =>  esMoneda2dec($pde91a180),
            'de181a360' => esMoneda2dec($pde181a360),
            'masDe360' => esMoneda2dec($pmasDe360),

            'type' => 'p-2'
        ]);




        foreach ($arr2 as $datoAr) {

            $arr3->push($datoAr);





            foreach ($datos as $datosC) {

                $total = 0;
                $d0dias = 0;
                $de1a30 = 0;
                $de31a60 = 0;
                $de61a90 = 0;
                $de91a180 = 0;
                $de181a360 = 0;
                $masDe360 = 0;




                if ($datoAr['cedula'] == $datosC->PrvIdStProveedor) {
                    $hoy = date("Y-m-d");

                    $fechaFin = date("Y-m-d", strtotime($datosC->PrvDaFechaCompra . "+ $datosC->PrvInDias days"));
                    $dias =  diffFechas($fechaFin, $hoy);

                    $valor = $datosC->PrvInValor - $datosC->PrvInAbono;


                    if ($dias <= 0) {
                        $d0dias += $valor;
                    } else if ($dias > 0 && $dias <= 30) {
                        $de1a30 += $valor;
                    } else if ($dias > 30 && $dias <= 60) {
                        $de31a60 += $valor;
                    } else if ($dias > 60 && $dias <= 90) {
                        $de61a90 += $valor;
                    } else if ($dias > 90 && $dias <= 180) {
                        $de91a180 += $valor;
                    } else if ($dias > 180 && $dias <= 360) {
                        $de181a360 += $valor;
                    } else {
                        $masDe360 += $valor;
                    }

                    $arr3->push([
                        'cedula' => $datosC->PrvIdStProveedor,
                        'descripción' => 'Factura No. ' . $datosC->PrvStFactura,
                        'concepto' => $datosC->PrvIdInConceptoProveedores,
                        'fechaPrv' => $datosC->PrvDaFechaCompra,
                        'cantDias' => $datosC->PrvInDias,
                        'vencimiento' => $fechaFin,
                        'totalDeuda' => esMoneda2dec($valor),
                        'porVencer' => (($de1a30 != 0) ? esMoneda2dec($de1a30) : ''),
                        'de1a30' => (($d0dias != 0) ? esMoneda2dec($d0dias) : ''),
                        'de31a60' => (($de31a60 != 0) ? esMoneda2dec($de31a60) : ''),
                        'de61a90' => (($de61a90 != 0) ? esMoneda2dec($de61a90) : ''),
                        'de91a180' => (($de91a180 != 0) ? esMoneda2dec($de91a180) : ''),
                        'de181a360' => (($de181a360 != 0) ? esMoneda2dec($de181a360) : ''),
                        'masDe360' => (($masDe360 != 0) ? esMoneda2dec($masDe360) : ''),
                        'type' => 'h'
                    ]);
                }
            }
        }




        return $arr3;
    }
}
