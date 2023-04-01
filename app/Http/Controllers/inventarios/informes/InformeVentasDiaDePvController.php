<?php

namespace App\Http\Controllers\inventarios\informes;

use App\Http\Controllers\Controller;
use App\Models\Cliente;
use App\Models\Comprobante;
use App\Models\FormaPago;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class InformeVentasDiaDePvController extends Controller
{
    public function viewVentasDiaDePV()
    {
        cambioBaseDatos('bddianasis_svr');

        $yearSelect=['2021','2022','2023','2024','2025','2026','2027','2028','2029','2030'];


        return view('inventarios.informes.ventasDiaDeUnPuntoV.index', compact('yearSelect'));
    }



    public function viewConsultaInforme(Request $request)
    {
        $datos = $this->consultaInforme($request);
        /*  return $datos; */


        return view('inventarios.informes.ventasDiaDeUnPuntoV.tabla', compact('datos'));
    }


    public function consultaInforme($request)
    {
        cambioBaseDatos('bddianasis_svr');


        $IdStEmpresa = '02';//session('Empresa');
        $year = $request->selectYear;
        $mes = $request->selectMes;
        $punto_venta=$request->idInPuntoVenta;

        $vTipoComprobante4=vTipoComprobante(4);
        $vTipoComprobante6=vTipoComprobante(6);







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


        //metas
        $sql_metas = "SELECT MpvInValor FROM METASPORPUNTODEVENTA 
        WHERE (MpvIdStEmpresa = '$IdStEmpresa' 
        and MpvIdInPuntoVenta = '$punto_venta' AND  MpvInAno = '$year' and MpvInMes = '$mes')";
        $valor_meta = collect(DB::select($sql_metas))->first()->MpvInValor??0;

        $consulta = "SELECT * FROM VENTAS A WHERE (VenIdStEmpresa = '$IdStEmpresa' 
        AND VenIdStTipoComprobante = '$vTipoComprobante4' AND VenStEstadoRegistro = 'A' AND 
        YEAR(VenDaFechaDoc) = '$year' AND MONTH(VenDaFechaDoc) = '$mes' AND VenIdInPuntoVenta='$punto_venta') 
        ORDER BY VenObjectIDVentas";

        $ventas = collect(DB::select($consulta));

        //devoluciones en ventas
        $consulta2="SELECT A.* FROM VENTAS A WHERE (A.VenIdStEmpresa = '$IdStEmpresa' 
        AND A.VenIdStTipoComprobante = '$vTipoComprobante6' AND A.VenStEstadoRegistro = 'A' AND 
        YEAR(A.VenDaFechaDoc) = '$year' AND MONTH(A.VenDaFechaDoc) = '$mes' AND VenIdInPuntoVenta='$punto_venta') 
        ORDER BY A.VenObjectIDVentas";

        $devoluciones = collect(DB::select($consulta2));


        foreach ($devoluciones as $devolucion) {
            //buscar la devolucion en ventas y eliminarla de la coleccion de ventas
            $ventas=$ventas->filter(function ($item) use ($devolucion) {
                return  $item->VenInFactura != $devolucion->VenInFactura;
            });
        }

        //ventas de licor
        $consulta3="SELECT A.VenDaFechaDoc,A.VenIdInPuntoVenta,A.VenInFactura,C.MveInValor,C.MveInValorIva,C.MveInValorImpoconsumo 
        FROM VENTAS A INNER JOIN MOVVENTAS C ON (A.VenIdStEmpresa = C.MveIdStEmpresa 
        AND A.VenIdInPuntoVenta = C.MveIdInPuntoVenta AND A.VenIdStComprobante=C.MveIdSComprobante 
        AND A.VenIdInDocumento = C.MveIdInDocumento) INNER JOIN PRODUCTOS D 
        ON (C.MveIdStEmpresa  = D.ProIdStEmpresa AND C.MveIdInProducto = D.ProIdInProducto AND D.ProIdInClase = 3) 
        WHERE (VenIdStEmpresa = '$IdStEmpresa' AND VenIdStTipoComprobante = '$vTipoComprobante4' 
        AND VenStEstadoRegistro = 'A' AND YEAR(VenDaFechaDoc) = '$year' AND MONTH(VenDaFechaDoc) = '$mes' 
        AND VenIdInPuntoVenta='$punto_venta') ORDER BY VenObjectIDVentas";

        $ventas_licor = collect(DB::select($consulta3));

        //ventas de licor devoluciones

        $consulta4="SELECT A.VenDaFechaDoc,A.VenIdInPuntoVenta,A.VenInFactura,C.MveInValor,C.MveInValorIva,C.MveInValorImpoconsumo 
        FROM VENTAS A INNER JOIN MOVVENTAS C ON (A.VenIdStEmpresa = C.MveIdStEmpresa 
        AND A.VenIdInPuntoVenta = C.MveIdInPuntoVenta AND A.VenIdStComprobante=C.MveIdSComprobante 
        AND A.VenIdInDocumento = C.MveIdInDocumento) INNER JOIN PRODUCTOS D ON (C.MveIdStEmpresa  = D.ProIdStEmpresa 
        AND C.MveIdInProducto = D.ProIdInProducto AND D.ProIdInClase = 3) 
        WHERE (VenIdStEmpresa = '$IdStEmpresa' AND VenIdStTipoComprobante = '$vTipoComprobante6' 
        AND VenStEstadoRegistro = 'A' AND YEAR(VenDaFechaDoc) = '$year' AND MONTH(VenDaFechaDoc) = '$mes' 
        AND VenIdInPuntoVenta='$punto_venta') ORDER BY VenObjectIDVentas";

        $devoluciones_licor = collect(DB::select($consulta4));
        foreach ($devoluciones_licor as $devolucion_licor) {
            //buscar la devolucion en ventas y eliminarla de la coleccion de ventas
            $ventas_licor=$ventas_licor->filter(function ($item) use ($devolucion_licor) {
                return  $item->VenInFactura != $devolucion_licor->VenInFactura;
            });
        }


        $ventas_diarias_collect=collect();

        //datos que se muestran en la tabla
        $cantidad_ventas=$ventas->count();

        if ($cantidad_ventas>0) {
            $total_ventas=$ventas->sum('VenInValor')-$ventas->sum('VenInDescuento');
            $promedio_ventas =promedio($total_ventas, $cantidad_ventas) ;
            //extraer datos de ventas diarias


            //'cuando es mesa
            $ventas_mesa=$ventas->filter(function ($value, $key) {
                return $value->VenStLugarConsumo != 1 && $value->VenIdStCliente != '900843898';
            });
            $cantidad_ventas_mesa=$ventas_mesa->count();
            $total_ventas_mesa=$ventas_mesa->sum('VenInValor')-$ventas_mesa->sum('VenInDescuento');
            $promedio_ventas_mesa = promedio($total_ventas_mesa, $cantidad_ventas_mesa);
            //'cuando es domicilio
            $ventas_domicilio=$ventas->filter(function ($value, $key) {
                return $value->VenStLugarConsumo== 1 || $value->VenIdStCliente == '900843898';
            });
            $cantidad_ventas_domicilio=$ventas_domicilio->count();
            $total_ventas_domicilio=$ventas_domicilio->sum('VenInValor')-$ventas_domicilio->sum('VenInDescuento');
            $promedio_ventas_domicilio = promedio($total_ventas_domicilio, $cantidad_ventas_domicilio);

            //ventas licor
            $cantidad_ventas_licor = $ventas_licor->count();
            $total_ventas_licor = $ventas_licor->sum('MveInValor')-$ventas_licor->sum('MveInValorIva')-$ventas_licor->sum('MveInValorImpoconsumo');

            ////
            $ventas_diarias_collect->push([
                'type'=>'p1',
                'nombre_dia'=>'',
                'n_dia'=>'',
                'fecha'=>'',
                'cantidad_ventas_diarias'=>$cantidad_ventas,
                'total_ventas_diarias'=>$total_ventas,
                'promedio_ventas_diarias'=>$promedio_ventas,
                'cantidad_ventas_mesa'=>$cantidad_ventas_mesa,
                'total_ventas_mesa'=>$total_ventas_mesa,
                'promedio_ventas_mesa'=>$promedio_ventas_mesa,
                'cantidad_ventas_domicilio'=>$cantidad_ventas_domicilio,
                'total_ventas_domicilio'=>$total_ventas_domicilio,
                'promedio_ventas_domicilio'=>$promedio_ventas_domicilio,
                'cantidad_ventas_licor'=>$cantidad_ventas_licor,
                'total_ventas_licor'=>$total_ventas_licor,
            ]);


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


                //ventas que no son de rappi
                //'cuando es mesa
                $ventas_mesa=$ventas_diarias->filter(function ($value, $key) {
                    return $value->VenStLugarConsumo != 1 && $value->VenIdStCliente != '900843898';
                });
                $cantidad_ventas_mesa=$ventas_mesa->count();
                $total_ventas_mesa=$ventas_mesa->sum('VenInValor')-$ventas_mesa->sum('VenInDescuento');
                $promedio_ventas_mesa = promedio($total_ventas_mesa, $cantidad_ventas_mesa);
                //'cuando es domicilio
                $ventas_domicilio=$ventas_diarias->filter(function ($value, $key) {
                    return $value->VenStLugarConsumo == 1 || $value->VenIdStCliente == '900843898';
                });

                $cantidad_ventas_domicilio=$ventas_domicilio->count();
                $total_ventas_domicilio=$ventas_domicilio->sum('VenInValor')-$ventas_domicilio->sum('VenInDescuento');
                $promedio_ventas_domicilio = promedio($total_ventas_domicilio, $cantidad_ventas_domicilio);

                //cantidad venta lior en la fecha
                $ventas_licor_dia=$ventas_licor->where('VenDaFechaDoc', $fecha);
                $cantidad_ventas_licor=$ventas_licor_dia->count();
                $total_ventas_licor=$ventas_licor_dia->sum('MveInValor');



                $ventas_diarias_collect->push([
                    'type'=>'h1',
                    'nombre_dia'=>$nombre_dia,
                    'n_dia'=>$n_dia,
                    'fecha'=>$fecha,
                    'cantidad_ventas_diarias'=>$cantidad_ventas_diarias,
                    'total_ventas_diarias'=>$total_ventas_diarias,
                    'promedio_ventas_diarias'=>$promedio_ventas_diarias,
                    'cantidad_ventas_mesa'=>$cantidad_ventas_mesa,
                    'total_ventas_mesa'=>$total_ventas_mesa,
                    'promedio_ventas_mesa'=>$promedio_ventas_mesa,
                    'cantidad_ventas_domicilio'=>$cantidad_ventas_domicilio,
                    'total_ventas_domicilio'=>$total_ventas_domicilio,
                    'promedio_ventas_domicilio'=>$promedio_ventas_domicilio,
                    'cantidad_ventas_licor'=>$cantidad_ventas_licor,
                    'total_ventas_licor'=>$total_ventas_licor,
                ]);
            }
        }



        




        return['_collect'=> $ventas_diarias_collect,'total_ventas'=>$total_ventas,'valor_meta'=>$valor_meta];
    }
}
