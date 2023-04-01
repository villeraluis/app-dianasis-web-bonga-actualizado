<?php

namespace App\Http\Controllers\inventarios\informes;

use App\Http\Controllers\Controller;
use App\Models\Cliente;
use App\Models\Comprobante;
use App\Models\FormaPago;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class InformeVentasController extends Controller
{
    public function viewVentaPeriodos()
    {
        cambioBaseDatos();
       
        $formaPagos = FormaPago::get();
        $comprobantes = Comprobante::where('ComStTipoMov', '11')->get();
    
        return view('inventarios.informes.ventasPeriodo.informesVentasPeriodo', compact('formaPagos', 'comprobantes'));
       


    }


   



    public function viewConsultaInforme(Request $request)
    {
        

        $dias=numDias($request->fechaInicial, $request->fechaFinal);

        if ($dias > 3100) {
            return "<div class='alert alert-danger m-2 col-11 text-center' role='alert'>
            El rango de fechas no puede superar  <b>30</b> días. 
          </div>";
        }else{
            $datos = $this->consultaInforme($request);
        }

        if ($datos == null && $request->fechaInicial == $request->fechaFinal) {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
            El dia <b>$request->fechaInicial</b> No hay datos para Mostrar. 
          </div>";
        }

        if ($datos == null && $request->fechaInicial != $request->fechaFinal) {
            return "<div  class='alert alert-primary  m-2 col-11 text-center' role='alert'>
            Entre las fechas: <b> $request->fechaInicial</b> Y <b>$request->fechaFinal </b>. No hay datos para Mostrar. 
          </div>";
        }

        return view('inventarios.informes.ventasPeriodo.tablaInformeVentasPeriodo', compact('datos'));
    }


    public function consultaInforme($request)
    {

        cambioBaseDatos();
        $venIdStEmpresa = session('Empresa');
        $VenIdStTipoComprobante = '11';
        $fechaInicial = $request->fechaInicial;
        $fechaFinal = $request->fechaFinal;
        $filtros = $this->fitroConsutaventasperiodo($request);


        /* $consulta = "SELECT A.* , F.FpaStDescripcion, C.CliStNombreCliente, V.CliStNombreCliente AS Vendedor,X.BodStDescripcion,K.*, M.PreStAbreviatura,M.PreStDescripcion,B.* 
                    FROM VENTAS A 
                    INNER JOIN FORMAPAGOS F ON(A.VenIdInFormaPago = F.FpaIdInFormaPago) 
                    INNER JOIN BODEGAS X ON (A.VenIdStEmpresa = X.BodIdStEmpresa AND A.VenIdInBodega = X.BodIdInBodega)
                    INNER JOIN CLIENTES C ON (A.VenIdStEmpresa = C.CliEmpr AND A.VenIdStCliente = C.CliNit) 
                    INNER JOIN CLIENTES V ON (A.VenIdStEmpresa = V.CliEmpr AND A.VenIdStVendedor = V.CliNit) 
                    INNER JOIN MOVVENTAS K ON (A.VenIdInVentas = K.MveIdInVentas AND A.VenIdStEmpresa =K.MveIdStEmpresa) 
                    INNER JOIN PRODUCTOS B ON (K.MveIdStEmpresa = B.ProIdStEmpresa AND K.MveIdInProducto = B.ProIdInProducto) 
                    INNER JOIN PRESENTACION M ON (K.MveIdStEmpresa = M.PreIdStEmpresa AND K.MveIdInUnidadVenta = M.PreIdInPresentacion)
                    WHERE (A.VenStEstadoRegistro='A' AND A.VenIdStEmpresa = '$venIdStEmpresa'  AND A.VenIdStTipoComprobante = '$VenIdStTipoComprobante' AND  VenDaFechaDoc 
                    BETWEEN '$fechaInicial' AND '$fechaFinal'  $filtros) ORDER BY VenIdInVentas,MveInItem"; //VenIdInVentas,MveInItem,VenDaFechaDoc
 */


        $consulta = "SELECT A.*,F.FpaStDescripcion,C.CliStNombreCliente,V.CliStNombreCliente AS Vendedor,X.BodStDescripcion,K.*,M.PreStAbreviatura,M.PreStDescripcion,B.*,L.scenomb,N.CarInDias
                    FROM VENTAS A
                    INNER JOIN FORMAPAGOS F ON(A.VenIdInFormaPago = F.FpaIdInFormaPago)
                    INNER JOIN BODEGAS X ON (A.VenIdStEmpresa = X.BodIdStEmpresa AND A.VenIdInBodega = X.BodIdInBodega)
                    INNER JOIN CLIENTES C ON (A.VenIdStEmpresa = C.CliEmpr AND A.VenIdStCliente = C.CliNit)
                    INNER JOIN CLIENTES V ON (A.VenIdStEmpresa = V.CliEmpr AND A.VenIdStVendedor = V.CliNit)
                    INNER JOIN MOVVENTAS K ON (A.VenIdInVentas = K.MveIdInVentas AND A.VenIdStEmpresa =K.MveIdStEmpresa)
                    INNER JOIN PRODUCTOS B ON (K.MveIdStEmpresa  = B.ProIdStEmpresa AND K.MveIdInProducto = B.ProIdInProducto)
                    INNER JOIN PRESENTACION M ON (K.MveIdStEmpresa  = M.PreIdStEmpresa AND K.MveIdInUnidadVenta = M.PreIdInPresentacion)
                    LEFT OUTER JOIN SCENTROS L ON (A.VenIdStEmpresa  = L.sceempr AND A.VenStCentroCosto = L.scecent AND A.VenStSubCentroCosto = L.scecodi)
                    LEFT OUTER JOIN CARTERA N
                    ON (A.VenIdStEmpresa  = N.CarIdStEmpresa AND A.VenIdStComprobante = N.CarIdStComprobante AND A.VenIdInDocumento = N.CarIdInDocumento)
                    WHERE (A.VenIdStEmpresa = '$venIdStEmpresa'  AND A.VenIdStTipoComprobante = '$VenIdStTipoComprobante' AND  VenDaFechaDoc 
                    BETWEEN '$fechaInicial' AND '$fechaFinal'  AND (VenStEstadoRegistro = 'A' or VenStEstadoRegistro = 'W')  $filtros) ORDER BY VenIdInVentas,MveInItem";;


        $datosConsulta = DB::select($consulta);

        if ($datosConsulta == null) {

            return null;
        }

        $datos = collect();

        foreach ($datosConsulta as $datosC) {

            $productos = collect();

            foreach ($datosConsulta as $datos2) {
                if ($datosC->VenIdInVentas == $datos2->VenIdInVentas) {
                    $productos->push([
                        'VenStPrefijoNumeracion' => $datos2->VenStPrefijoNumeracion,
                        'VenInFactura' => $datos2->VenInFactura,
                        'CliStNombreCliente' => $datos2->CliStNombreCliente,
                        'VenDaFechaDoc' => $datos2->VenDaFechaDoc,
                        'FpaStDescripcion' => $datos2->FpaStDescripcion,
                        'BodStDescripcion' => $datos2->BodStDescripcion,
                        'MveIdInProducto' => $datos2->MveIdInProducto,
                        'ProStReferencia' => $datos2->ProStReferencia,
                        'MveStDescripcion' => $datos2->MveStDescripcion,
                        'PreStDescripcion' => $datos2->PreStDescripcion,
                        'PreStAbreviatura' => $datos2->PreStAbreviatura,
                        'MveInCantidad' => $datos2->MveInCantidad,
                        'MveInPrecio' => $datos2->MveInPrecio,
                        'MveInValor' => $datos2->MveInValor,
                        'MveInDescuento' => $datos2->MveInDescuento,
                        'MveInValorIva' => $datos2->MveInValorIva,
                        'MveInValorRetefuente' => $datos2->MveInValorRetefuente,
                        'MveInValorReteiva' => $datos2->MveInValorReteiva,
                        'MveInValorImpoconsumo' => $datos2->MveInValorImpoconsumo,
                        'MveInPorcentajeDescuento' => $datos2->MveInPorcentajeDescuento,
                        'MveInPorcentajeIva' => $datos2->MveInPorcentajeIva,
                        'MveInPorcentajeImpoconsumo' => $datos2->MveInPorcentajeImpoconsumo,
                        'VenInValorPropina' => $datos2->VenInValorPropina,
                        'VenInValor' => $datos2->VenInValor


                    ]);
                }
            }

            $datos->push([
                'VenIdInVentas' => $datosC->VenIdInVentas,
                'VenStPrefijoNumeracion' => $datosC->VenStPrefijoNumeracion,
                'VenIdInDocumento' => $datosC->VenIdInDocumento,
                'VenIdStComprobante' => $datosC->VenIdStComprobante,
                'VenInFactura' => $datosC->VenInFactura,
                'VenDaFechaDoc' => $datosC->VenDaFechaDoc,
                'VenIdStCliente' => $datosC->VenIdStCliente,
                'NombreCli' => $datosC->CliStNombreCliente,
                'subtotalFac' => $datosC->VenInValor,
                'descuento' => $datosC->VenInDescuento,
                'impoconsumo' => $datosC->VenInValorImpoconsumo,
                'valIVA' => $datosC->VenInValorIva,
                'FpaStDescripcion' => $datosC->FpaStDescripcion,
                'totalfactura' => (($datosC->VenInValor + $datosC->VenInValorIva + $datosC->VenInValorImpoconsumo) - $datosC->VenInDescuento),
                'estado' => $datosC->VenStEstadoRegistro,
                'scenomb' => $datosC->scenomb,
                'datos' => $productos
            ]);
        }


        return $datos->unique('VenIdInVentas')->values();



        /*   foreach ($datosConsulta as $datosC) {

            $productos = collect();

            $datosActual = current($datosConsulta);
            $datoSiguiente = next($datosConsulta);
            $idVenActual = $datosActual->VenIdInVentas;

            if ($datoSiguiente != '') {
                $idVenSig = $datoSiguiente->VenIdInVentas;

                if ($idVenActual != $idVenSig) {

                    foreach ($datosConsulta as $datos2) {
                        if ($idVenActual == $datos2->VenIdInVentas) {
                            $productos->push($datos2);
                        }
                    }

                    $datos->push([

                        'VenIdInDocumento' => $datosC->VenIdInDocumento,
                        'VenStPrefijoNumeracion' => $datosC->VenStPrefijoNumeracion,
                        'VenInFactura' => $datosC->VenInFactura,
                        'VenDaFechaDoc' => $datosC->VenDaFechaDoc,
                        'VenIdStCliente' => $datosC->VenIdStCliente,
                        'NombreCli' => $datosC->CliStNombreCliente,
                        'FpaStDescripcion' => $datosC->FpaStDescripcion,
                        'totalfactura' => (($datosC->VenInValor + $datosC->VenInValorIva + $datosC->VenInValorImpoconsumo) - $datosC->VenInDescuento),
                        'estado' => $datosC->VenStEstadoRegistro,
                        'datos' => $productos
                    ]);
                }
            } else {
                foreach ($datosConsulta as $datos2) {
                    if ($idVenActual == $datos2->VenIdInVentas) {
                        $productos->push($datos2);
                    }
                }
                $datos->push([
                    'VenIdInDocumento' => $datosC->VenIdInDocumento,

                    'VenStPrefijoNumeracion' => $datosC->VenStPrefijoNumeracion,
                    'VenInFactura' => $datosC->VenInFactura,
                    'VenDaFechaDoc' => $datosC->VenDaFechaDoc,
                    'VenIdStCliente' => $datosC->VenIdStCliente,
                    'NombreCli' => $datosC->CliStNombreCliente,
                    'FpaStDescripcion' => $datosC->FpaStDescripcion,
                    'totalfactura' => (($datosC->VenInValor + $datosC->VenInValorIva + $datosC->VenInValorImpoconsumo) - $datosC->VenInDescuento),
                    'estado' => $datosC->VenStEstadoRegistro,
                    'datos' => $productos
                ]);
            }
        } 

        return $datos;  */
    }


    public function fitroConsutaventasperiodo($request)
    {

        $busqueda = $request->selecVistaInfVenta;
        $formaPagos = $request->selectFormaPago;
        $idCaja = $request->selectIdCaja;
        $idComprobante = $request->selectIdComprobante;
        $nitCliente = $request->selectIdTerceros;
        $strFiltro = '';

        if ($busqueda != null) {
            $strFiltro =  "$strFiltro  AND VenStEstadoRegistro ='$busqueda'";
        }
        if ($formaPagos != null) {
            $strFiltro =  "$strFiltro  AND F.FpaStDescripcion ='$formaPagos'";
        }
        if ($idCaja != null) {
            $strFiltro =  "$strFiltro  AND VenIdInCaja ='$idCaja'";
        }
        if ($idComprobante != null) {
            $strFiltro =  "$strFiltro  AND VenIdStComprobante ='$idComprobante'";
        }
        if ($nitCliente != null) {
            $strFiltro =  "$strFiltro  AND VenIdStCliente ='$nitCliente'";
        }
        return $strFiltro;
    }

    /////
    ###########devoluciones ventas


    public function viewDevolucionesVentaPeriodos()
    {
        cambioBaseDatos();
        $terceros = Cliente::select('clinit', 'CliStNombreCliente')->get();


        return view('contenido.informesVentas.devolucionesVentas', compact('terceros'));
    }


    public function viewConsultaDevolucionesVentas(Request $request)
    {
        return 'ConsultaDevolucionesVentas';
        $datos = $this->consultaDevolucionesVentas($request);

        // return $datos;

        if ($datos == null && $request->fechaInicial == $request->fechaFinal) {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
            El dia $request->fechaInicial No hay datos para Mostrar. 
          </div>";
        }

        if ($datos == null && $request->fechaInicial != $request->fechaFinal) {
            return "<div  class='alert alert-primary  m-2 col-11 text-center' role='alert'>
            Entre las fechas: $request->fechaInicial Y $request->fechaFinal. No hay datos para Mostrar. 
          </div>";
        }

        return view('contenido.informesVentas.tablaInformeVentasPeriodo', compact('datos'));
    }


    public function consultaDevolucionesVentas($request)
    {

        cambioBaseDatos();
        $venIdStEmpresa = session('Empresa');
        $VenIdStTipoComprobante = '11';
        $fechaInicial = $request->fechaInicial;
        $fechaFinal = $request->fechaFinal;
        $filtros = $this->fitroConsutaventasperiodo($request);


        $consulta = "SELECT A.* , F.FpaStDescripcion, C.CliStNombreCliente, V.CliStNombreCliente AS Vendedor,X.BodStDescripcion,K.*, M.PreStAbreviatura,M.PreStDescripcion,B.* 
                    FROM VENTAS A 
                    INNER JOIN FORMAPAGOS F ON(A.VenIdInFormaPago = F.FpaIdInFormaPago) 
                    INNER JOIN BODEGAS X ON (A.VenIdStEmpresa = X.BodIdStEmpresa AND A.VenIdInBodega = X.BodIdInBodega)
                    INNER JOIN CLIENTES C ON (A.VenIdStEmpresa = C.CliEmpr AND A.VenIdStCliente = C.CliNit) 
                    INNER JOIN CLIENTES V ON (A.VenIdStEmpresa = V.CliEmpr AND A.VenIdStVendedor = V.CliNit) 
                    INNER JOIN MOVVENTAS K ON (A.VenIdInVentas = K.MveIdInVentas AND A.VenIdStEmpresa =K.MveIdStEmpresa) 
                    INNER JOIN PRODUCTOS B ON (K.MveIdStEmpresa = B.ProIdStEmpresa AND K.MveIdInProducto = B.ProIdInProducto) 
                    INNER JOIN PRESENTACION M ON (K.MveIdStEmpresa = M.PreIdStEmpresa AND K.MveIdInUnidadVenta = M.PreIdInPresentacion)
                    WHERE (A.VenIdStEmpresa = '$venIdStEmpresa'  AND A.VenIdStTipoComprobante = '$VenIdStTipoComprobante' AND  VenDaFechaDoc 
                    BETWEEN '$fechaInicial' AND '$fechaFinal'  $filtros) ORDER BY VenDaFechaDoc"; //VenIdInVentas,MveInItem,



        $datosConsulta = DB::select($consulta);

        if ($datosConsulta == null) {

            return null;
        }

        $datos = collect();

        foreach ($datosConsulta as $datosC) {

            $productos = collect();

            foreach ($datosConsulta as $datos2) {
                if ($datosC->VenIdInVentas == $datos2->VenIdInVentas) {
                    $productos->push([
                        'VenStPrefijoNumeracion' => $datos2->VenStPrefijoNumeracion,
                        'VenInFactura' => $datos2->VenInFactura,
                        'CliStNombreCliente' => $datos2->CliStNombreCliente,
                        'VenDaFechaDoc' => $datos2->VenDaFechaDoc,
                        'FpaStDescripcion' => $datos2->FpaStDescripcion,
                        'BodStDescripcion' => $datos2->BodStDescripcion,
                        'MveIdInProducto' => $datos2->MveIdInProducto,
                        'ProStReferencia' => $datos2->ProStReferencia,
                        'MveStDescripcion' => $datos2->MveStDescripcion,
                        'PreStDescripcion' => $datos2->PreStDescripcion,
                        'PreStAbreviatura' => $datos2->PreStAbreviatura,
                        'MveInCantidad' => $datos2->MveInCantidad,
                        'MveInPrecio' => $datos2->MveInPrecio,
                        'MveInValor' => $datos2->MveInValor,
                        'MveInDescuento' => $datos2->MveInDescuento,
                        'MveInValorIva' => $datos2->MveInValorIva,
                        'MveInValorImpoconsumo' => $datos2->MveInValorImpoconsumo,
                        'MveInPorcentajeDescuento' => $datos2->MveInPorcentajeDescuento,
                        'MveInPorcentajeIva' => $datos2->MveInPorcentajeIva,
                        'MveInPorcentajeImpoconsumo' => $datos2->MveInPorcentajeImpoconsumo,
                        'VenInValorPropina' => $datos2->VenInValorPropina,
                        'VenInValor' => $datos2->VenInValor


                    ]);
                }
            }

            $datos->push([
                'VenIdInVentas' => $datosC->VenIdInVentas,
                'VenIdInDocumento' => $datosC->VenIdInDocumento,
                'VenIdStComprobante' => $datosC->VenIdStComprobante,
                'VenStPrefijoNumeracion' => $datosC->VenStPrefijoNumeracion,
                'VenInFactura' => $datosC->VenInFactura,
                'VenDaFechaDoc' => $datosC->VenDaFechaDoc,
                'VenIdStCliente' => $datosC->VenIdStCliente,
                'NombreCli' => $datosC->CliStNombreCliente,
                'FpaStDescripcion' => $datosC->FpaStDescripcion,
                'totalfactura' => (($datosC->VenInValor + $datosC->VenInValorIva + $datosC->VenInValorImpoconsumo) - $datosC->VenInDescuento),
                'estado' => $datosC->VenStEstadoRegistro,
                'datos' => $productos
            ]);
        }


        return $datos->unique('VenIdInVentas')->values();



        /*   foreach ($datosConsulta as $datosC) {

            $productos = collect();

            $datosActual = current($datosConsulta);
            $datoSiguiente = next($datosConsulta);
            $idVenActual = $datosActual->VenIdInVentas;

            if ($datoSiguiente != '') {
                $idVenSig = $datoSiguiente->VenIdInVentas;

                if ($idVenActual != $idVenSig) {

                    foreach ($datosConsulta as $datos2) {
                        if ($idVenActual == $datos2->VenIdInVentas) {
                            $productos->push($datos2);
                        }
                    }

                    $datos->push([

                        'VenIdInDocumento' => $datosC->VenIdInDocumento,
                        'VenStPrefijoNumeracion' => $datosC->VenStPrefijoNumeracion,
                        'VenInFactura' => $datosC->VenInFactura,
                        'VenDaFechaDoc' => $datosC->VenDaFechaDoc,
                        'VenIdStCliente' => $datosC->VenIdStCliente,
                        'NombreCli' => $datosC->CliStNombreCliente,
                        'FpaStDescripcion' => $datosC->FpaStDescripcion,
                        'totalfactura' => (($datosC->VenInValor + $datosC->VenInValorIva + $datosC->VenInValorImpoconsumo) - $datosC->VenInDescuento),
                        'estado' => $datosC->VenStEstadoRegistro,
                        'datos' => $productos
                    ]);
                }
            } else {
                foreach ($datosConsulta as $datos2) {
                    if ($idVenActual == $datos2->VenIdInVentas) {
                        $productos->push($datos2);
                    }
                }
                $datos->push([
                    'VenIdInDocumento' => $datosC->VenIdInDocumento,

                    'VenStPrefijoNumeracion' => $datosC->VenStPrefijoNumeracion,
                    'VenInFactura' => $datosC->VenInFactura,
                    'VenDaFechaDoc' => $datosC->VenDaFechaDoc,
                    'VenIdStCliente' => $datosC->VenIdStCliente,
                    'NombreCli' => $datosC->CliStNombreCliente,
                    'FpaStDescripcion' => $datosC->FpaStDescripcion,
                    'totalfactura' => (($datosC->VenInValor + $datosC->VenInValorIva + $datosC->VenInValorImpoconsumo) - $datosC->VenInDescuento),
                    'estado' => $datosC->VenStEstadoRegistro,
                    'datos' => $productos
                ]);
            }
        } 

        return $datos;  */
    }
}
