<?php
/* clase = FrmListadoAnalisisDeProveedores */

namespace App\Http\Controllers\cuentasPorPagar\informes;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AnalisisDeudaProvedorController extends Controller
{

    public function viewInformeAnalisisDeudaProvedor()
    {
        cambioBaseDatos();

        return view('cuentasPorPagar.informes.analisisDeudaProvedor.indexAnalisisDeudaProvedor');
    }


    public function infAnalisisDeudaProvedor(Request $request)
    {


        if ($request->selectIdTerceros == null || $request->selectIdTerceros == '') {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
             Por favor Elige Un Proveedor. 
          </div>";
        }

        $datos = $this->consultaAnalisisDeudaProvedor($request);

       

        if ($datos == null) {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
             No hay datos para Mostrar. 
          </div>";
        }

        // return $datos; 

        return view('cuentasPorPagar.informes.analisisDeudaProvedor.tablaAnalisisDeudaProvedor', compact('datos'));
    }


    public function consultaAnalisisDeudaProvedor($request)
    {
        cambioBaseDatos();
        $empresa = session('Empresa');
        $fechaini = $request->fechaInicial;
        $fechafin = $request->fechaFinal;
        $tercero = $request->selectIdTerceros;

        $datosRow = collect();
        $comprobante1 = vTipoComprobante(1);
        $comprobante3 = vTipoComprobante(3);
        $comprobante7 = vTipoComprobante(7);
        $comprobante10 = vTipoComprobante(10);
        $aprobado = 'A';

        /* ***** Relacion de facturas y notas creditos */
        $sql = "SELECT A.*,B.ComStTipoMov FROM PROVEEDORES A 
                INNER JOIN COMPROBANTES B ON (A.PrvIdStEmpresa = B.comempr AND A.PrvIdStComprobante = B.comcodi) 
                WHERE (PrvIdStEmpresa = '$empresa' AND PrvIdStPeriodoAplicacion = '1' AND PrvDaFechaCompra <= '$fechafin' AND 
                PrvIdStProveedor = '$tercero') ORDER BY PrvDaFechaCompra";




        /* ****** EGRESOS DE BANCOS Y DE CAJA (Pagos de facturas) - notas debitos proveedores */
        $sql2 = "SELECT A.*,B.*, C.comnomb,D.ComIdStDocumentoSoporte FROM PAGOS A 
                INNER JOIN MOVPAGOS B ON (A.PprIdStEmpresa = B.MprIdStEmpresa AND A.PprIdStComprobante = B.MprIdStComprobante AND A.PprIdInDocumento = B.MprIdInDocumento) 
                INNER JOIN COMPROBANTES C ON(B.MprIdStEmpresa = C.comempr AND B.MprIdStComprobanteCompra = C.comcodi) 
                INNER JOIN COMPRAS D ON(B.MprIdStEmpresa = D.ComIdStEmpresa AND B.MprIdStComprobanteCompra = D.ComIdStComprobante AND B.MprIdStDocumentoCompra = D.ComIdStDocumento) 
                WHERE (A.PprIdStEmpresa = '$empresa' 
                AND (A.PprIdStTipoComprobante = '$comprobante1' OR A.PprIdStTipoComprobante = '$comprobante3' OR A.PprIdStTipoComprobante = '$comprobante10') 
                AND PprDaFechaPago <='$fechafin' AND (A.PprIdStProveedor = '$tercero' OR B.MprIdStProveedor = '$tercero') AND  PprStEstadoPago = '$aprobado') 
                ORDER BY PprDaFechaPago,PprIdStComprobante,PprIdInDocumento";




        /* EGRESOS DE CAJA MENOR */

        $sql3 = "SELECT A.*,B.McmInValor,B.McmStDescripcion,B.McmIdInConceptoProveedor,B.McmIdStDocumentoCompra, C.comnomb,D.ComIdStDocumentoSoporte,B.McmIdInConceptoProveedor FROM CAJAMENOR A 
            INNER JOIN MOVCAJAMENOR B ON (A.CmeIdStEmpresa = B.McmIdStEmpresa AND A.CmeIdInCaja = B.McmIdInCaja AND A.CmeStComprobante = B.McmIdStComprobante AND A.CmeIdInDocumento = B.McmIdInDocumento) 
            INNER JOIN COMPROBANTES C ON(B.McmIdStEmpresa = C.comempr AND B.McmIdStComprobanteCompra = C.comcodi) 
            INNER JOIN COMPRAS D ON(B.McmIdStEmpresa = D.ComIdStEmpresa AND B.McmIdStComprobanteCompra = D.ComIdStComprobante AND B.McmIdStDocumentoCompra = D.ComIdStDocumento AND A.CmeIdStProveedor = D.ComIdStProveedor) 
            WHERE (A.CmeIdStEmpresa = '$empresa' AND CmeDaFechaDoc <='$fechafin' AND 
            A.CmeIdStProveedor = '$tercero' AND (CmeStEstadoRegistro is null or CmeStEstadoRegistro = '$aprobado')) 
            ORDER BY CmeDaFechaDoc,CmeStComprobante,CmeIdInDocumento";


        /* ****** Devoluciones en Compras */

        $sql4 = "SELECT A.* FROM COMPRAS A WHERE (A.ComIdStEmpresa = '$empresa' AND (A.ComIdStTipoComprobante = '$comprobante7') AND 
            ComDaFechaFactura <='$fechafin' AND A.ComIdStProveedor = '$tercero' AND ComStEstadoCompra = '$aprobado')
            ORDER BY ComDaFechaFactura";

