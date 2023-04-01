<?php

namespace App\Http\Controllers\tesoreria\informes;

use App\Http\Controllers\Controller;
use App\Models\Comprobante;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EgresosBancosController extends Controller
{
    public function viewinformeEgresosBancos()
    {
        cambioBaseDatos();
        $empresa = session('Empresa');
        $comprobantes = Comprobante::where('ComStTipoMov', '8')->where('comempr', "$empresa")->select("comnomb", "comcodi")->get();

        return view('tesoreria.informes.egresosDeBancos.indexEgresosBancos', compact('comprobantes'));
    }


    
    public function infEgresosBancos(Request $request)
    {

        $dias=numDias($request->fechaInicial, $request->fechaFinal);

        if ($dias > 3100) {
            return "<div class='alert alert-danger m-2 col-11 text-center' role='alert'>
            El rango de fechas no puede superar  <b>30</b> días. 
          </div>";
        }else{
            $datos = $this->consultaEgresosBancos($request);
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

        return view('tesoreria.informes.egresosDeBancos.tablaEgresosBancos', compact('datos'));

    }

    public function consultaEgresosBancos($request)
    {

        cambioBaseDatos();
        $empresa = session('Empresa');
        $vTipoComprobante = vTipoComprobante(8);
        $fechaInicial = $request->fechaInicial;
        $fechaFinal = $request->fechaFinal;
        $filtro = $this->fitroCoEgresosBancos($request);

        $datos = collect();

        $consultaEg = "SELECT A.*,C.CliStNombreCliente,K.*,B.BanStDescripcion,T.EtaStDescripcion,L.PrvStFactura,L.PrvDaFechaCompra,L.PrvIdStCentroCosto,L.PrvIdStSubcentroCosto, 
        L.PrvIdStDocumento,R.CbaStDescripcion,R.CbaStFormato,Y.*,Q.CarNomb,S.comnomb,Z.CliStNombreCliente AS NomProveedor FROM PAGOS A 
        INNER JOIN CLIENTES C ON (A.PprIdStEmpresa = C.CliEmpr AND A.PprIdStProveedor = C.CliNit) 
        INNER JOIN BANCOS B ON (A.PprIdStEmpresa = B.BanStEmpresa AND A.PprIdInBanco = B.BanIdInBanco ) 
        INNER JOIN CUENTASBANCARIAS R ON (A.PprIdStEmpresa = R.CbaIdStEmpresa AND A.PprIdInBanco = R.CbaIdInBanco AND 
        A.PprIdInCuentaBanco = R.CbaIdInCuentaBanco) 
        INNER JOIN ESTADOS T ON (A.PprStEstadoPago = T.EtaIdStEstado) 
        LEFT OUTER JOIN MOVPAGOS K ON (A.PprIdStEmpresa =K.MprIdStEmpresa AND A.PprIdStComprobante =K.MprIdStComprobante AND 
        A.PprIdInDocumento = K.MprIdInDocumento) 
        LEFT OUTER JOIN PROVEEDORES L ON (K.MprIdStEmpresa = L.PrvIdStEmpresa AND K.MprIdStComprobanteCompra= L.PrvIdStComprobante AND 
        K.MprIdStDocumentoCompra = L.PrvIdStDocumento) 
        INNER JOIN TMOVIMIENTO X ON (A.PprIdStEmpresa = X.TmoEmpr AND A.PprInTmoviento = X.TmoCons) 
        INNER JOIN MOVIMIENTOS Y ON (X.TmoEmpr = Y.MovEmpr AND X.TmoCons = Y.MovCons) 
        INNER JOIN CARTILLA Q ON (Y.MovEmpr = Q.CarEmpr AND Y.Movcuen = Q.CarCuen AND Y.MovScue = Q.CarScue AND 
        Y.Movauxi = Q.CarAuxi AND Y.Movauxl = Q.CarAuxl) 
        INNER JOIN COMPROBANTES S ON (A.PprIdStEmpresa = S.comempr AND A.PprIdStComprobante = S.comcodi) 
        LEFT OUTER JOIN CLIENTES Z ON (K.MprIdStEmpresa = Z.CliEmpr AND K.MprIdStProveedor = Z.CliNit) 
        WHERE (A.PprIdStEmpresa = '$empresa'  AND A.PprIdStTipoComprobante = '$vTipoComprobante' AND 
        PprDaFechaPago BETWEEN  '$fechaInicial' AND '$fechaFinal' $filtro ) ORDER BY ObjectID,MprInItem";


        $datosConsulta = DB::select($consultaEg);

        if ($datosConsulta == null) {

            return null;
        }

        foreach ($datosConsulta as $datosC) {
            $detEgresos = collect();
            foreach ($datosConsulta as $datos2) {
                if ($datosC->PprIdInDocumento == $datos2->PprIdInDocumento) {
                    $detEgresos->push($datos2);  
                }
            }

            if ($datosC->PprStEstadoPago == 'W') {
                $datos->push([
                    'PprIdInDocumento' => $datosC->PprIdInDocumento,
                    'comnomb' => $datosC->comnomb,
                    'PprDaFechaPago' => $datosC->PprDaFechaPago,
                    'CliStNombreCliente' => $datosC->CliStNombreCliente,
                    'PprStDescripcion' => '** REGISTRO ANULADO **',
                    'PprInValor' => 0,
                    'PprInRetefuente' => 0,
                    'PprInDescuento' => 0,
                    'PprInExcedentes' => 0,
                    'totalEgreso' => 0,
                    'BanStDescripcion' => $datosC->BanStDescripcion,
                    'CbaStDescripcion' => $datosC->CbaStDescripcion,
                    'PprInNumeroCheque' => $datosC->PprInNumeroCheque,
                    'PprStEstadoPago' => $datosC->PprStEstadoPago,
                    'PprDtFechaHora' => $datosC->PprDtFechaHora,
                    'datos' => $detEgresos
                ]);
            } else {
                $datos->push([
                    'PprIdInDocumento' => $datosC->PprIdInDocumento,
                    'comnomb' => $datosC->comnomb,
                    'PprDaFechaPago' => $datosC->PprDaFechaPago,
                    'CliStNombreCliente' => $datosC->CliStNombreCliente,
                    'PprStDescripcion' => $datosC->PprStDescripcion,
                    'PprInValor' => $datosC->PprInValor,
                    'PprInRetefuente' => $datosC->PprInRetefuente,
                    'PprInDescuento' => $datosC->PprInDescuento,
                    'PprInExcedentes' => $datosC->PprInExcedentes,
                    'totalEgreso' => ($datosC->PprInValor + $datosC->PprInExcedentes) - ($datosC->PprInDescuento + $datosC->PprInRetefuente),
                    'BanStDescripcion' => $datosC->BanStDescripcion,
                    'CbaStDescripcion' => $datosC->CbaStDescripcion,
                    'PprInNumeroCheque' => $datosC->PprInNumeroCheque,
                    'PprStEstadoPago' => $datosC->PprStEstadoPago,
                    'PprDtFechaHora' => $datosC->PprDtFechaHora,
                    'datos' => $detEgresos
                ]);
            }
        }

        return $datos->unique('PprIdInDocumento')->values();

    }



    /* Filtros */


    public function fitroCoEgresosBancos($request)
    {



        $idComprobante = $request->selectIdComprobante;
        $nitCliente = $request->selectIdTerceros;
        $strFiltro = '';

        if ($idComprobante != null) {
            $strFiltro =  "$strFiltro  AND MprIdStComprobante ='$idComprobante'";
        }
        if ($nitCliente != null) {
            $strFiltro =  "$strFiltro  AND PprIdStProveedor ='$nitCliente'";
        }
        return $strFiltro;
    }
}
