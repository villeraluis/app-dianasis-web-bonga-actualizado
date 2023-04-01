<?php

namespace App\Http\Controllers;

use App\Models\Cliente;
use App\Models\Comprobante;
use App\Models\FormaPago;
use App\Models\Producto;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductosController extends Controller
{

    public function viewProductos()
    {
        cambioBaseDatos();
        $terceros = Cliente::select('clinit', 'CliStNombreCliente')->limit(100)->get();

        $formaPagos = FormaPago::get();
        $comprobantes = Comprobante::where('ComStTipoMov', '12')->get();

        return view('contenido.listaProductos.indexListaProductos', compact('terceros', 'formaPagos', 'comprobantes'));
        //return view('index',compact('contenido'));
 
    }

    public function ConsultaListaProductos(Request $request){
        cambioBaseDatos();

        $venIdStEmpresa = session('Empresa');

        $datos = Producto::get();

        return view('contenido.listaProductos.tablaListaProductos',compact('datos'));
        

    }


    public function  viewIndexProductosComprados()
    {
        cambioBaseDatos();
        $terceros = Cliente::join('rtipocli', 'rtipocli.rticlie', '=', 'clinit')
            ->where('rtitipo', '14')

            ->select('clinit', 'CliStNombreCliente')->get();
        $formaPagos = FormaPago::get();
        $comprobantes = Comprobante::where('ComStTipoMov', '11')->get();
       // $cajas = Caja::select('CjaIdInCaja', 'CjaStDescripcion')->get();


      return view('contenido.productosComprados.indexProductosComprados', compact('terceros', 'formaPagos', 'comprobantes'));
       //return view('index',compact('contenido'));
 
    }


   
   

    public function  InformeProComprados(Request $request)
    {

        return 'Productos Comprados';

        $datos=$this->consultaProdComprados($request);    
        if ($datos == null) {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
            El dia $request->fechaInicial No hay datos para Mostrar. 
          </div>";
        }
        return view('contenido.productosComprados.tablaProductosComprados',compact('datos'));
    }



    public function consultaProdComprados($request)
    {
        cambioBaseDatos();
        $venIdStEmpresa = session('Empresa');
        $VenIdStTipoComprobante = '11';
        $fechaInicial = $request->fechaInicial;
        $fechaFinal = $request->fechaFinal;
        $filtros = $this->fitroConsutaventasProductos($request);
        $vfiltro2 = $this->fitroConsutaventasProductos2($request);
        $eAprobado = 'A';
        $VenIdStTipoComprobanteDev = '13';

        $consulta = "SELECT A.*,X.BodStDescripcion,K.*,M.PreStAbreviatura,B.ProStDescripcion,B.ProStReferencia FROM VENTAS A 
                    INNER JOIN BODEGAS X ON (A.VenIdStEmpresa = X.BodIdStEmpresa AND A.VenIdInBodega = X.BodIdInBodega)
                    INNER JOIN MOVVENTAS K ON (A.VenIdInVentas = K.MveIdInVentas AND A.VenIdStEmpresa =K.MveIdStEmpresa)
                    INNER JOIN PRODUCTOS B ON (K.MveIdStEmpresa  = B.ProIdStEmpresa AND K.MveIdInProducto = B.ProIdInProducto $vfiltro2) 
                    INNER JOIN PRESENTACION M ON (K.MveIdStEmpresa = M.PreIdStEmpresa AND K.MveIdInUnidadVenta = M.PreIdInPresentacion)
                    WHERE (A.VenIdStEmpresa = '$venIdStEmpresa' AND A.VenIdStTipoComprobante = '$VenIdStTipoComprobante' AND 
                    VenDaFechaDoc BETWEEN '$fechaInicial' AND '$fechaFinal' AND VenStEstadoRegistro = '$eAprobado'  $filtros)
                    ORDER BY VenIdInVentas,MveInItem "; //VenIdInVentas,MveInItem";MveIdInProducto


        $consultaDevoluciones = "SELECT A.*,X.BodStDescripcion,K.*,M.PreStAbreviatura,B.ProStDescripcion,B.ProStReferencia FROM VENTAS A 
                                INNER JOIN BODEGAS X ON (A.VenIdStEmpresa = X.BodIdStEmpresa AND A.VenIdInBodega = X.BodIdInBodega)
                                INNER JOIN MOVVENTAS K ON (A.VenIdInVentas = K.MveIdInVentas AND A.VenIdStEmpresa =K.MveIdStEmpresa)
                                INNER JOIN PRODUCTOS B ON (K.MveIdStEmpresa  = B.ProIdStEmpresa AND K.MveIdInProducto = B.ProIdInProducto $vfiltro2) 
                                INNER JOIN PRESENTACION M ON (K.MveIdStEmpresa = M.PreIdStEmpresa AND K.MveIdInUnidadVenta = M.PreIdInPresentacion)
                                WHERE (A.VenIdStEmpresa = '$venIdStEmpresa' AND A.VenIdStTipoComprobante = '$VenIdStTipoComprobanteDev' AND 
                                VenDaFechaDoc BETWEEN '$fechaInicial' AND '$fechaFinal' AND VenStEstadoRegistro = '$eAprobado'  $filtros)
                                ORDER BY VenIdInVentas,MveInItem";


        $respuestaConProVendidos = DB::select($consulta);

        $resConProDev = DB::select($consultaDevoluciones);



        if ($respuestaConProVendidos == null) {

            return null;
        }

        $datos = collect();

        foreach ($respuestaConProVendidos as $datosC) {

            $cantidaT = 0;
            $costoT = 0;
            $valorVentaT = 0;
            $cantidaDev = 0;
            $costoDev = 0;
            $valorDev = 0;


            foreach ($respuestaConProVendidos as $datos2) {

                if ($datosC->MveIdInProducto == $datos2->MveIdInProducto) {
                    $cantidaT += floatval($datos2->MveInCantidad);
                    $costoT += (floatval($datos2->MveInCantidad) * floatval($datos2->MveInConversionUnidad) * floatval($datos2->MveInCosto));
                    $valorVentaT += (floatval($datos2->MveInValor) - floatval($datos2->MveInValorIva) - floatval($datos2->MveInValorImpoconsumo));
                }
            }

            foreach ($resConProDev as $pDevol) {
                if ($datosC->MveIdInProducto == $pDevol->MveIdInProducto) {
                    $cantidaDev += floatval($pDevol->MveInCantidad);
                    $costoDev += (floatval($pDevol->MveInCantidad) * floatval($pDevol->MveInConversionUnidad) * floatval($pDevol->MveInCosto));
                    $valorDev += (floatval($pDevol->MveInValor) - floatval($pDevol->MveInValorIva) - floatval($pDevol->MveInValorImpoconsumo));
                }
            }


            $datos->push([
                'MveIdInProducto' => $datosC->MveIdInProducto,
                'MveStDescripcion' => $datosC->MveStDescripcion,
                'ProStReferencia' => $datosC->ProStReferencia,
                'VenIdInBodega' => $datosC->VenIdInBodega,
                'PreStAbreviatura' => $datosC->PreStAbreviatura,
                'MveInCosto' => $datosC->MveInCosto,
                'TotalCantidad' => $cantidaT,
                'TotalCosto' => $costoT,
                'costoUnitario' => $costoT / $cantidaT,
                'ValorVentaTot' => $valorVentaT,
                'ValorUnitario' => $valorVentaT / $cantidaT,
                'cantidadDevolucion' => $cantidaDev,
                'costoDevolucion' => $costoDev,
                'valorDevolucion' => $valorDev,
                'utilidadBruta' => (($valorVentaT - $valorDev) - ($costoT - $costoDev))

            ]);
        }

        return $datos->unique('MveIdInProducto')->values();
    }



    
    public function fitroConsutaventasProductos($request)
    {

        $nitvendedor = $request->selectIdTerceros;
        $idBodega = $request->selectBodega;
        $idComprobante = $request->selectIdComprobante;

        $strFiltro = '';

        if ($nitvendedor != null) {
            $strFiltro =  "$strFiltro AND VenIdStVendedor = '$nitvendedor'";
        }
        if ($idBodega != null) {
            $strFiltro =  "$strFiltro  AND VenIdInBodega ='$idBodega'";
        }
        if ($idComprobante != null) {
            $strFiltro =  "$strFiltro  and VenIdStComprobante = '$idComprobante'";
        }

        return $strFiltro;
    }


    public function fitroConsutaventasProductos2($request)
    {

        $idLineaProd = $request->selectLineaProducto;
        $idSublineaPro = $request->selectSublineaProducto;
        $idMarcaProd = $request->selectMarcaProducto;
        $idClaseProd = $request->selectClaseProductos;

        $strFiltro = '';

        if ($idLineaProd != null) {
            $strFiltro =  "$strFiltro  AND ProIdInLinea = '$idLineaProd'";
        }
        if ($idSublineaPro != null) {
            $strFiltro =  "$strFiltro  AND ProIdInSublinea = '$idSublineaPro'";
        }
        if ($idMarcaProd != null) {
            $strFiltro =  "$strFiltro  AND ProIdInMarca = '$idMarcaProd'";
        }
        if ($idClaseProd != null) {
            $strFiltro =  "$strFiltro   AND ProIdInClase =  '$idClaseProd'";
        }

        return $strFiltro;
    }

    
}
