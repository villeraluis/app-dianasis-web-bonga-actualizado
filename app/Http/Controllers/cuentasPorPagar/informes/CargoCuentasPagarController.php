<?php
/* clase = FrmListadoComprasVarias */

namespace App\Http\Controllers\cuentasPorPagar\informes;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CargoCuentasPagarController extends Controller
{

    public function viewInformeCargoCuentasPagar()
    {
        cambioBaseDatos();
        return view('cuentasPorPagar.informes.cargoCuentasPorPagar.indexCargoCuentasPagar');
    }


    public function    infCargoCuentasPagar(Request $request)
    {

        $datos = $this->consultaCargoCuentasPagar($request);
        if ($datos == null ) {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
             No hay datos para Mostrar. 
          </div>";
        }

      // return $datos;

        return view('cuentasPorPagar.informes.cargoCuentasPorPagar.tablaCargoCuentasPagar', compact('datos'));
    }


    public function consultaCargoCuentasPagar($request)
    {
        cambioBaseDatos();
        $empresa = session('Empresa');
        $fechaInicial = $request->fechaInicial;
        $fechaFinal = $request->fechaFinal;
        $filTercero = ($request->selectIdTerceros != '') ?  'AND PrvIdStProveedor=' . $request->selectIdTerceros : '';
        $datos = collect();
        $vTipoComprobante = '12';


        $sql = "SELECT A.*,C.CliStNombreCliente,Y.*,Q.CarNomb FROM COMPRAS A 
                INNER JOIN CLIENTES C ON (A.ComIdStEmpresa = C.CliEmpr AND A.ComIdStProveedor = C.CliNit) 
                INNER JOIN TMOVIMIENTO X ON (A.ComIdStEmpresa = X.TmoEmpr AND A.ComIdInTmovimiento = X.TmoCons) 
                INNER JOIN MOVIMIENTOS Y ON (X.TmoEmpr = Y.MovEmpr AND X.TmoCons = Y.MovCons) 
                INNER JOIN CARTILLA Q ON (Y.MovEmpr = Q.CarEmpr AND Y.Movcuen = Q.CarCuen AND Y.MovScue = Q.CarScue AND 
                Y.Movauxi = Q.CarAuxi AND Y.Movauxl = Q.CarAuxl) 
                WHERE (A.ComIdStEmpresa = '$empresa' AND (A.ComIdStTipoComprobante = '$vTipoComprobante' ) AND $filTercero
                ComDaFechaFactura BETWEEN '$fechaInicial' AND '$fechaFinal' AND ComIdInBodega IS NULL) 
                ORDER BY ComIdInCompras";


        $datosConsulta = DB::select($sql);

        if ($datosConsulta == null) {

            return null;
        }


        foreach ($datosConsulta as $datosC) {

            $productos = collect();

            foreach ($datosConsulta as $datos2) {
                if ($datosC->ComIdInCompras == $datos2->ComIdInCompras) {
                    $productos->push($datos2);
                }
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
                    'ComStDescripcion' => '** REGISTRO ANULADO **',
                    'ComInValor' => '',
                    'ComInValorIva' => '',
                    'totalfactura' => 0,
                    'ComInValorAnticipo' => '',
                    'ComInValorRetencion' => '',
                    'totalProv' => '',
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
                    'ComStDescripcion' => $datosC->ComStDescripcion,
                    'ComInValor' => $datosC->ComInValorFactura,
                    'ComInValorIva' => $datosC->ComInValorIva,
                    'totalfactura' => $datosC->ComInValor,
                    'ComInValorAnticipo' => $datosC->ComInValorAnticipo,
                    'ComInValorRetencion' => $datosC->ComInValorRetencion,
                    'totalProv' => ($datosC->ComInValorFactura + $datosC->ComInValorIva),
                    'datos' => $productos
                ]);
            }
        }

        return $datos->unique('ComIdInCompras')->values();
    }
}
