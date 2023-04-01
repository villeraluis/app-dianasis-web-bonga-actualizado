<?php

namespace App\Http\Controllers\inventarios\informes;

use App\Http\Controllers\Controller;
use App\Models\Cliente;
use App\Models\Comprobante;
use App\Models\FormaPago;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class InformeVentasDiaAndPvController extends Controller
{
    public function viewVentasDiaAndPV()
    {
        cambioBaseDatos('bddianasis_svr');

        $yearSelect=['2021','2022','2023','2024','2025','2026','2027','2028','2029','2030'];


        return view('inventarios.informes.ventasDiayPuntoV.index', compact('yearSelect'));
    }


    public function viewConsultaInforme(Request $request)
    {
        $datos= $this->consultaInforme($request);

        return view('inventarios.informes.ventasDiayPuntoV.tabla', compact('datos'));
    }


    public function consultaInforme($request)
    {
        cambioBaseDatos('bddianasis_svr');

        $IdStEmpresa = '02';//session('Empresa');
        $year = $request->selectYear;
        $mes = $request->selectMes;
        $filtros = $this->fitroVentasDia($request);
        $tipoComprobanteVentas=vTipoComprobante(4);
        $vTipoComprobante4=vTipoComprobante(4);
        $vTipoComprobante6=vTipoComprobante(6);

        //PUNTOS DE VENTAS
        $consulta1 = "SELECT A.*, B.MpvInValor FROM PUNTOSVENTAS A 
            LEFT OUTER JOIN METASPORPUNTODEVENTA B ON (A.PveIdStEmpresa = B.MpvIdStEmpresa and A.PveIdInPuntoVenta = B.MpvIdInPuntoVenta AND  B.MpvInAno = '$year' and B.MpvInMes = '$mes')
            WHERE (PveIdStEmpresa = '$IdStEmpresa' and PveIdInPuntoVenta <> 1 $filtros) ORDER BY PveIdInGrupoPuntoVenta,PveStNombre";

        $puntos_de_venta =collect(DB::select($consulta1)) ;
        //convertir array a collection


        //cantidad dias del mes
        $can_dias_del_mes = cal_days_in_month(CAL_GREGORIAN, $mes, $year);
        //agregar cero a los meses menores a 10
        $mes_b=$mes;
        if ($mes_b < 10) {
            $mes_b = '0'. $mes_b;
        }

        //array de fechas completas
        $fechas_diarias = array();
        for ($i = 1; $i <= $can_dias_del_mes; $i++) {
            //agregar cero a los dias menores a 10
            $dia = $i;
            if ($i < 10) {
                $dia = '0'.$i;
            }
            $fecha_c=$year.'-'.$mes_b.'-'.$dia;
            $fechas_diarias[]=[
                'nombre_dia'=>nombre_dia_por_fecha($fecha_c),
                'n_dia'=>$i,
                'fecha'=> $fecha_c];
        }
        $final_cantidad_ventas=0;
        $final_total_ventas=0;

        //extraer datos de ventas diarias

        //VENTAS DE RAPPI
        $final_ventas_rappi=0;
        $final_cantidad_ventas_rappi=0;
        $final_total_ventas_rappi=0;


        //ventas que no son de rappi
        //Case 0  'cuando es mesa
        $final_ventas_mesa=0;
        $final_cantidad_ventas_mesa=0;
        $final_total_ventas_mesa=0;

        //Case 1  'cuando es domicilio
        $final_ventas_domicilio=0;
        $final_cantidad_ventas_domicilio=0;
        $final_total_ventas_domicilio=0;

        //Case 3  'cuando es para llevar
        $final_ventas_para_llevar=0;
        $final_cantidad_ventas_para_llevar=0;
        $final_total_ventas_para_llevar=0;

        //Case 4  'cuando es autoservicio
        $final_ventas_autoservicio=0;
        $final_cantidad_ventas_autoservicio=0;
        $final_total_ventas_autoservicio=0;


        //ventas licor
        $final_cantidad_ventas_licor =0;
        $final_total_ventas_licor =0;

        $final_valor_meta=0;

        ///recorrer los puntos de venta
        $ventas_diarias_collect=collect();

        foreach ($puntos_de_venta as $punto_de_venta) {
            $filtro2=  $filtros ." AND VenIdInPuntoVenta='$punto_de_venta->PveIdInPuntoVenta'";

            $consulta2="SELECT * FROM VENTAS A 
               INNER JOIN PUNTOSVENTAS B ON (A.VenIdStEmpresa = B.PveIdStEmpresa AND A.VenIdInPuntoVenta = B.PveIdInPuntoVenta $filtro2) 
               WHERE (VenIdStEmpresa = '$IdStEmpresa' AND VenIdStTipoComprobante = '$tipoComprobanteVentas' AND VenStEstadoRegistro = 'A'
               AND YEAR(VenDaFechaDoc) = '$year' AND MONTH(VenDaFechaDoc) = '$mes') 
               ORDER BY VenObjectIDVentas";

            $ventas = collect(DB::select($consulta2));

            //ventas diarias
            $punto_de_venta->ventas = $ventas;

            //Se busca el valor de la venta de licor
            $consulta3="SELECT A.VenDaFechaDoc,A.VenIdInPuntoVenta,A.VenInFactura, C.MveInValor,C.MveInValorIva,C.MveInValorImpoconsumo FROM VENTAS A 
              INNER JOIN PUNTOSVENTAS B ON (A.VenIdStEmpresa = B.PveIdStEmpresa 
              AND A.VenIdInPuntoVenta = B.PveIdInPuntoVenta $filtro2) 
              INNER JOIN MOVVENTAS C ON 
              (A.VenIdStEmpresa = C.MveIdStEmpresa AND A.VenIdInPuntoVenta = C.MveIdInPuntoVenta 
              AND A.VenIdStComprobante=C.MveIdSComprobante AND A.VenIdInDocumento = C.MveIdInDocumento)
              INNER JOIN PRODUCTOS D ON (C.MveIdStEmpresa  = D.ProIdStEmpresa AND C.MveIdInProducto = D.ProIdInProducto
               AND D.ProIdInClase = 3) 
               WHERE (VenIdStEmpresa = '$IdStEmpresa' AND VenIdStTipoComprobante = '$vTipoComprobante4' 
               AND VenStEstadoRegistro = 'A' AND 
               YEAR(VenDaFechaDoc) = '$year' AND MONTH(VenDaFechaDoc) = '$mes') ORDER BY VenObjectIDVentas";

            $ventas_licor = collect(DB::select($consulta3));

            //DEVOLUCIONES EN VENTAS
            $consulta4="SELECT A.* FROM VENTAS A 
            INNER JOIN PUNTOSVENTAS B ON (A.VenIdStEmpresa = B.PveIdStEmpresa 
            AND A.VenIdInPuntoVenta = B.PveIdInPuntoVenta  $filtro2) 
            WHERE (A.VenIdStEmpresa = '$IdStEmpresa' AND A.VenIdStTipoComprobante = '$vTipoComprobante6' 
            AND A.VenStEstadoRegistro = 'A' AND 
            YEAR(A.VenDaFechaDoc) = '$year' AND MONTH(A.VenDaFechaDoc) = '$mes') ORDER BY A.VenObjectIDVentas";

            $devoluciones = DB::select($consulta4);


            foreach ($devoluciones as $devolucion) {
                //buscar la devolucion en ventas y eliminarla de la coleccion de ventas
                $ventas=$ventas->filter(function ($item) use ($devolucion) {
                    return  $item->VenInFactura != $devolucion->VenInFactura;
                });
            }

            //Se busca el valor de la devoluciones en venta de licor

            $consulta5="SELECT A.VenDaFechaDoc,A.VenIdInPuntoVenta,A.VenInFactura, C.MveInValor,C.MveInValorIva,C.MveInValorImpoconsumo
             FROM VENTAS A INNER JOIN PUNTOSVENTAS B ON (A.VenIdStEmpresa = B.PveIdStEmpresa 
             AND A.VenIdInPuntoVenta = B.PveIdInPuntoVenta $filtro2) INNER JOIN MOVVENTAS C 
             ON (A.VenIdStEmpresa = C.MveIdStEmpresa AND A.VenIdInPuntoVenta = C.MveIdInPuntoVenta 
             AND A.VenIdStComprobante=C.MveIdSComprobante AND A.VenIdInDocumento = C.MveIdInDocumento) 
             INNER JOIN PRODUCTOS D ON (C.MveIdStEmpresa  = D.ProIdStEmpresa AND C.MveIdInProducto = D.ProIdInProducto 
             AND D.ProIdInClase = 3) WHERE (VenIdStEmpresa = '$IdStEmpresa' 
             AND VenIdStTipoComprobante = '$vTipoComprobante6' AND VenStEstadoRegistro = 'A' AND 
             YEAR(VenDaFechaDoc) = '$year' AND MONTH(VenDaFechaDoc) = '$mes') ORDER BY VenObjectIDVentas";

            $devoluciones_licor = DB::select($consulta5);


            foreach ($devoluciones_licor as $devolucion_licor) {
                //buscar la devolucion en ventas y eliminarla de la coleccion de ventas
                $ventas_licor=$ventas_licor->filter(function ($item) use ($devolucion_licor) {
                    return  $item->VenInFactura != $devolucion_licor->VenInFactura;
                });
            }




            //datos que se muestran en la tabla
            $cantidad_ventas=$ventas->count();
            if ($cantidad_ventas>0) {
                $total_ventas=$ventas->sum('VenInValor')-$ventas->sum('VenInDescuento');
                $promedio_ventas =promedio($total_ventas, $cantidad_ventas) ;
                //extraer datos de ventas diarias

                //VENTAS DE RAPPI
                $ventas_rappi=$ventas->where('VenIdStCliente', '900843898');
                $cantidad_ventas_rappi=$ventas_rappi->count();
                $total_ventas_rappi=$ventas_rappi->sum('VenInValor')-$ventas_rappi->sum('VenInDescuento');
                $promedio_ventas_rappi = promedio($total_ventas_rappi, $cantidad_ventas_rappi);

                //ventas que no son de rappi
                //Case 0  'cuando es mesa
                $ventas_mesa=$ventas->where('VenInLugarConsumo', 0)->where('VenIdStCliente', '<>', '900843898');
                $cantidad_ventas_mesa=$ventas_mesa->count();
                $total_ventas_mesa=$ventas_mesa->sum('VenInValor')-$ventas_mesa->sum('VenInDescuento');
                $promedio_ventas_mesa = promedio($total_ventas_mesa, $cantidad_ventas_mesa);
                //Case 1  'cuando es domicilio
                $ventas_domicilio=$ventas->where('VenInLugarConsumo', 1)->where('VenIdStCliente', '<>', '900843898');
                $cantidad_ventas_domicilio=$ventas_domicilio->count();
                $total_ventas_domicilio=$ventas_domicilio->sum('VenInValor')-$ventas_domicilio->sum('VenInDescuento');
                $promedio_ventas_domicilio = promedio($total_ventas_domicilio, $cantidad_ventas_domicilio);
                //Case 3  'cuando es para llevar
                $ventas_para_llevar=$ventas->where('VenInLugarConsumo', 3)->where('VenIdStCliente', '<>', '900843898');
                $cantidad_ventas_para_llevar=$ventas_para_llevar->count();
                $total_ventas_para_llevar=$ventas_para_llevar->sum('VenInValor')-$ventas_para_llevar->sum('VenInDescuento');
                $promedio_ventas_para_llevar =  promedio($total_ventas_para_llevar, $cantidad_ventas_para_llevar);
                //Case 4  'cuando es autoservicio
                $ventas_autoservicio=$ventas->where('VenInLugarConsumo', 4)->where('VenIdStCliente', '<>', '900843898');
                $cantidad_ventas_autoservicio=$ventas_autoservicio->count();
                $total_ventas_autoservicio=$ventas_autoservicio->sum('VenInValor')-$ventas_autoservicio->sum('VenInDescuento');
                $promedio_ventas_autoservicio = promedio($total_ventas_autoservicio, $cantidad_ventas_autoservicio);

                //ventas licor
                $cantidad_ventas_licor = $ventas_licor->count();
                $total_ventas_licor = $ventas_licor->sum('MveInValor')-$ventas_licor->sum('MveInValorIva')-$ventas_licor->sum('MveInValorImpoconsumo');


                //valor del cumplimiento de la meta
                $valor_cumplimiento=0;
                if ($punto_de_venta->MpvInValor && $punto_de_venta->MpvInValor!=0) {
                    $valor_cumplimiento = $total_ventas/$punto_de_venta->MpvInValor*100;
                }

                ////
                $ventas_diarias_collect->push([
                    'type'=>'p1',
                    'nombre_punto_de_venta'=>$punto_de_venta->PveStNombre,
                    'valor_meta'=>$punto_de_venta->MpvInValor,
                    'cumplimiento'=>number_format($valor_cumplimiento, 2),
                    'nombre_dia'=>'',
                    'n_dia'=>'',
                    'fecha'=>'',
                    'cantidad_ventas_diarias'=>$cantidad_ventas,
                    'total_ventas_diarias'=>$total_ventas,
                    'promedio_ventas_diarias'=>$promedio_ventas,
                    'cantidad_ventas_rappi'=>$cantidad_ventas_rappi,
                    'total_ventas_rappi'=>$total_ventas_rappi,
                    'promedio_ventas_rappi'=>$promedio_ventas_rappi,
                    'cantidad_ventas_mesa'=>$cantidad_ventas_mesa,
                    'total_ventas_mesa'=>$total_ventas_mesa,
                    'promedio_ventas_mesa'=>$promedio_ventas_mesa,
                    'cantidad_ventas_domicilio'=>$cantidad_ventas_domicilio,
                    'total_ventas_domicilio'=>$total_ventas_domicilio,
                    'promedio_ventas_domicilio'=>$promedio_ventas_domicilio,
                    'cantidad_ventas_para_llevar'=>$cantidad_ventas_para_llevar,
                    'total_ventas_para_llevar'=>$total_ventas_para_llevar,
                    'promedio_ventas_para_llevar'=>$promedio_ventas_para_llevar,
                    'cantidad_ventas_autoservicio'=>$cantidad_ventas_autoservicio,
                    'total_ventas_autoservicio'=>$total_ventas_autoservicio,
                    'promedio_ventas_autoservicio'=>$promedio_ventas_autoservicio,
                    'cantidad_ventas_licor'=>$cantidad_ventas_licor,
                    'total_ventas_licor'=>$total_ventas_licor,
                ]);

                //sumar los totales finales
                $final_cantidad_ventas+=$cantidad_ventas;
                $final_total_ventas+=$total_ventas;


                $final_cantidad_ventas_rappi+=$cantidad_ventas_rappi;
                $final_total_ventas_rappi+=$total_ventas_rappi;


                $final_cantidad_ventas_mesa+=$cantidad_ventas_mesa;
                $final_total_ventas_mesa+=$total_ventas_mesa;


                $final_cantidad_ventas_domicilio+=$cantidad_ventas_domicilio;
                $final_total_ventas_domicilio+=$total_ventas_domicilio;


                $final_cantidad_ventas_para_llevar+=$cantidad_ventas_para_llevar;
                $final_total_ventas_para_llevar+=$total_ventas_para_llevar;


                $final_cantidad_ventas_autoservicio+=$cantidad_ventas_autoservicio;
                $final_total_ventas_autoservicio+=$total_ventas_autoservicio;

                $final_cantidad_ventas_licor+=$cantidad_ventas_licor;
                $final_total_ventas_licor+=$total_ventas_licor;

                $final_valor_meta+=$punto_de_venta->MpvInValor;



                //ventas diarias

                foreach ($fechas_diarias as $fecha_dia) {
                    $nombre_dia=$fecha_dia['nombre_dia'];
                    $n_dia=$fecha_dia['n_dia'];
                    $fecha=$fecha_dia['fecha'];
                    $ventas_diarias = $ventas->where('VenDaFechaDoc', $fecha);
                    $cantidad_ventas_diarias=$ventas_diarias->count();
                    $total_ventas_diarias=$ventas_diarias->sum('VenInValor')-$ventas_diarias->sum('VenInDescuento');
                    $promedio_ventas_diarias = promedio($total_ventas_diarias, $cantidad_ventas_diarias);

                    //extraer datos de ventas diarias

                    //VENTAS DE RAPPI
                    $ventas_rappi=$ventas_diarias->where('VenIdStCliente', '900843898');
                    $cantidad_ventas_rappi=$ventas_rappi->count();
                    $total_ventas_rappi=$ventas_rappi->sum('VenInValor')-$ventas_rappi->sum('VenInDescuento');
                    $promedio_ventas_rappi = promedio($total_ventas_rappi, $cantidad_ventas_rappi);

                    //ventas que no son de rappi
                    //Case 0  'cuando es mesa
                    $ventas_mesa=$ventas_diarias->where('VenInLugarConsumo', 0)->where('VenIdStCliente', '<>', '900843898');
                    $cantidad_ventas_mesa=$ventas_mesa->count();
                    $total_ventas_mesa=$ventas_mesa->sum('VenInValor')-$ventas_mesa->sum('VenInDescuento');
                    $promedio_ventas_mesa = promedio($total_ventas_mesa, $cantidad_ventas_mesa);
                    //Case 1  'cuando es domicilio
                    $ventas_domicilio=$ventas_diarias->where('VenInLugarConsumo', 1)->where('VenIdStCliente', '<>', '900843898');
                    $cantidad_ventas_domicilio=$ventas_domicilio->count();
                    $total_ventas_domicilio=$ventas_domicilio->sum('VenInValor')-$ventas_domicilio->sum('VenInDescuento');
                    $promedio_ventas_domicilio = promedio($total_ventas_domicilio, $cantidad_ventas_domicilio);
                    //Case 3  'cuando es para llevar
                    $ventas_para_llevar=$ventas_diarias->where('VenInLugarConsumo', 3)->where('VenIdStCliente', '<>', '900843898');
                    $cantidad_ventas_para_llevar=$ventas_para_llevar->count();
                    $total_ventas_para_llevar=$ventas_para_llevar->sum('VenInValor')-$ventas_para_llevar->sum('VenInDescuento');
                    $promedio_ventas_para_llevar = promedio($total_ventas_para_llevar, $cantidad_ventas_para_llevar);
                    //Case 4  'cuando es autoservicio
                    $ventas_autoservicio=$ventas_diarias->where('VenInLugarConsumo', 4)->where('VenIdStCliente', '<>', '900843898');
                    $cantidad_ventas_autoservicio=$ventas_autoservicio->count();
                    $total_ventas_autoservicio=$ventas_autoservicio->sum('VenInValor')-$ventas_autoservicio->sum('VenInDescuento');
                    $promedio_ventas_autoservicio = promedio($total_ventas_autoservicio, $cantidad_ventas_autoservicio);

                    //cantidad venta lior en la fecha
                    $ventas_licor_dia=$ventas_licor->where('VenDaFechaDoc', $fecha);
                    $cantidad_ventas_licor=$ventas_licor_dia->count();
                    $total_ventas_licor=$ventas_licor_dia->sum('MveInValor');



                    $ventas_diarias_collect->push([
                        'type'=>'h1',
                        'nombre_punto_de_venta'=>$punto_de_venta->PveStNombre,
                        'valor_meta'=>$punto_de_venta->MpvInValor,
                        'cumplimiento'=>'',
                        'nombre_dia'=>$nombre_dia,
                        'n_dia'=>$n_dia,
                        'fecha'=>$fecha,
                        'cantidad_ventas_diarias'=>$cantidad_ventas_diarias,
                        'total_ventas_diarias'=>$total_ventas_diarias,
                        'promedio_ventas_diarias'=>$promedio_ventas_diarias,
                        'cantidad_ventas_rappi'=>$cantidad_ventas_rappi,
                        'total_ventas_rappi'=>$total_ventas_rappi,
                        'promedio_ventas_rappi'=>$promedio_ventas_rappi,
                        'cantidad_ventas_mesa'=>$cantidad_ventas_mesa,
                        'total_ventas_mesa'=>$total_ventas_mesa,
                        'promedio_ventas_mesa'=>$promedio_ventas_mesa,
                        'cantidad_ventas_domicilio'=>$cantidad_ventas_domicilio,
                        'total_ventas_domicilio'=>$total_ventas_domicilio,
                        'promedio_ventas_domicilio'=>$promedio_ventas_domicilio,
                        'cantidad_ventas_para_llevar'=>$cantidad_ventas_para_llevar,
                        'total_ventas_para_llevar'=>$total_ventas_para_llevar,
                        'promedio_ventas_para_llevar'=>$promedio_ventas_para_llevar,
                        'cantidad_ventas_autoservicio'=>$cantidad_ventas_autoservicio,
                        'total_ventas_autoservicio'=>$total_ventas_autoservicio,
                        'promedio_ventas_autoservicio'=>$promedio_ventas_autoservicio,
                        'cantidad_ventas_licor'=>$cantidad_ventas_licor,
                        'total_ventas_licor'=>$total_ventas_licor,
                    ]);
                }
            }
        }

        //VALOR TOTAL cumple meta
        $final_valor_cumplimiento=$final_valor_meta!=0 ? $final_total_ventas/$final_valor_meta*100 : 0;

        //agregar los totales finales
        $ventas_diarias_collect->prepend(
            [
                'type'=>'p0',
                'nombre_punto_de_venta'=>'',
                'valor_meta'=>$final_valor_meta,
                'cumplimiento'=>number_format($final_valor_cumplimiento, 2),
                'nombre_dia'=>'TOTALES',
                'n_dia'=>'',
                'fecha'=>'',
                'cantidad_ventas_diarias'=>$final_cantidad_ventas,
                'total_ventas_diarias'=>$final_total_ventas,
                'promedio_ventas_diarias'=>promedio($final_total_ventas, $final_cantidad_ventas),
                'cantidad_ventas_rappi'=>$final_cantidad_ventas_rappi,
                'total_ventas_rappi'=>$final_total_ventas_rappi,
                'promedio_ventas_rappi'=>promedio($final_total_ventas_rappi, $final_cantidad_ventas_rappi),
                'cantidad_ventas_mesa'=>$final_cantidad_ventas_mesa,
                'total_ventas_mesa'=>$final_total_ventas_mesa,
                'promedio_ventas_mesa'=>promedio($final_total_ventas_mesa, $final_cantidad_ventas_mesa),
                'cantidad_ventas_domicilio'=>$final_cantidad_ventas_domicilio,
                'total_ventas_domicilio'=>$final_total_ventas_domicilio,
                'promedio_ventas_domicilio'=>promedio($final_total_ventas_domicilio, $final_cantidad_ventas_domicilio),
                'cantidad_ventas_para_llevar'=>$final_cantidad_ventas_para_llevar,
                'total_ventas_para_llevar'=>$final_total_ventas_para_llevar,
                'promedio_ventas_para_llevar'=>promedio($final_total_ventas_para_llevar, $final_cantidad_ventas_para_llevar),
                'cantidad_ventas_autoservicio'=>$final_cantidad_ventas_autoservicio,
                'total_ventas_autoservicio'=>$final_total_ventas_autoservicio,
                'promedio_ventas_autoservicio'=>promedio($final_total_ventas_autoservicio, $final_cantidad_ventas_autoservicio),
                'cantidad_ventas_licor'=>$final_cantidad_ventas_licor,
                'total_ventas_licor'=>$final_total_ventas_licor,
            ]
        );

        return $ventas_diarias_collect;
    }


    public function fitroVentasDia($request)
    {
        $idAgencia = $request->idAgencia;

        $idPunto= $request->idGrupoPuntoVenta;

        $strFiltro = '';

        if ($idAgencia != null) {
            $strFiltro =  "$strFiltro  AND PveIdInAgencia ='$idAgencia'";
        }

        if ($idPunto != null) {
            $strFiltro =  "$strFiltro   AND PveIdInGrupoPuntoVenta ='$idPunto'";
        }
        return $strFiltro;
    }
}