        $datosConsulta = DB::select($sql);
        $datosConsulta2 = DB::select($sql2);
        $datosConsulta3 = DB::select($sql3);
        $datosConsulta4 = DB::select($sql4);




        $vSaldoIni = 0;

        if ($datosConsulta != null) {

            foreach ($datosConsulta as $datos) {

                $vFecha = $datos->PrvDaFechaCompra;
                if ($vFecha < $fechaini) {
                    $vSaldoIni = $vSaldoIni + $datos->PrvInValor;
                } else {
                    $dNombre = '';
                    $dfactura = '';

                    if ($datos->ComStTipoMov == vTipoComprobante(11)) {
                        $dNombre = 'Nota Credito No. ' . $datos->PrvIdStDocumento;
                        $dfactura = $datos->PrvIdStDocumento;
                    } else {
                        $dNombre = 'Factura Compra No: ' . $datos->PrvStFactura . ' Doct.Interno No. ' . $datos->PrvIdStDocumento;
                        $dfactura = $datos->PrvStFactura;
                    }

                    $datosRow->push(
                        [
                            'dFecha' => $datos->PrvDaFechaCompra,
                            'dFechaMos' => $datos->PrvDaFechaCompra,
                            'dConcepto' => $datos->PrvIdInConceptoProveedores,
                            'dDebitos' => '',
                            'dvCreditos' => $datos->PrvInValor,
                            'dDocumento' => $datos->PrvIdStDocumento,
                            'dNombre' => $dNombre,
                            'dFactura' => $dfactura,
                            'type' => 'p'
                        ]

                    );
                }
            }
        }



        if ($datosConsulta2 != null) {

            foreach ($datosConsulta2 as $datos) {

                $vFecha = $datos->PprDaFechaPago;
                if ($vFecha < $fechaini) {
                    $vSaldoIni = $vSaldoIni - $datos->MprInValor;
                } else {
                    $dNombre = '';

                    if ($datos->PprIdStTipoComprobante == vTipoComprobante(1)) {
                        $dNombre = 'Egreso de Banco No. ' . $datos->PprIdInDocumento;
                    } else {
                        if ($datos->PprIdStTipoComprobante == vTipoComprobante(10)) {
                            $dNombre = 'Nota Debito No. ' . $datos->PprIdInDocumento;
                        } else {
                            $dNombre = 'Egreso de Caja No. ' . $datos->PprIdInDocumento;
                        }
                    }

                    $datosRow->push(
                        [
                            'dFecha' => $datos->PprDaFechaPago,
                            'dFechaMos' => $datos->PprDaFechaPago,
                            'dConcepto' => $datos->MprIdInConceptoProveedor,
                            'dDebitos' => $datos->MprInValor,
                            'dvCreditos' => '',
                            'dDocumento' => $datos->MprIdStDocumentoCompra,
                            'dNombre' => $dNombre,
                            'dFactura' => $datos->PprIdInDocumento,
                            'type' => 'p'
                        ]

                    );
                }
            }
        }



