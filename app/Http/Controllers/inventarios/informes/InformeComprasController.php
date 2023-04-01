<?php

namespace App\Http\Controllers\inventarios\informes;

use App\Http\Controllers\Controller;
use App\Models\Cliente;
use App\Models\Comprobante;
use App\Models\FormaPago;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class InformeComprasController extends Controller
{
    public function viewCompraPeriodos()
    {
        cambioBaseDatos();
       

        $formaPagos = FormaPago::get();
        $comprobantes = Comprobante::where('ComStTipoMov', '12')->get();

        return view('inventarios.informes.comprasPeriodo.informeComprasPeriodo', compact('formaPagos', 'comprobantes'));
        

    }


    public function viewConsultaInformeCompras(Request $request)
    {
        $dias=numDias($request->fechaInicial, $request->fechaFinal);

        if ($dias > 3100) {
            return "<div class='alert alert-danger m-2 col-11 text-center' role='alert'>
            El rango de fechas no puede superar  <b>30</b> días. 
          </div>";
        }else{
            $datos = $this->consultaInformeCompra($request);
        }

       

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

        return view('inventarios.informes.comprasPeriodo.tablaInformeComprasPeriodo', compact('datos'));
    }


    public function consultaInformeCompra($request)
    {

        cambioBaseDatos();
        $venIdStEmpresa = session('Empresa');
        $VenIdStTipoComprobante = '12';
        $fechaInicial = $request->fechaInicial;
        $fechaFinal = $request->fechaFinal;
        $filtros = $this->filtroConsultaInformeCompra($request);

        $consulta = "SELECT A.*,F.FpaStDescripcion,C.CliStNombreCliente,X.BodStDescripcion,K.*,
        M.PreStAbreviatura,B.ProStDescripcion,B.ProStIvaIncluido,B.ProStReferencia
        FROM COMPRAS A
        INNER JOIN FORMAPAGOS F ON(A.ComIdInFormaPago = F.FpaIdInFormaPago)
        INNER JOIN BODEGAS X ON (A.ComIdStEmpresa = X.BodIdStEmpresa AND A.ComIdInBodega = X.BodIdInBodega)
        INNER JOIN CLIENTES C ON (A.ComIdStEmpresa = C.CliEmpr AND A.ComIdStProveedor = C.CliNit)
        INNER JOIN MOVCOMPRAS K ON (A.ComIdInCompras = K.McoIdInCompras AND A.ComIdStEmpresa =K.McoIdStEmpresa)
        INNER JOIN PRODUCTOS B ON (K.McoIdStEmpresa  = B.ProIdStEmpresa AND K.McoIdInProducto = B.ProIdInProducto)
        INNER JOIN PRESENTACION M ON (B.ProIdStEmpresa  = M.PreIdStEmpresa AND K.McoIdInUnidadCompra = M.PreIdInPresentacion)
        WHERE (A.ComIdStEmpresa = '$venIdStEmpresa' AND (A.ComIdStTipoComprobante = '$VenIdStTipoComprobante' OR A.ComIdStTipoComprobante = '14' )
        AND ComDaFechaFactura BETWEEN '$fechaInicial' AND '$fechaFinal' $filtros
        AND (ComStEstadoCompra = 'A' or ComStEstadoCompra = 'W') ) ORDER BY ComIdInCompras,McoInItem";


        $datosConsulta = DB::select($consulta);

        if ($datosConsulta == null) {

            return null;
        }

        $datos = collect();

        foreach ($datosConsulta as $datosC) {

            $productos = collect();

            foreach ($datosConsulta as $datos2) {
                if ($datosC->ComIdInCompras == $datos2->ComIdInCompras) {
                    $productos->push($datos2);
                }
            }

            $netoPagar = 0;

            if ($datosC->ComStRetencionAsumida == 1) {
                $netoPagar = $datosC->ComInValor + $datosC->ComInValorIva + $datosC->ComInValorImpoconsumo - $datosC->ComInValorDescuento;
            } else {
                $netoPagar = $datosC->ComInValor + $datosC->ComInValorIva + $datosC->ComInValorImpoconsumo - $datosC->ComInValorDescuento - $datosC->ComInValorRetencion;
            }

            $esIvaAsumido='';
            $esretencionAsumida='';
            if($datosC->ComStIvaAsumido=='1'){
                $esIvaAsumido='si';
            }
            if($datosC->ComStRetencionAsumida=='1'){
                $esretencionAsumida='si';
            }


            if ($datosC->ComStEstadoCompra == 'W') {

                $datos->push([

                    'ComIdInCompras' => $datosC->ComIdInCompras,
                    'ComIdStDocumento' => $datosC->ComIdStDocumento,
                    'ComIdStComprobante' => $datosC->ComIdStComprobante,
                    'ComIdStDocumentoSoporte' => $datosC->ComIdStDocumentoSoporte,
                    'ComDtFechaHora' => $datosC->ComDtFechaHora,
                    'ComDaFechaFactura' => $datosC->ComDaFechaFactura,
                    'NombreProv' => $datosC->CliStNombreCliente,
                    'ComInValor' => 0,
                    'ComInValorImpoconsumo' => $datosC->ComInValorImpoconsumo,
                    'ComInValorIva' => 0,
                    'totalfactura' =>0,
                    'ComInValorRetencion' => 0,
                    'totalApagar' => 0,
                    'netoAPagar' =>  0,
                    'FpaStDescripcion' => '',
                    'ComStIvaAsumido' => $esIvaAsumido,
                    'ComStRetencionAsumida' => $esretencionAsumida,
                    'ComStEstadoCompra' => 'anulado',
                    'datos' => $productos


                ]);
            } else {

                $datos->push([

                    'ComIdInCompras' => $datosC->ComIdInCompras,
                    'ComIdStDocumento' => $datosC->ComIdStDocumento,
                    'ComIdStComprobante' => $datosC->ComIdStComprobante,
                    'ComIdStDocumentoSoporte' => $datosC->ComIdStDocumentoSoporte,
                    'ComDtFechaHora' => $datosC->ComDtFechaHora,
                    'ComDaFechaFactura' => $datosC->ComDaFechaFactura,
                    'NombreProv' => $datosC->CliStNombreCliente,
                    'ComInValor' => $datosC->ComInValor,
                    'ComInValorImpoconsumo' => $datosC->ComInValorImpoconsumo,
                    'ComInValorIva' => $datosC->ComInValorIva,
                    'totalfactura' => (($datosC->ComInValor + $datosC->ComInValorIva + $datosC->ComInValorImpoconsumo) - $datosC->ComInValorDescuento),
                    'ComInValorRetencion' => $datosC->ComInValorRetencion,
                    'totalApagar' => (($datosC->ComInValor + $datosC->ComInValorIva + $datosC->ComInValorIvaAsumido + $datosC->ComInValorImpoconsumo) -
                        ($datosC->ComInValorDescuento + $datosC->ComInValorRetencion + $datosC->ComInValorAnticipo + 0)),
                    'netoAPagar' =>  $netoPagar,
                    'FpaStDescripcion' => $datosC->FpaStDescripcion,
                    'ComStIvaAsumido' => $esIvaAsumido,
                    'ComStRetencionAsumida' =>$esretencionAsumida ,
                    'ComStEstadoCompra' => 'aprobado',
                    'datos' => $productos
                ]);
            }
        }
        return $datos->unique('ComIdInCompras')->values();
    }





    public function filtroConsultaInformeCompra($request)
    {


        $formaPagos = $request->selectFormaPago;
        $idComprobante = $request->selectIdComprobante;
        $nitCliente = $request->selectIdTerceros;
        $strFiltro = '';


        if ($formaPagos != null) {
            $strFiltro =  "$strFiltro  AND F.FpaStDescripcion ='$formaPagos'";
        }

        if ($idComprobante != null) {
            $strFiltro =  "$strFiltro  AND ComIdStComprobante ='$idComprobante'";
        }
        if ($nitCliente != null) {
            $strFiltro =  "$strFiltro  AND ComIdStProveedor ='$nitCliente'";
        }
        return $strFiltro;
    }
}
