<?php

namespace App\Http\Controllers\cartera\informes;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\FormaPago;

class AnalisisCarteraPorClienteController extends Controller
{


    public function viewInformeAnalisisCarteraCliente()
    {
        cambioBaseDatos();
        $empresa = session('Empresa');
        $conCartera = DB::select("SELECT * FROM CONCEPTOSCARTERA WHERE CcaIdStEmpresa = '$empresa'");

        return view('cartera.informes.analisisCarteraPorCliente.indexAnalisisCarteraCliente', compact('conCartera'));
    }


    public function infAnalisisCarteraCliente(Request $request)
    {


        if ($request->selectIdTerceros == null || $request->selectIdTerceros == '') {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
             Por favor Elige Un Proveedor. 
          </div>";
        }

        $datos = $this->consultaAnalisisCarteraCliente($request);

        

        if ($datos == null) {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
             No hay datos para Mostrar. 
          </div>";
        }

        return view('cartera.informes.analisisCarteraPorCliente.tablaAnalisisCarteraCliente', compact('datos'));
    }


    public function consultaAnalisisCarteraCliente($request)
    {
        cambioBaseDatos();
        $empresa = session('Empresa');
        $fechaini = $request->fechaInicial;
        $fechafin = $request->fechaFinal;
        $tercero = $request->selectIdTerceros;
        $conceptoCartera = ($request->selectConceptoCartera != '') ? ' AND CarIdInConceptoCartera=' . $request->selectConceptoCartera : ''; //vFiltro2
        $aprobado = 'A';

        $datosRow = collect();
        $comprobante6 = vTipoComprobante(6);
        $aprobado = 'A';



        /* ***** **** SE LE QUITO EL COMPROBANTE */
        $sql = "SELECT A.*, B.CcaStDescripcion, C.VenStPrefijoNumeracion,C.VenIdStTipoComprobante,N.SucStNombreSucursal 
        FROM CARTERA A 
        INNER JOIN CONCEPTOSCARTERA B ON(B.CcaIdStEmpresa = A.CarIdStEmpresa AND B.CcaIdInConceptoCartera = A.CarIdInConceptoCartera)
        INNER JOIN VENTAS C ON(C.VenIdStEmpresa = A.CarIdStEmpresa AND C.VenIdStComprobante = A.CarIdStComprobante AND C.VenIdInDocumento = A.CarIdInDocumento) 
        LEFT OUTER JOIN SUCURSALCLIENTES N ON (A.CarIdStEmpresa = N.SucIdStEmpresa AND A.CarIdStCliente = N.SucIdStCliente AND A.CarStSucursalClientes = N.SucIdInSucursal) 
        WHERE A.CarIdStEmpresa = '$empresa' AND A.CarIdStPeriodoAplicativo = '3' AND A.CarDaFechaFactura <= '$fechafin' AND 
        A.CarIdStCliente = '$tercero' $conceptoCartera ORDER BY CarDaFechaFactura";






        /* ******  '****** recibos de caja - pagos de facturas */
        $filtroCar2 = ($request->selectConceptoCartera != '') ? ' AND K.MreIdInConceptoCartera=' . $request->selectConceptoCartera : '';
        $sql2 = "SELECT A.*,K.*, M.CcaStDescripcion,C.comNomb,D.VenInFactura,D.VenStPrefijoNumeracion 
        FROM RECIBOCAJA A 
        INNER JOIN MOVRECIBOCAJA K ON (A.RecIdStEmpresa =K.MreIdStEmpresa AND A.RecIdStComprobante =K.MreIdComprobante AND 
        A.RecIdInDocumento = K.MreIdInDocumento $filtroCar2) 
        INNER JOIN CONCEPTOSCARTERA M ON(M.CcaIdStEmpresa = K.MreIdStEmpresa AND M.CcaIdInConceptoCartera = K.MreIdInConceptoCartera) 
        INNER JOIN COMPROBANTES C ON(K.MreIdStEmpresa = C.comempr AND K.MreIdStComprobanteVenta = C.comcodi) 
        INNER JOIN VENTAS D ON(K.MreIdStEmpresa = D.VenIdStEmpresa AND K.MreIdStComprobanteVenta = D.VenIdStComprobante AND K.MreIdStDocumentoVenta = D.VenIdInDocumento) 
        WHERE (A.RecIdStEmpresa = '$empresa' AND RecDaFechaRecibo <='$fechafin' AND 
        A.RecIdStCliente = '$tercero' AND RecInTipoRecibo <> 1 AND RecStEstadoRegistro = '$aprobado') ORDER BY RecDaFechaRecibo";



        /* ****** *** Devoluciones en Ventas ************* */

        $vFiltro = ($request->selectConceptoCartera != '') ? ' AND K.MveIdInConceptoCartera=' . $request->selectConceptoCartera : '';

        $sql3 = "SELECT A.*, K.*,M.CcaStDescripcion,C.comNomb FROM VENTAS A 
        INNER JOIN MOVVENTAS K ON (A.VenIdInVentas = K.MveIdInVentas AND A.VenIdStEmpresa =K.MveIdStEmpresa $vFiltro) 
        INNER JOIN CONCEPTOSCARTERA M ON (K.MveIdStEmpresa = M.CcaIdStEmpresa AND K.MveIdInConceptoCartera = M.CcaIdInConceptoCartera) 
        INNER JOIN COMPROBANTES C ON(A.VenIdStEmpresa = C.comempr AND A.VenIdStComprobantePedido = C.comcodi) 
        WHERE (A.VenIdStEmpresa = '$empresa' AND A.VenIdStTipoComprobante = '$comprobante6' AND VenStCruzaaCartera = '1' AND 
        VenDaFechaDoc <='$fechafin' AND VenStEstadoRegistro = '$aprobado' AND VenIdStCliente ='$tercero') 
        ORDER BY VenDaFechaDoc,VenIdStComprobante,VenIdInDocumento";

        /*  */
        $datosConsulta = DB::select($sql);
        $datosConsulta2 = DB::select($sql2);
        $datosConsulta3 = DB::select($sql3);




        $vSaldoIni = 0;
        $vCreditos=0;


        if ($datosConsulta != null) {

            foreach ($datosConsulta as $datos) {

                $vFecha = $datos->CarDaFechaFactura;

                if ($vFecha < $fechaini) {
                    $vSaldoIni = $vSaldoIni + $datos->CarInValor;
                } else {
                    $dNombre = '';
                    $dfactura = '';

                    if ($datos->VenIdStTipoComprobante == vTipoComprobante(4)) {

                        if ($datos->CarInFactura != '') {
                            $dNombre = "Factura No. " . $datos->VenStPrefijoNumeracion . ' ' . $datos->CarInFactura;
                            $dfactura = $datos->CarInFactura;
                        } else {
                            $dNombre = "Factura No. " . $datos->CarIdInDocumento;
                            $dfactura = $datos->CarIdInDocumento;
                        }
                    } else {
                        $dNombre = 'Nota Debito No. ' . $datos->CarIdInDocumento;
                        $dfactura = $datos->CarIdInDocumento;
                    }

                    $datosRow->push(
                        [
                            'dFecha' => $datos->CarDaFechaFactura,
                            'dFechaMos' => $datos->CarDaFechaFactura,
                            'dConcepto' => $datos->CcaStDescripcion,
                            'sucursal' => $datos->SucStNombreSucursal,
                            'dDebitos' => $datos->CarInValor,
                            'dvCreditos' => '',
                            'dDocumento' => '',
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

                $vFecha = $datos->RecDaFechaRecibo;

                if ($vFecha < $fechaini) {
                    $vSaldoIni = $vSaldoIni - $datos->MreInValor;
                } else {
                    $dNombre = '';

                    if ($datos->RecIdStTipoComprobante == vTipoComprobante(2)) {

                        $dNombre = "Recibo de Caja No. " . $datos->RecIdInDocumento . " - " . $datos->MreStDescripcion . " " . $datos->comNomb . " Número " . $datos->VenStPrefijoNumeracion . ' ' . $datos->VenInFactura;
                    } else {

                        if ($datos->RecIdStTipoComprobante == vTipoComprobante(9)) {

                            $dNombre = "Nota Credito No. " . $datos->RecIdInDocumento . " - " . $datos->MreStDescripcion . " " . $datos->comNomb . " Número " . $datos->VenStPrefijoNumeracion . ' ' . $datos->VenInFactura;
                        } else {

                            $dNombre = "Ingreso a Banco No. " . $datos->RecIdInDocumento . " - " . $datos->MreStDescripcion . " " . $datos->comNomb . " Número " . $datos->VenStPrefijoNumeracion . ' ' . $datos->VenInFactura;
                        }
                    }

                    $datosRow->push(
                        [
                            'dFecha' => $datos->RecDaFechaRecibo,
                            'dFechaMos' => $datos->RecDaFechaRecibo,
                            'dConcepto' => $datos->CcaStDescripcion,
                            'sucursal' => '',
                            'dDebitos' => '',
                            'dvCreditos' => $datos->MreInValor,
                            'dDocumento' => '',
                            'dNombre' => $dNombre,
                            'dFactura' => $datos->RecIdInDocumento,
                            'type' => 'p'
                        ]

                    );
                }
            }
        }







        if ($datosConsulta3 != null) {

            $A = '';

            foreach ($datosConsulta3 as $datos) {



                $vFecha = $datos->VenDaFechaDoc;

                if ($vFecha < $fechaini) {
                    $vSaldoIni = $vSaldoIni - $datos->MveInValor;
                    if ($datos->VenInCopago > 0 || $datos->VenInCuotaModeradora > 0) {
                        if ($A != $datos->VenIdStComprobante . '-' . $datos->VenIdInDocumento) {
                            $vSaldoIni = $vSaldoIni - $datos->VenInCopago - $datos->VenInCuotaModeradora;
                        }
                    }
                } else {/* else */

                    $M = "p " . $datos->VenIdInDocumento . " p " . $datos->CcaStDescripcion;
                    $vCreditos = $datos->MveInValor - $datos->MveInDescuento - $datos->MveInValorReteFuente - $datos->MveInValorReteIva;

                    if ($datos->VenInCopago > 0 || $datos->VenInCuotaModeradora > 0) {
                        if ($A != $datos->VenIdStComprobante . '-' . $datos->VenIdInDocumento) {
                            $vCreditos =  $vCreditos - $datos->VenInCopago - $datos->VenInCuotaModeradora;
                        }
                    }
                    if ($datos->VenInValorPropina > 0) {
                        $vCreditos = $vCreditos + $datos->VenInValorPropina;
                    }

                    $dNombre = " Devolucion en Ventas No." . $datos->VenIdInDocumento . " - A " . $datos->comNomb . " Número " . $datos->VenStPrefijoNumeracion . " " . $datos->VenInFactura;


                    $datosRow->push(
                        [
                            'dFecha' => $datos->VenDaFechaDoc,
                            'dFechaMos' => $datos->VenDaFechaDoc,
                            'dConcepto' => $datos->CcaStDescripcion,
                            'sucursal' => '',
                            'dDebitos' => '',
                            'dvCreditos' => $vCreditos,
                            'dDocumento' => '',
                            'dNombre' => $dNombre,
                            'dFactura' => $datos->VenIdInDocumento,
                            'type' => 'p'
                        ]

                    );
                }

                $A = $datos->VenIdStComprobante . "-" . $datos->VenIdInDocumento;
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
                        'dDescrip' => "SALDO DEL PROVEEDOR",
                        'sucursal' => '',
                        'dConcepto' => '',
                        'dFecha' => $fechaini,
                        'saldoAnte'=>esMoneda2dec($vSaldoIni),
                        'dDebitos' => '',
                        'dvCreditos' => $vCreditos,
                        'nuevoSaldo' => esMoneda2dec($vSaldoIni),
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

                $debito = (is_numeric($dat['dDebitos'])) ? $dat['dDebitos'] : 0;
                $cretido = (is_numeric($dat['dvCreditos'])) ? $dat['dvCreditos'] : 0;

                $saldo = $vSaldoIni -  $debito + $cretido;
                
              
                $arrEnd->push(
                    [
                        'dFactura' => $dat['dFactura'],
                        'dDescrip' => $dat['dNombre'],
                        'sucursal' => $dat['sucursal'],
                        'dConcepto' => $dat['dConcepto'],
                        'dFecha' => $dat['dFechaMos'],
                        'saldoAnte'=>($vSaldoIni<0) ? esMoneda2dec($vSaldoIni*(-1)):esMoneda2dec($vSaldoIni),
                        'dDebitos' => esMoneda2dec($debito),
                        'dvCreditos' => esMoneda2dec($cretido),
                        'nuevoSaldo' =>($saldo<0) ? esMoneda2dec($saldo*(-1)):esMoneda2dec($saldo),
                        'type' => 'p'
                        
                        
                    ]
                );

                $vSaldoIni = $saldo;

               
            }

            return  $arrEnd;
        }


    }



}