        if ($datosConsulta3 != null) {

            foreach ($datosConsulta3 as $datos) {

                $vFecha = $datos->CmeDaFechaDoc;
                if ($vFecha < $fechaini) {
                    $vSaldoIni = $vSaldoIni - $datos->McmInValor;
                } else {

                    $datosRow->push(
                        [
                            'dFecha' => $datos->CmeDaFechaDoc,
                            'dFechaMos' => $datos->CmeDaFechaDoc,
                            'dConcepto' => $datos->McmIdInConceptoProveedor,
                            'dDebitos' => $datos->McmInValor,
                            'dvCreditos' => '',
                            'dDocumento' => $datos->McmIdStDocumentoCompra,
                            'dNombre' => 'Egreso de Caja Menor No. ' . $datos->CmeIdInDocumento . '- ' . $datos->McmStDescripcion . ' ' . $datos->ComNomb . ' Número ' . $datos->ComIdStDocumentoSoporte . ' Concepto ' . $datos->McmIdInConceptoProveedor,
                            'dFactura' => $datos->CmeIdInDocumento,
                            'type' => 'p'
                        ]

                    );
                }
            }
        }



        if ($datosConsulta4 != null) {

            foreach ($datosConsulta4 as $datos) {

                $vFecha = $datos->ComDaFechaFactura;
                if ($vFecha < $fechaini) {
                    $vSaldoIni = $vSaldoIni - $datos->ComInValor - $datos->ComInValorDescuento + $datos->ComInValorIva;
                } else {

                    $vdebitos = 0;

                    if ($datos->ComStRetencionAsumida == 1) {
                        $vdebitos = $datos->ComInValor - $datos->ComInValorDescuento + $datos->ComInValorIva;
                    } else {
                        $vdebitos = $datos->ComInValor - $datos->ComInValorDescuento + $datos->ComInValorIva - $datos->ComInValorRetencion;
                    }

                    $datosRow->push(
                        [
                            'dFecha' => $datos->ComDaFechaFactura,
                            'dFechaMos' => $datos->ComDaFechaFactura,
                            'dConcepto' => $datos->ComIdInConceptoProveedores,
                            'dDebitos' => $datos->McmInValor,
                            'dvCreditos' => $vdebitos,
                            'dDocumento' => $datos->ComIdStDocumentoDevol,
                            'dNombre' => 'Devoluciones en Compra No. ' . $datos->ComIdStDocumento,
                            'dFactura' => $datos->ComIdStDocumento,
                            'type' => 'p'
                        ]

                    );
                }
            }
        }

        if ($datosRow->isEmpty()) {

            if ($vSaldoIni == 0) {

                return null;
            } else {
                $arrEnd = collect();

                $arrEnd->push(
                    [
                        'dFactura' => '',
                        'dFecha' => $fechaini,
                        'dDescri' => "SALDO DEL PROVEEDOR",
                        'dConcepto' => '',
                        'dTotal' => esMoneda2dec($vSaldoIni),
                        'dDebitos' => '',
                        'dvCreditos' => '',
                        'vSaldo' => esMoneda2dec($vSaldoIni),
                        'dDocumento' => '',
                        'type' => 'p'
                    ]

                );




                return  $arrEnd;
            }
        } else {
            $datosordenados =  $datosRow->sortBy(function ($col = 'dFecha') {
                return $col;
            })->values()->all();

            $arrEnd = collect();



            foreach ($datosordenados as $dat) {

                $debito= (is_numeric($dat['dDebitos']))?$dat['dDebitos']:0;
                $cretido=(is_numeric($dat['dvCreditos']))?$dat['dvCreditos']:0;

                $saldo=$vSaldoIni -  $debito + $cretido;

                $arrEnd->push(
                    [
                        'dFactura' => $dat['dFactura'],
                        'dFecha' => $dat['dFechaMos'],
                        'dDescri' => $dat['dNombre'],
                        'dConcepto' => $dat['dConcepto'],
                        'dTotal' => esMoneda2dec($vSaldoIni) ,
                        'dDebitos' =>esMoneda2dec($debito) ,
                        'dvCreditos' => esMoneda2dec($cretido) ,
                        'vSaldo' =>  esMoneda2dec($saldo),
                        'dDocumento' => $dat['dDocumento'],
                        'type' => 'p'
                    ]

                );

                $vSaldoIni =$saldo;
            }

            return  $arrEnd;
        }










        /*    $Rowtabla = [
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
 */





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
